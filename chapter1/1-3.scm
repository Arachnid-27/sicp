(define (sum-of-two a b c)
        (if (> a b) 
            (if (> b c) (+ a b) (+ a c))
            (if (> a c) (+ a b) (+ b c))))
