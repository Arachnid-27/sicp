(load "3-60a.scm")

(define (reciprocal s)
        (cons-stream 1 (mul-series (stream-map - (stream-cdr s))
                                   (reciprocal s))))
