; After peer review: http://codereview.stackexchange.com/questions/46379/project-euler-1-sum-of-multiples-of-3-or-5-under-1000

#lang racket

(define (sum-multiples start end)
  
  (define (check x)
    (or (zero? (modulo x 3))
        (zero? (modulo x 5))))
  
  (let loop ((sum 0)
             (i start))
    (cond ((>= i end) sum)
          ((check i) (loop (+ sum i) (add1 i)))
          (else      (loop sum (add1 i))))))
  
(sum-multiples 0 1000)