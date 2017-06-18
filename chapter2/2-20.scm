(define (same-parity first . items)
        (let ((even (remainder first 2)))
             (define (same-parity-recur items)
                     (cond ((null? items) ())
                           ((= even (remainder (car items) 2)) (cons (car items)
                                                                     (same-parity-recur (cdr items))))
                           (else (same-parity-recur (cdr items)))))
             (cons first (same-parity-recur items))))

(display (same-parity 1 2 3 4 5 6 7))
(display " ")
(display (same-parity 2 3 4 5 6 7))
