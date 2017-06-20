(define (element-of-set? x set)
        (cond ((null? set) #f)
              ((equal? x (car set)) #t)
              (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
        (if (element-of-set? x set)
            set
            (cons x set)))

(define (union-set set1 set2)
        (if (null? set2)
            set1
            (union-set (adjoin-set (car set2) set1)
                       (cdr set2))))

(display (union-set '(a b c) '(c d e)))
