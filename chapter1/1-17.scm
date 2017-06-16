(define (fast-multi b n)
        (fast-multi-iter b n 0))

(define (fast-multi-iter b n a)
        (cond ((= n 0) a)
              ((even? n) (fast-multi-iter (double b) (halve n) a))
              (else (fast-multi-iter b (- n 1) (+ a b)))))

(define (double n) 
        (+ n n))

(define (halve n)
        (/ n 2))
