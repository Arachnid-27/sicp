(define (front-ptr queue) (car queue))

(define (rear-ptr queue) (cdr queue))

(define (set-front-ptr! queue item) (set-car! queue item))

(define (set-rear-ptr! queue item) (set-cdr! queue item))

(define (empty-queue? queue) (null? (front-ptr queue)))

(define (make-queue) (cons () ()))

(define (front-queue queue)
        (if (empty-queue? queue)
            (error "FRONT called with an empty queue" queue))
            (car (front-ptr queue)))

(define (insert-queue! queue item)
        (let ((new-pair (cons item ())))
             (cond ((empty-queue? queue)
                    (set-front-ptr! queue new-pair)
                    (set-rear-ptr! queue new-pair)
                    queue)
                   (else
                    (set-cdr! (rear-ptr queue) new-pair)
                    (set-rear-ptr! queue new-pair)
                    queue))))

(define (delete-queue! queue)
        (cond ((empty-queue? queue)
               (error "DELETE! called with an empty queue" queue))
              (else
               (set-front-ptr! queue (cdr (front-ptr queue)))
               queue)))

(define (print-queue queue)
        (define (print-queue-iter items)
                (if (null? (cdr items))
                    (display (car items))
                    (begin (display (car items))
                           (display " ")
                           (print-queue-iter (cdr items)))))
        (newline)
        (display "(")
        (if (empty-queue? queue)
            ()
            (print-queue-iter (front-ptr queue)))
        (display ")"))

(define q1 (make-queue))
(insert-queue! q1 'a)
(print-queue q1)
(insert-queue! q1 'b)
(print-queue q1)
(delete-queue! q1)
(print-queue q1)
(delete-queue! q1)
(print-queue q1)
