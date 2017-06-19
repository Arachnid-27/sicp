(define (square-tree-1 tree)
        (cond ((null? tree) ())
              ((not (pair? tree)) (* tree tree))
              (else (cons (square-tree-1 (car tree))
                          (square-tree-1 (cdr tree))))))

(define (square-tree-2 tree)
        (map (lambda (tree)
                     (if (pair? tree)
                         (square-tree-2 tree)
                         (* tree tree)))
             tree))

(define x (list 1 (list 2 (list 3 4) 5) (list 6 7)))

(newline)
(display (square-tree-1 x))
(newline)
(display (square-tree-2 x))
