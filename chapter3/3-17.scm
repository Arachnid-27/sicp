(define (count-pairs x)
        (define (count-pairs-iter x set-ptr)
                (cond ((not (pair? x)) 0)
                      ((memq x (car set-ptr)) 0)
                      (else (set-car! set-ptr
                                      (cons x (car set-ptr)))
                            (+ 1
                               (count-pairs-iter (car x) set-ptr)
                               (count-pairs-iter (cdr x) set-ptr)))))
        (count-pairs-iter x (cons () ())))

(define output=3 (cons () (cons () (cons () ()))))
(define output=4
        (let ((pair1 (cons () (cons () ()))))
             (cons pair1 (cdr pair1))))
(define output=5
        (let ((pair1 (cons () (cons () ()))))
             (cons pair1 pair1)))
(define output=7
        (let ((pair1 (cons () ())))
             (let ((pair2 (cons pair1 pair1)))
                  (cons pair2 pair2))))
(define output=null
        (let ((pair1 (cons () (cons () (cons () ())))))
             (set-cdr! (cddr pair1) pair1)
             pair1))

(display (count-pairs output=3))
(display (count-pairs output=4))
(display (count-pairs output=5))
(display (count-pairs output=7))
(display (count-pairs output=null))
