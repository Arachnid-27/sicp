(define (stream-enumerate-interval low high)
        (if (> low high)
            ()
            (cons-stream low
                         (stream-enumerate-interval (+ low 1) high))))

(define (display-line x)
        (newline)
        (display x))
