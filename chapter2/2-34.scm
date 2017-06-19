(load "2-33a.scm")

(define (hornor-eval x coefficient-sequence)
        (accumulate (lambda (this-coeff higher-terms)
                            (+ this-coeff (* higher-terms x)))
        0
        coefficient-sequence))

(display (hornor-eval 2 (list 1 3 0 5 0 1)))
