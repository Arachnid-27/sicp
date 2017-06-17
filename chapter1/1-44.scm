(define (smooth f)
        (define dx 0.001)
        (lambda (x)
                (/ (+ 
                    (f x)
                    (f (- x dx))
                    (f (+ x dx)))
                   3)))
