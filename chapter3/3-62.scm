(load "3-61a.scm")

(define (div-series s1 s2)
        (if (= (stream-car s2) 0)
            (error "divide zero -- DIV-SERIES")
            (scale-stream (mul-series s1 (reciprocal s2))
                          (/ 1 (stream-car s2)))))

(define s (div-series integers ones))

(display-line (stream-ref s 0)) ;; 1 x^0
(display-line (stream-ref s 1)) ;; 1 x^1
(display-line (stream-ref s 2)) ;; 1 x^2
(display-line (stream-ref s 3)) ;; 1 x^3
(display-line (stream-ref s 4)) ;; 1 x^4

;; (1 + 2x + 3x^2 + 4x^3 + ...) / (1 + x + x^2 + x^3 + ...) = (1 + x + x^2 + x^3 + ...)
