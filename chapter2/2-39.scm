(define (reverse-r sequence)
        (fold-right (lambda (x y) (append y (list x))) () sequence))

(define (reverse-l sequence)
        (fold-left (lambda (x y) (cons y x)) () sequence))

(newline)
(display (reverse-r (list 1 2 3 4)))
(newline)
(display (reverse-l (list 1 2 3 4)))
