(define (average a b) (/ (+ a b) 2))

(define (sqrt-improve guess x)
        (average guess (/ x guess)))

(define (sqrt-stream x)
        (define guesses (cons-stream 1.0
                                     (stream-map (lambda (guess)
                                                         (sqrt-improve guess x))
                                                 guesses)))
        guesses)

(define (stream-limit s tolerance)
        (let ((scar (stream-car s))
              (scdr (stream-cdr s)))
             (let ((scadr (stream-car scdr)))
                  (if (< (abs (- scar scadr)) tolerance)
                      scadr
                      (stream-limit scdr tolerance)))))

(define (sqrt x tolerance)
        (stream-limit (sqrt-stream x) tolerance))

(display (sqrt 2 0.01))
