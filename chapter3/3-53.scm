(load "3-53a.scm")

(define s (cons-stream 1 (add-stream s s)))

(display-line (stream-ref s 0))
(display-line (stream-ref s 1))
(display-line (stream-ref s 2))
(display-line (stream-ref s 3))
(display-line (stream-ref s 4))
(display-line (stream-ref s 5))
