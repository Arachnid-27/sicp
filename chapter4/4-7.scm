(define (let-bindings exp) (cadr exp))

(define (let*? exp) (tagged-list? exp 'let*))

(define (let*->nested-lets exp)
  (define (nested-lets exps)
    (if (null? exps)
        (append (list 'let '())
                (let-body exp))
        (list 'let
              (list (car exps))
              (nested-lets (cdr exps)))))
  (nested-lets (let-bindings exp)))
