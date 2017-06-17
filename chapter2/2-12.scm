(load "2-7.scm")

(define (make-center-percent c p)
        (make-interval (- c (* p 0.01)) (+ c (* p 0.01))))

(define (percent x)
        (* (- (upper-bound x) (lower-bound x)) 50))
