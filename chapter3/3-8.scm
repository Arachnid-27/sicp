(define (create-f)
        (let ((var 0))
             (lambda (x)
                     (set! var (+ x var))
                     var)))

(define f1 (create-f))
(define f2 (create-f))

(newline)
(display (+ (f1 0) (f1 1)))
(newline)
(display (+ (f2 1) (f2 0)))
