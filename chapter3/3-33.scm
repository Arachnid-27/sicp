(load "3-33a.scm")

(define (averager a b c)
        (let ((d (make-connector))
              (e (make-connector)))
             (constant 2 d)
             (adder a b e)
             (multiplier c d e)
             'done))

(define a (make-connector))
(define b (make-connector))
(define c (make-connector))

(averager a b c)
(set-value! a 5 'user)
(set-value! b 15 'user)
(newline)
(display (get-value c))

(forget-value! a 'user)
(set-value! c 30 'user)
(newline)
(display (get-value a))
