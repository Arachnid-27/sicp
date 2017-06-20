(define (equal? a b)
        (cond ((eq? a b) #t)
              ((and (pair? a) (pair? b)) (and (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))))
              (else #f)))

(display (equal? '(this is a list) '(this is a list)))
(display (equal? '(this is a list) '(this (is a) list)))
(display (equal? '(this (is a) list) '(this (is a) list)))
