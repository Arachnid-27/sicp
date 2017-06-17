(load "2-2.scm")
(load "2-3.scm")

(define (make-rect p1 p2)
        (cons p1 p2))

(define (width-rect r)
        (abs (- (x-point (car r))
                (x-point (cdr r)))))

(define (height-rect r)
        (abs (- (y-point (car r))
                (y-point (cdr r)))))

(display (acreage (make-rect (make-point 1 2) (make-point 3 5))))
(newline)
(display (circumference (make-rect (make-point 1 2) (make-point 3 5))))
