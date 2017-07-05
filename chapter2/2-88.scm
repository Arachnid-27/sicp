(define (sub-terms L1 L2)
        (define (negative-term x)
                (make-term (order x) (sub 0 (coeff x))))
        (define (negative-list x)
                (if (empty-list? x)
                    the-empty-termlist
                    (adjoin-term (negative-term (first-term x))
                                 (negative-list (rest-terms x)))))
        (add L1 (negative-list L2)))
