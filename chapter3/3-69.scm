(load "3-66a.scm")

(define (square x) (* x x))

(define (triples s t u)
        (cons-stream (list (stream-car s)
                           (stream-car t)
                           (stream-car u))
                     (interleave (stream-map (lambda (x)
                                                     (cons (stream-car s) x))
                                             (pairs t u))
                                 (triples (stream-cdr s)
                                          (stream-cdr t)
                                          (stream-cdr u)))))

(define s (stream-filter (lambda (x)
                                 (= (+ (square (car x))
                                       (square (cadr x)))
                                    (square (caddr x))))
                         (triples integers integers integers)))

(display-line (stream-ref s 0))
(display-line (stream-ref s 1))
(display-line (stream-ref s 2))
(display-line (stream-ref s 3))
(display-line (stream-ref s 4))
