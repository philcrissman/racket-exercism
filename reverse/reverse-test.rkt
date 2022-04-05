#lang racket/base

(require "reverse.rkt")

(module+ test
  (require rackunit rackunit/text-ui)

  (define suite
    (test-suite
      "reverse-tests"

      (check-equal? (reverse (list 1 2 3)) (list 3 2 1) "three-element list")
      (check-equal? (reverse '(2)) '(2) "Single element list")
      (check-equal? (reverse '(7 6 5 4 3 2 1)) '(1 2 3 4 5 6 7) "longer list")))


  (run-tests suite))
