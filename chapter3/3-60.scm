(load "3-60a.scm")

(define s (add-stream (mul-series consine-series consine-series)
                      (mul-series sine-series sine-series)))

(display-line (stream-ref s 0)) ;; 1 x^0
(display-line (stream-ref s 1)) ;; 0 x^1
(display-line (stream-ref s 2)) ;; 0 x^2
(display-line (stream-ref s 3)) ;; 0 x^3
(display-line (stream-ref s 4)) ;; 0 x^4
