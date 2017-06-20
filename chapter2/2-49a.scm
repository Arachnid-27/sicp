(load "2-46.scm")
(load "2-47.scm")
(load "2-48.scm")

(define (frame-coord-map frame)
        (lambda (v)
                (add-vect (origin-frame frame)
                          (add-vect (scale-vect (xcor-vect v)
                                                (edge1-frame frame))
                                    (scale-vect (ycor-vect v)
                                                (edge2-frame frame))))))

(define (segments->painter segment-list)
        (lambda (frame)
                (for-each (lambda (segment)
                                  (draw-line ((frame-coord-map frame) (start-segment segment))
                                             ((frame-coord-map frame) (end-segment segment))))
                 segment-list)))

(define device (make-graphics-device (car (enumerate-graphics-types))))

(define (draw-line v1 v2)
        (graphics-draw-line device
                            (xcor-vect v1)
                            (ycor-vect v1)
                            (xcor-vect v2)
                            (ycor-vect v2)))
