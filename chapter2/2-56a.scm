(define (variable? x) (symbol? x))

(define (same-variable? v1 v2)
        (and (variable? v1) (variable? v2) (eq? v1 v2)))

(define (=number? expr num) (and (number? expr) (= expr num)))

(define (make-sum a1 a2)
        (cond ((=number? a1 0) a2)
              ((=number? a2 0) a1)
              ((and (number? a1) (number? a2)) (+ a1 a2))
              ((and (sum? a1) (sum? a2)) (append '(+) (cdr a1) (cdr a2)))
              ((sum? a1) (append '(+) (cdr a1) (list a2)))
              ((sum? a2) (append '(+) (list a1) (cdr a2)))
              (else (list '+ a1 a2))))

(define (make-product m1 m2)
        (cond ((or (=number? m1 0) (=number? m2 0)) 0)
              ((=number? m1 1) m2)
              ((=number? m2 1) m1)
              ((and (number? m1) (number? m2)) (* m1 m2))
              ((and (product? m1) (product? m2)) (append '(*) (cdr m1) (cdr m2)))
              ((product? m1) (append '(*) (cdr m1) (list m2)))
              ((product? m2) (append '(*) (list m1) (cdr m2)))
              (else (list '* m1 m2))))

(define (sum? x) (and (pair? x) (eq? (car x) '+)))

(define (addend s) (cadr s))

(define (augend s)
        (if (null? (cdddr s)) (caddr s) (cons '+ (cddr s))))

(define (product? x) (and (pair? x) (eq? (car x) '*)))

(define (multiplier p) (cadr p))

(define (multiplicand p)
        (if (null? (cdddr p)) (caddr p) (cons '* (cddr p))))

(define (exponentiation? x)
        (and (pair? x) (eq? (car x) '**)))

(define (base expr) (cadr expr))

(define (exponent expr) (caddr expr))

(define (make-exponentiation base exponent)
        (cond ((= exponent 0) 1)
              ((= exponent 1) base)
              (else (list '** base exponent))))

(define (deriv expr var)
        (cond ((number? expr) 0)
              ((variable? expr) (if (same-variable? expr var) 1 0))
              ((sum? expr) (make-sum (deriv (addend expr) var)
                                     (deriv (augend expr) var)))
              ((product? expr) (make-sum (make-product (multiplier expr)
                                                       (deriv (multiplicand expr) var))
                                         (make-product (deriv (multiplier expr) var)
                                                       (multiplicand expr))))
              ((exponentiation? expr) (make-product (exponent expr)
                                                    (make-exponentiation (base expr)
                                                                         (- (exponent expr) 1))))
              (else (error "unknown expression type -- DERIV" expr))))
