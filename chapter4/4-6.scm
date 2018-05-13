(define (let? exp) (tagged-list? exp 'let))

(define (let-vars exp)
  (define (let-vars-iter exps)
    (if (null? exps)
        '()
        (cons (caar exps) (let-vars-iter (cdr exps)))))
  (let-vars-iter (cadr exp)))

(define (let-exps exp)
  (define (let-exps-iter exps)
    (if (null? exps)
        '()
        (cons (cadar exps) (let-exps-iter (cdr exps)))))
  (let-exps-iter (cadr exp)))

(define (let-body exp) (cddr exp))

(define (let->combination exp)
  (append (list (make-lambda (let-vars exp) (let-body exp))) (let-exps exp)))
