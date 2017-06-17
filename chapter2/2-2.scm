(define (make-segment p1 p2)
        (cons p1 p2))

(define (start-segment s)
        (car s))

(define (end-segment s)
        (cdr s))

(define (make-point x y)
        (cons x y))

(define (x-point p)
        (car p))

(define (y-point p)
        (cdr p))

(define (mid-point s)
        (define (average a b)
                (/ (+ a b) 2))
        (make-point (average 
                     (x-point (start-segment s))
                     (x-point (end-segment s)))
                    (average
                     (y-point (start-segment s))
                     (y-point (end-segment s)))))

(define (print-point p)
        (newline)
        (display "(")
        (display (x-point p))
        (display ", ")
        (display (y-point p))
        (display ")"))

(print-point (mid-point (make-segment (make-point 2.0 4.5) (make-point 3.0 2.5))))
