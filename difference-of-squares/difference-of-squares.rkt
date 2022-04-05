#lang racket

(provide sum-of-squares square-of-sum difference)

(define square
  (lambda (n)
    (* n n)))

(define (reduce f n lat)
    (cond
      [(empty? (cdr lat)) (f (car lat) n)]
      [else (reduce f (f n (car lat)) (cdr lat))]))

(define (sum lat)
  (reduce (lambda (x y)(+ x y)) 0 lat))

(define (listof n)
  (cond
    [(equal? n 0) '()]
    [else (cons n (listof (- n 1)))]))

(define (square-of-sum n)
  (square (sum (listof n))))

(define (sum-of-squares n)
  (sum (map square (listof n))))

(define (difference n)
  (- (square-of-sum n) (sum-of-squares n)))

