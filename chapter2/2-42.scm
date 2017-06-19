(load "2-40a.scm")

(define (queens board-size)
        (define (queen-cols k)
                (if (= k 0)
                    (list empty-board)
                    (filter (lambda (positions) (safe? k positions))
                            (flatmap (lambda (rest-of-queens)
                                             (map (lambda (new-row)
                                                          (adjoin-position new-row k rest-of-queens))
                                                  (enumerate-interval 1 board-size)))
                                     (queen-cols (- k 1))))))
        (queen-cols board-size))

(define empty-board ())

(define (adjoin-position new-row k rest-of-queens)
        (cons (list new-row k) rest-of-queens))

(define (safe? k positions)
        (null? (filter (lambda (pos)
                               (or (= (car pos) (caar positions))
                                   (= (abs (- (car pos) (caar positions)))
                                      (abs (- (cadr pos) (cadar positions))))))
                       (cdr positions))))

(display (queens 8))
