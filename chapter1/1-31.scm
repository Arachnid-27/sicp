(define (product-recursion term a next b)
        (if (> a b)
            1
            (* (term a)
               (product-recursion term (next a) next b))))

(define (product-iteration term a next b)
        (define (product-iter a result)
                (if (> a b)
                    result
                    (product-iter (next a) (* (term a) result))))
        (product-iter a 1))
