(load "3-60a.scm")

(define (reciprocal s)
        (define reciprocal-iter
                (cons-stream 1 (mul-series (stream-map - (stream-cdr s))
                                           reciprocal-iter)))
        reciprocal-iter)
