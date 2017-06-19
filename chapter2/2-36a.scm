(load "2-33a.scm")

(define (accumulate-n op init seqs)
        (if (null? (car seqs))
            ()
            (cons (accumulate op init (map (lambda (s) (car s)) seqs))
                  (accumulate-n op init (map (lambda (s) (cdr s)) seqs)))))
