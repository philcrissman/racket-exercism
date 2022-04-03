#lang racket

(provide square total)

(define (square x)
  (expt 2 (- x 1)))

(define (total)
  (foldl + 0 (map square (range 1 65))))
  
