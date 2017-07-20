(load "3-50a.scm")

(define sum 0)

(define (accum x)
        (set! sum (+ x sum))
        sum)

(define seq (stream-map accum (stream-enumerate-interval 1 20)))
(define y (stream-filter even? seq))
(define z (stream-filter (lambda (x) (= (remainder x 5) 0)) seq))

(display-line (stream-ref y 7))
(stream-for-each display-line z)
