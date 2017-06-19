(load "2-33a.scm")

(define (count-leaves t)
        (accumulate +
                    0
                    (map (lambda (x) (if (pair? x)
                                         (count-leaves x)
                                         1))
                         t)))

(define x (cons (list 1 2) (list 2 3)))

(display (count-leaves x))
(display " ")
(display (count-leaves (list x x)))
(display " ")
