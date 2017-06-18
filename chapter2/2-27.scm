(define (deep-reverse items)
        (define (deep-reverse-iter items result)
                (if (null? items)
                    result
                    (deep-reverse-iter (cdr items)
                                       (cons (deep-reverse (car items)) result))))
        (if (not (pair? items))
            items
            (deep-reverse-iter items ())))

(define x (list (list 1 2 3) (list 4 5 6) (list 7 8 9)))

(newline)
(display x)
(newline)
(display (reverse x))
(newline)
(display (deep-reverse x))
