(load "3-53a.scm")

(define (partial-sums s)
        (define ps (cons-stream (stream-car s)
                                (add-stream (stream-cdr s) ps)))
        ps)

(define s (partial-sums integers))

(display-line (stream-ref s 0))
(display-line (stream-ref s 1))
(display-line (stream-ref s 2))
(display-line (stream-ref s 3))
(display-line (stream-ref s 4))
(display-line (stream-ref s 5))
