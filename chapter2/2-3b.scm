(load "2-3.scm")

(define (make-rect l r t b)
        (cons (cons l r) (cons t b)))

(define (width-rect r)
        (abs (- (car (car r))
                (cdr (car r)))))

(define (height-rect r)
        (abs (- (car (cdr r))
                (cdr (cdr r)))))

(display (acreage (make-rect 1 3 2 5)))
(newline)
(display (circumference (make-rect 1 3 2 5)))

