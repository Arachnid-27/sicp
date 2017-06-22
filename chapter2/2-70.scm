(load "2-69.scm")

(define huffman-tree (generate-huffman-tree '((A 2) (BOOM 1) (GET 2) (JOB 2) (NA 16) (SHA 3) (YIP 9) (WAH 1))))

(newline)
(display (encode '(Get a job) huffman-tree))
(newline)
(display (encode '(Sha na na na na na na na na) huffman-tree))
(newline)
(display (encode '(Wah yip yip yip yip yip yip yip yip yip) huffman-tree))
(newline)
(display (encode '(Sha boom) huffman-tree))
