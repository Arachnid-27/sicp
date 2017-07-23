(load "3-70a.scm")

(define s1 (weighted-pairs integers
                           integers
                           (lambda (x)
                                   (+ (car x) (cadr x)))))

(display-line (stream-ref s1 0))
(display-line (stream-ref s1 1))
(display-line (stream-ref s1 2))
(display-line (stream-ref s1 3))
(display-line (stream-ref s1 4))

(define s2 (weighted-pairs integers
                           integers
                           (lambda (x)
                                   (+ (* 2 (car x))
                                      (* 3 (cadr x))
                                      (* 5 (car x) (cadr x))))))

(display-line (stream-ref s2 0))
(display-line (stream-ref s2 1))
(display-line (stream-ref s2 2))
(display-line (stream-ref s2 3))
(display-line (stream-ref s2 4))
