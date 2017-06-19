(load "2-40a.scm")

(define (unique-pairs n)
        (flatmap (lambda (x)
                         (map (lambda (y) (list x y))
                              (enumerate-interval 1 (- x 1))))
                 (enumerate-interval 1 n)))

(display (unique-pairs 6))
