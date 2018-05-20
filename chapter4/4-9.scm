(define (while? exp) (tagged-list? exp 'while))

(define (while-predicate exp) (cadr exp))

(define (while-body exp) (caddr exp))

(define (while->recursion exp)
  (make-begin (list (make-define '(<inner-procedure>)
                                 (list (make-if (while-predicate exp)
                                                (make-begin (list (while-body exp)
                                                                  '(<inner-procedure>)))
                                                ''())))
                    '(<inner-procedure>))))
