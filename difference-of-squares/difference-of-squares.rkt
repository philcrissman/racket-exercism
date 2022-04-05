#lang racket

(provide sum-of-squares square-of-sum difference)

(define square
  (lambda (n)
    (* n n)))

(define (sum lat)
  (foldl + 0 lat))

(define (listof n)
  (range 1 (+ n 1)))

(define (square-of-sum n)
  (square (sum (listof n))))

(define (sum-of-squares n)
  (sum (map square (listof n))))

(define (difference n)
  (- (square-of-sum n) (sum-of-squares n)))

