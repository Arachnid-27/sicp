(define (=zero? x) (apply-generic '=zero? x))

(define (install-scheme-number-package)
        (put '=zero? 'scheme-number
             (lambda (x) (= x 0))))

(define (install-rational-package)
        (define (numer x) (car x))
        (put '=zero? 'rational
             (lambda (x) (= (numer x) 0))))

(define (install-complex-package)
        (put '=zero? 'complex
             (lambda (z) (and (= (real-part z) 0)
                              (= (imag-part z) 0)))))
