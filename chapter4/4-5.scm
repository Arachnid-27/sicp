(define (make-if-recipient predicate recipient alternative)
  (list 'if predicate (list recipient predicate) alternative))

(define (cond-recipient? clause) (tagged-list? (cdr clause) '=>))

(define (cond-recipient-unary clause) (caddr clause))

(define (expand-clauses clauses)
  (if (null? clauses)
      'false
      (let ((first (car clauses))
            (rest (cdr clauses)))
        (if (cond-else-clause? first)
            (if (null? rest)
                (sequence->exp (cond-actions first))
                (error "ELSE clause isn't last " clauses))
            (if (cond-recipient? first)
                (make-if-recipient (cond-predicate first)
                                   (cond-recipient-unary first)
                                   (expand-clauses rest))
                (make-if (cond-predicate first)
                         (sequence->exp (cond-actions first))
                         (expand-clauses rest)))))))
