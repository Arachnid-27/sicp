(define (make-mutex n)
        (let ((cell (list n)))
             (define (the-mutex m)
                     (cond ((eq? m 'acquire)
                            (if (test-and-set! cell)
                                (the-mutex 'acquire)))
                           ((eq? m 'release)
                            (set-car! cell (+ (car cell) 1)))))
             the-mutex))

(define (test-and-set! cell)
        (without-interrupts lambda ()
                                   (if (= (car cell) 0)
                                       #t
                                       (begin (set-car! cell (- (car cell) 1))
                                              #f))))
