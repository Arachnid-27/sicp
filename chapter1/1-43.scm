(define (compose f g)
        (lambda (x) (f (g x))))

(define (repeated f n)
        (if (= n 1)
            f
            (compose f (repeated f (- n 1)))))

(define (repeated-iteration f n)
        (define (repeated-iter k g)
                (if (= k n)
                    g
                    (repeated-iter (+ k 1) (compose f g))))
        (repeated-iter 1 f))

(display ((repeated (lambda (x) (* x x)) 2) 5))
(display ((repeated-iteration (lambda (x) (* x x)) 2) 5))
