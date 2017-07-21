(load "3-53a.scm")

(define (expand num den radix)
        (cons-stream (quotient (* num radix) den)
                     (expand (remainder (* num radix) den) den radix)))

(define s1 (expand 1 7 10)) ;; 1 / 7 = 0.14285714285714
(define s2 (expand 3 8 10)) ;; 3 / 8 = 0.375


(display-line (stream-ref s1 0))    ;; 1
(display-line (stream-ref s1 1))    ;; 4
(display-line (stream-ref s1 2))    ;; 2
(display-line (stream-ref s1 3))    ;; 8
(display-line (stream-ref s1 4))    ;; 5
(display-line (stream-ref s1 5))    ;; 7

(display-line (stream-ref s2 0))    ;; 3
(display-line (stream-ref s2 1))    ;; 7
(display-line (stream-ref s2 2))    ;; 5
(display-line (stream-ref s2 3))    ;; 0
(display-line (stream-ref s2 4))    ;; 0
(display-line (stream-ref s2 5))    ;; 0
