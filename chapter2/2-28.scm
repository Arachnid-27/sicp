(define (fringe items)
        (define (fringe-subtree items)
                (if (not (pair? items))
                    (list items)
                    (fringe-iter items ())))
        (define (fringe-iter items result)
                (if (null? items)
                    result
                    (fringe-iter (cdr items)
                                 (append (fringe-subtree (car items)) result))))
        (reverse (fringe-iter items ())))

(define x (list (list 1 2 3) (list 4 5 6) (list 7 8 9)))

(newline)
(display (fringe x))
(newline)
(display (fringe (list x x x)))
