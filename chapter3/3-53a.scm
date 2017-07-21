(load "3-50a.scm")

(define (integers-starting-from n)
        (cons-stream n (integers-starting-from (+ n 1))))

(define integers (integers-starting-from 1))

(define ones (cons-stream 1 ones))

(define (add-stream s1 s2)
        (stream-map + s1 s2))

(define (scale-stream stream factor)
        (stream-map (lambda (x) (* x factor)) stream))
