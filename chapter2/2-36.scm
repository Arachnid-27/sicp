(load "2-36a.scm")

(display (accumulate-n +
                       0
                       (list (list 1 2 3)
                             (list 4 5 6)
                             (list 7 8 9)
                             (list 10 11 12))))
