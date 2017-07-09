(define (append x y)
        (if (null? x)
            y
            (cons (car x) (append (cdr x) y))))

(define (append! x y)
        (define (last-pair x)
                (if (null? (cdr x))
                    x
                    (last-pair (cdr x))))
        (set-cdr! (last-pair x) y)
        x)

(define x (list 'a 'b))
(define y (list 'c 'd))
(define z (append x y))

(newline)
(display z)
(newline)
(display (cdr x))

(define w (append! x y))

(newline)
(display w)
(newline)
(display (cdr x))
