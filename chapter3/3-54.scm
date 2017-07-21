(load "3-53a.scm")

(define (mul-streams s1 s2)
        (stream-map * s1 s2))

(define factorials
        (cons-stream 1 (mul-streams (stream-cdr integers) factorials)))

(display-line (stream-ref factorials 0))
(display-line (stream-ref factorials 1))
(display-line (stream-ref factorials 2))
(display-line (stream-ref factorials 3))
(display-line (stream-ref factorials 4))
(display-line (stream-ref factorials 5))
