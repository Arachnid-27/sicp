(define (cube-root x)
        (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
        (if (good-enough? guess x)
            guess
            (cube-root-iter (improve guess x) x)))

(define (improve guess x)
        (average3 (* 2 guess) (/ x (square guess))))

(define (average3 x y)
        (/ (+ x y) 3))

(define (good-enough? guess x)
        (< (abs (- (cube guess) x)) 0.001))

(define (square x)
        (* x x))

(define (cube x)
        (* x x x))

(define (abs x)
        (if (< x 0) (- x) x))
