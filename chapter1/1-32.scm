(define (accumulate-recursion combiner null-value term a next b)
        (if (> a b)
            null-value
            (combiner (term a)
                      (accumulate-recursion combiner null-value term (next a) next b))))

(define (accumulate-iteration combiner null-value term a next b)
        (define (accumulate-iter a result)
                (if (> a b)
                    result
                    (accumulate-iter (next a) (combiner (term a) result))))
        (accumulate-iter a null-value))

(define (sum term a next b)
        (accumulate-recursion + 0 term a next b))

(define (product term a next b)
        (accumulate-iteration * 1 term a next b))
