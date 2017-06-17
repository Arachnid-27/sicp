(define (iterative-improve enough improve)
        (define (iter guess)
                (if (enough guess)
                    guess
                    (iter (improve guess))))
        iter)

(define (sqrt x)
        ((iterative-improve
          (lambda (guess) 
                  (< (abs (- (* guess guess) x)) 0.001))
          (lambda (guess)
                  (/ (+ guess (/ x guess)) 2))) 1.0))

(display (sqrt 25))
