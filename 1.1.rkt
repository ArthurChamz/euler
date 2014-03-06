#lang racket
(define (check x) (or (= (modulo x 3) 0)
                      (= (modulo x 5) 0)))

(define (count-check x) (if (check x)
                            x
                            0))
  
(define (sum-multiples-rec actual limit acc) (if (< actual limit)
                                                 (sum-multiples-rec (+ actual 1) limit (+ (count-check actual) acc))
                                                 acc))

(define (sum-multiples actual limit) (sum-multiples-rec actual limit 0))

(sum-multiples 0 1000)