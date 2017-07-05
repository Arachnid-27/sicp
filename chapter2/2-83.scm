(define (raise x) (apply-generic 'raise x))

(define (install-scheme-number-package)
        (put 'raise 'scheme-number
             (lambda (x) (make-rational x 1))))

(define (install-rational-package)
        (define (numer x) (car x))
        (define (denom x) (cdr x))
        (put 'raise 'rational
             (lambda (x)
                     (make-complex-from-real-imag (/ (numer x) (denom x)) 0))))
