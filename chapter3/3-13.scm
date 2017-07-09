(define (make-cycle x)
        (define (last-pair x)
                (if (null? (cdr x))
                    x
                    (last-pair (cdr x))))
        (set-cdr! (last-pair x) x)
        x)

(define z (make-cycle (list 'a 'b 'c)))
(last-pair z)
