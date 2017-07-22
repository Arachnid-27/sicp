(load "3-61a.scm")

(define s (reciprocal integers))

(display-line (stream-ref s 0)) ;; 1
(display-line (stream-ref s 1)) ;; -2
(display-line (stream-ref s 2)) ;; 1
(display-line (stream-ref s 3)) ;; 0
(display-line (stream-ref s 4)) ;; 0

;; (1 + 2x + 3x^2 + 4x^3 + 5x^4 + ... ) * (1 - 2x + x^2) = 1
