(define (pascal x y)
        (cond ((or (< x 0) (< y x)) 0)
              ((and (= x 0) (= y 0)) 1)
              (else (+ (pascal (- x 1) (- y 1))
                       (pascal x (- y 1))))))
