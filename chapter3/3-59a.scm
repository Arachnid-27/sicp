(load "3-53a.scm")

(define (integerate-series s)
        (define (integerate-series-iter s n)
                (cons-stream (/ (stream-car s) n)
                             (integerate-series-iter (stream-cdr s)
                                                     (+ n 1))))
        (integerate-series-iter s 1))

(define exp-series
        (cons-stream 1 (integerate-series exp-series)))
(define consine-series
        (cons-stream 1 (integerate-series (stream-map - sine-series))))
(define sine-series
        (cons-stream 0 (integerate-series consine-series)))

