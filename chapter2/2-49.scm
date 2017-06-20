(load "2-49a.scm")

(define frame-a (make-frame (make-vect -0.9 0.1)
                            (make-vect 0.8 0)
                            (make-vect 0 0.8)))

(define painter-a (segments->painter (list (make-segment (make-vect 0 0) (make-vect 0 1))
                                           (make-segment (make-vect 0 0) (make-vect 1 0))
                                           (make-segment (make-vect 1 1) (make-vect 0 1))
                                           (make-segment (make-vect 1 1) (make-vect 1 0)))))

(define frame-b (make-frame (make-vect 0.1 0.1)
                            (make-vect 0.8 0)
                            (make-vect 0 0.8)))

(define painter-b (segments->painter (list (make-segment (make-vect 0 0) (make-vect 1 1))
                                           (make-segment (make-vect 0 1) (make-vect 1 0)))))

(define frame-c (make-frame (make-vect -0.9 -0.9)
                            (make-vect 0.8 0)
                            (make-vect 0 0.8)))

(define painter-c (segments->painter (list (make-segment (make-vect 0 0.5) (make-vect 0.5 1))
                                           (make-segment (make-vect 0 0.5) (make-vect 0.5 0))
                                           (make-segment (make-vect 1 0.5) (make-vect 0.5 1))
                                           (make-segment (make-vect 1 0.5) (make-vect 0.5 0)))))

(define frame-d (make-frame (make-vect 0.1 -0.9)
                            (make-vect 0.8 0)
                            (make-vect 0 0.8)))

(define painter-d (segments->painter (list (make-segment (make-vect 0 0.8) (make-vect 0.15 0.6))
                                           (make-segment (make-vect 0.15 0.6) (make-vect 0.3 0.7))
                                           (make-segment (make-vect 0.3 0.7) (make-vect 0.4 0.7))
                                           (make-segment (make-vect 0.4 0.7) (make-vect 0.35 0.85))
                                           (make-segment (make-vect 0.35 0.85) (make-vect 0.4 1))

                                           (make-segment (make-vect 0.6 1) (make-vect 0.65 0.85))
                                           (make-segment (make-vect 0.65 0.85) (make-vect 0.6 0.7))
                                           (make-segment (make-vect 0.6 0.7) (make-vect 0.7 0.7))
                                           (make-segment (make-vect 0.7 0.7) (make-vect 1 0.4))

                                           (make-segment (make-vect 0 0.6) (make-vect 0.15 0.4))
                                           (make-segment (make-vect 0.15 0.4) (make-vect 0.3 0.6))
                                           (make-segment (make-vect 0.3 0.6) (make-vect 0.35 0.5))
                                           (make-segment (make-vect 0.35 0.5) (make-vect 0.2 0))

                                           (make-segment (make-vect 0.35 0) (make-vect 0.5 0.3))
                                           (make-segment (make-vect 0.5 0.3) (make-vect 0.6 0))

                                           (make-segment (make-vect 0.75 0) (make-vect 0.6 0.45))
                                           (make-segment (make-vect 0.6 0.45) (make-vect 1 0.25)))))

(painter-a frame-a)
(painter-b frame-b)
(painter-c frame-c)
(painter-d frame-d)
