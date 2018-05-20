(define (make-define parameters body)
        (cons 'define (cons parameters body)))

(define (let-named? exp) (not (list? (cadr exp))))

(define (let-named-var exp) (cadr exp))

(define (let-bindings exp)
  (if (let-named? exp)
      (caddr exp)
      (cadr exp)))

(define (let-body exp)
  (if (let-named? exp)
      (cdddr exp)
      (cddr exp)))

(define (let-named->definition exp)
  (make-begin (cons (make-define (cons (let-named-var exp) (let-vars exp))
                                 (let-body exp))
                    (cons (let-named-var exp) (let-exps exp)))))

(define (let->combination exp)
  (if (let-named? exp)
      (let-named->definition exp)
      (cons (make-lambda (let-vars exp) (let-body exp)) (let-exps exp))))
