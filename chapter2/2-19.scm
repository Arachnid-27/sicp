(define (cc amount coin-values)
        (cond ((= amount 0) 1)
              ((or (< amount 0) (no-more? coin-values)) 0)
              (else (+ (cc amount
                           (except-first-denomination coin-values))
                       (cc (- amount (first-denomination coin-values))
                           coin-values)))))

(define (no-more? coin-values)
        (null? coin-values))

(define (except-first-denomination coin-values)
        (cdr coin-values))

(define (first-denomination coin-values)
        (car coin-values))

(display (cc 100 (list 50 25 10 5 1)))
(display " ")
(display (cc 100 (list 5 25 10 1 50)))
