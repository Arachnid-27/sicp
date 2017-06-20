(load "2-49a.scm")

(define (transform-painter painter origin corner1 corner2)
        (lambda (frame)
                (let ((m (frame-coord-map frame)))
                     (let ((new-origin (m origin)))
                          (painter (make-frame new-origin
                                               (sub-vect (m corner1) new-origin)
                                               (sub-vect (m corner2) new-origin)))))))

(define (flip-horiz painter)
        (transform-painter painter
                           (make-vect 1.0 0.0)
                           (make-vect 0.0 0.0)
                           (make-vect 1.0 1.0)))

(define (rotate-180 painter)
        (transform-painter painter
                           (make-vect 1.0 1.0)
                           (make-vect 0.0 1.0)
                           (make-vect 1.0 0.0)))

(define (rotate-270 painter)
        (transform-painter painter
                           (make-vect 0.0 1.0)
                           (make-vect 0.0 0.0)
                           (make-vect 1.0 1.0)))

(define frame (make-frame (make-vect 0.0 0.0)
                          (make-vect 1.0 0.0)
                          (make-vect 0.0 1.0)))

(define painter (segments->painter (list (make-segment (make-vect 0.0 0.4) (make-vect 0.8 0.4))
                                         (make-segment (make-vect 0.8 0.4) (make-vect 0.7 0.3))
                                         (make-segment (make-vect 0.8 0.4) (make-vect 0.7 0.5)))))

(painter frame)
((flip-horiz painter) frame)
((rotate-180 painter) frame)
((rotate-270 painter) frame)
