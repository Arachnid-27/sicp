(define (cons x y)
        (* (fast-expt 2 x) (fast-expt 3 y)))

(define (car z)
        (divide-count z 2))

(define (cdr z)
        (divide-count z 3))

(define (divide-count a b)
        (define (divide-count-iter z n)
                (if (= (remainder z b) 0)
                    (divide-count-iter (/ z b) (+ n 1))
                    n))
        (if (= a 0) 0)
            (divide-count-iter a 0))

(define (fast-expt b n)
        (define (fast-expt-iter b n a)
                (cond ((= n 0) a) 
                      ((even? n) (fast-expt-iter (* b b) (/ n 2) a))
                      (else (fast-expt-iter b (- n 1) (* a b)))))
        (fast-expt-iter b n 1))
