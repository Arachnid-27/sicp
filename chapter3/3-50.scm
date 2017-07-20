(load "3-50a.scm")

(define (stream-map proc . argstreams)
        (if (null? (car argstreams))
            ()
            (cons-stream
             (apply proc (map stream-car argstreams))
             (apply stream-map
                    (cons proc (map stream-cdr argstreams))))))

(define x (stream-map +
                      (stream-enumerate-interval 10 20)
                      (stream-enumerate-interval 20 30)))

(stream-for-each display-line x)
