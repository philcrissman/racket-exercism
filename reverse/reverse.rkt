#lang racket

(provide reverse)

(define (reverse lat [last '()])
  (cond
    [(empty? lat) last]
    [else (reverse (cdr lat) (cons (car lat) last))]))
