(define (make-mobile left right)
        (list left right))

(define (make-branch length structure)
        (list length structure))

(define (left-branch mobile)
        (car mobile))

(define (right-branch mobile)
        (cadr mobile))

(define (branch-length branch)
        (car branch))

(define (branch-structure branch)
        (cadr branch))

(define (total-weight mobile)
        (if (not (pair? mobile))
            mobile
            (+ (total-weight (branch-structure (left-branch mobile)))
               (total-weight (branch-structure (right-branch mobile))))))

(define (balance? mobile)
        (define (balance-iter branch)
                (let ((structure (branch-structure branch))
                      (len (branch-length branch)))
                     (if (not (pair? structure))
                         (* len structure)
                         (balance-test structure len))))
        (define (balance-test mobile len)
                (let ((left (balance-iter (left-branch mobile)))
                      (right (balance-iter (right-branch mobile))))
                     (if (or (null? left)
                             (null? right)
                             (not (= left right)))
                         ()
                         (* len (+ left right)))))
        (not (null? (balance-test mobile 1))))

(define x (make-mobile (make-branch 1
                                    (make-mobile (make-branch 2 3)
                                                 (make-branch 4 5)))
                       (make-branch 6 7)))

(define y (make-mobile (make-branch 2
                                    (make-mobile (make-branch 3 4)
                                                 (make-branch 4 3)))
                       (make-branch 3
                                    (make-mobile (make-branch 2 4)
                                                 (make-branch 4 2)))))

(display (total-weight x))
(display " ")
(display (balance? x))
(display " ")
(display (total-weight y))
(display " ")
(display (balance? y))
