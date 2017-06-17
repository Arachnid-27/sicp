(load "2-7.scm")

(define (sub-interval x y)
        (make-interval (- (lower-bound x) (upper-bound y))
                       (lower- (upper-bound x) (lower-bound y))))
