(load "3-33a.scm")

(define (c+ x y)
        (let ((z (make-connector)))
             (adder x y z)
             z))

(define (c* x y)
        (let ((z (make-connector)))
             (multiplier x y z)
             z))

(define (c/ z x)
        (let ((y (make-connector)))
             (multiplier x y z)
             y))

(define (cv val)
        (let ((x (make-connector)))
             (constant val x)
             x))

(define (celsius-fahrenheit-converter x)
        (c+ (c* (c/ (cv 9) (cv 5))
                x)
            (cv 32)))

(define C (make-connector))
(define F (celsius-fahrenheit-converter C))

(set-value! C 10 'user)
(display (get-value F))
