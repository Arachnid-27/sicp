(define (func-recursion n)
        (if (< n 3)
         n
         (+ (func-recursion (- n 1))
            (* 2 (func-recursion (- n 2)))
            (* 3 (func-recursion (- n 3))))))

(define (func-iteration n) (func-iter 2 1 0 n))

(define (func-iter a b c n)
        (if (= n 0)
            c
            (func-iter (+ a (* 2 b) (* 3 c)) a b (- n 1))))
