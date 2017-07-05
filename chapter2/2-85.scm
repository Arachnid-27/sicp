(define (project x) (apply-generic 'project x))

(define (install-rational-package)
        (define (numer x) (car x))
        (define (denom x) (cdr x))
        (put 'project 'rational
             (lambda (x) (round (/ (numer x) (denom x))))))

(define (install-complex-package)
        (put 'project 'complex
             (lambda (z) (make-rational (real-part z) 1))))

(define (drop x)
        (if (equ? (raise (project x)) x)
            (drop x)
            x))
