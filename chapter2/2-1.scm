(define (make-rat n d)
        (define (simpify a b)
                (let ((g (gcd a b)))
                     (cons (/ a g) (/ b g))))
        (if (< d 0)
            (simpify (- n) (- d))
            (simpify n d)))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
        (newline)
        (display (numer x))
        (display "/")
        (display (denom x)))

(print-rat (make-rat 6 8))
(print-rat (make-rat -6 8))
(print-rat (make-rat 6 -8))
(print-rat (make-rat -6 -8))
