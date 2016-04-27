#lang racket
;(cons 3 empty)
;(cons 4 (cons 3 empty))
;(cons 6 (cons 4 (cons 3 empty)))


;create a list of numbers of length size
(define (create-list size)
  (cond
    [(= size 0) empty]
    [else (cons size (create-list (- size 1)))]))
(create-list 8)
(first (create-list 4))
(rest (create-list 4))

;create a func that returns the # of items in a list
;cons? returns t/f is list is list
;empty? returns t/f if list is empty
(define (length list)
  (cond
    [(empty? list) 0]
    [else (+ 1 (length (rest list)))]))
(length(create-list 5))
