(define (eval-logic unary exp env)
    (if (null? exp)
        '()
        (let ((val (eval (first-exp exp) env)))
          (cond ((last-exp? exp) val)
                ((unary val) val)
                (else (eval-logic unary (rest-exps exp) env))))))

(define (and? exp) (tagged-list? exp 'and))

(define (eval-and exp env) (eval-logic false? exp env))

(define (or? exp) (tagged-list? exp 'or))

(define (eval-or exp env) (eval-logic true? exp env))
