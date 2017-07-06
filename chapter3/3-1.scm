(define (make-accumulator count)
        (lambda (number)
                (set! count (+ count number))
                count))

(define A (make-accumulator 5))

(newline)
(display (A 10))
(newline)
(display (A 10))
