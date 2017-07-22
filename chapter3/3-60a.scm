(load "3-59a.scm")

(define (mul-series s1 s2)
        (cons-stream (* (stream-car s1) (stream-car s2))
                     (add-stream (scale-stream (stream-cdr s2) (stream-car s1))
                                 (mul-series (stream-cdr s1) s2))))
