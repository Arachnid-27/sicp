(define (attach-tag type-tag contents)
        (if (number? contents)
            numbers
            (cons type-tag contents)))

(define (type-tag datum)
        (cond ((pair? datum) (car datum))
              ((number? datum) 'scheme-number)
              (else (error "Bad tagged datum -- TYPE_TAG" datum))))

(define (contents datum)
        (cond ((pair? datum) (cdr datum))
              ((number? datum) datum)
              (else (error "Bad tagged datum -- CONTENTS" datum))))
