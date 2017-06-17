(define (sum term k n)
        (if (> k n)
            0
            (+ (term k)
               (sum term (+ k 1) n))))

(define (simpson f a b n)
        (let ((h (/ (- b a) n)))
        (define (simpson-term k)
                (cond ((or (= k 0) (= k n)) (f (+ a (* k h))))
                      ((even? k) (* 2 (f (+ a (* k h)))))
                      (else (* 4 (f (+ a (* k h)))))))
        (* (/ h 3)
           (sum simpson-term 0 n))))
