(load "3-53a.scm")

(define (merge s1 s2)
        (cond ((null? s1) s2)
              ((null? s2) s1)
              (else (let ((s1car (stream-car s1))
                          (s2car (stream-car s2)))
                         (cond ((< s1car s2car)
                                (cons-stream s1car
                                             (merge (stream-cdr s1) s2)))
                               ((> s1car s2car)
                                (cons-stream s2car
                                             (merge s1 (stream-cdr s2))))
                               (else
                                (cons-stream s1car
                                             (merge (stream-cdr s1)
                                                    (stream-cdr s2)))))))))

(define s (cons-stream 1 (merge (merge (scale-stream s 2) (scale-stream s 3))
                                (scale-stream s 5))))

(display-line (stream-ref s 0))
(display-line (stream-ref s 1))
(display-line (stream-ref s 2))
(display-line (stream-ref s 3))
(display-line (stream-ref s 4))
(display-line (stream-ref s 5))
(display-line (stream-ref s 6))
(display-line (stream-ref s 7))
(display-line (stream-ref s 8))
(display-line (stream-ref s 9))
