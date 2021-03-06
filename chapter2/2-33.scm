(load "2-33a.scm")

(define (map p sequence)
        (accumulate (lambda (x y) (cons (p x) y)) () sequence))

(define (append seq1 seq2)
        (accumulate cons seq2 seq1))

(define (length sequence)
        (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

(newline)
(display (map (lambda (x) (* x x)) (list 1 2 3 4)))
(newline)
(display (append (list 1 2) (list 3 4)))
(newline)
(display (length (list 1 2 3 4)))
