(load "2-40a.scm")

(define (unique-tuples n)
        (flatmap (lambda (x)
                         (flatmap (lambda (y)
                                          (map (lambda (z) (list x y z))
                                               (enumerate-interval (+ y 1) n)))
                                  (enumerate-interval (+ x 1) n)))
                 (enumerate-interval 1 n)))

(define (sum-equal? s)
        (lambda (tuple)
                (= (+ (car tuple) (cadr tuple) (caddr tuple)) s)))

(define (sum-equal-tuples n s)
        (filter (sum-equal? s) (unique-tuples n)))

(newline)
(display (sum-equal-tuples 10 15))
