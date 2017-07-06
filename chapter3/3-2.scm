(define (make-monitored f)
        (let ((count 0))
             (lambda (m) (cond ((eq? m 'how-many-calls?) count)
                               ((eq? m 'reset-count) (set! count 0) count)
                               (else (set! count (+ count 1)) (f m))))))

(define s (make-monitored sqrt))

(newline)
(display (s 100))
(newline)
(display (s 'how-many-calls?))
