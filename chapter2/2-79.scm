(define (equ? x y) (apply-generic 'equ? x y))

(define (install-scheme-number-package)
        (put 'equ? '(scheme-number scheme-number)
             (lambda (x y) (= x y))))

(define (install-rational-package)
        (define (numer x) (car x))
        (define (denom x) (cdr x))
        (put 'equ? '(rational rational)
             (lambda (x y) (= (* (nummer x) (denom y))
                              (* (number y) (denom x))))))

(define (install-complex-package)
        (put 'equ? '(complex complex)
             (lambda (z1 z2) (and (= (real-part z1) (real-part z2))
                                  (= (imag-part z1) (imag-part z2))))))
