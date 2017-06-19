(load "2-36a.scm")

(define (dot-product v w)
        (accumulate + 0 (map * v w)))

(define (transpose mat)
        (accumulate-n cons () mat))

(define (matrix-*-matrix m n)
        (let ((cols (transpose n)))
             (map (lambda (x)
                          (map (lambda (y) (dot-product x y)) cols))
                  m)))

(define m1 (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))
(define m2 (list (list 1 2) (list 3 4) (list 5 6) (list 7 8)))

(newline)
(display (transpose m1))
(newline)
(display (matrix-*-matrix m1 m2))
