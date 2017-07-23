(load "3-70a.scm")

(define (cube-sum x1 x2)
        (+ (* x1 x1 x1) (* x2 x2 x2)))

(define (cube-sum-pair x)
        (cube-sum (car x) (cadr x)))

(define cube-sum-stream
        (weighted-pairs integers
                        integers
                        cube-sum-pair))

(define (ramanujan s)
        (let ((scar (stream-car s))
              (scdr (stream-cdr s)))
             (let ((scadr (stream-car scdr)))
                  (if (= (cube-sum-pair scar)
                         (cube-sum-pair scadr))
                      (display-line (cube-sum-pair scar)))
                  (ramanujan scdr))))

(ramanujan cube-sum-stream)
