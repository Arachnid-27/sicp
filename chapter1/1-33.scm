(define (accumulate-recursion combiner null-value pred term a next b)
        (if (> a b)
            null-value
            (if (pred (term a))
                (combiner (term a)
                          (accumulate-recursion combiner null-value pred term (next a) next b))
                (accumulate-recursion combiner null-value pred term (next a) next b))))

(define (accumulate-iteration combiner null-value pred term a next b)
        (define (accumulate-iter a result)
                (if (> a b)
                    result
                    (if (pred (term a))
                        (accumulate-iter (next a) (combiner (term a) result))
                        (accumulate-iter (next a) result)))
        (accumulate-iter a null-value)))
