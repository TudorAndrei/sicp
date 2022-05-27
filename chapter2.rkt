#lang sicp
;; vim: set ft=racket:
#| (define (make-rat n d) |#

#|   (let ((g (gcd n d))) |#
#|     (cons (/ n g) (/ d g)))) |#
#| #1| (define (make-rat n d) (cons n d)) |1# |#
#| (define (numer x) (car x)) |#
#| (define (denom x) (cdr x)) |#

#| (define (add-rat x y) |#
#|   (make-rat (+ (* (numer x) (denom y)) |#
#|                (* (numer y) (denom x))) |#
#|             (* (denom x) (denom y)))) |#
#| (define (sub-rat x y) |#
#|   (make-rat (- (* (numer x) (denom y)) |#
#|                (* (numer y) (denom x))) |#
#|             (* (denom x) (denom y)))) |#
#| (define (mul-rat x y) |#
#|   (make-rat (* (numer x) (numer y)) |#
#|             (* (denom x) (denom y)))) |#
#| (define (div-rat x y) |#
#|   (make-rat (* (numer x) (denom y)) |#
#|             (* (denom x) (numer x)))) |#
#| (define (equal-rat? x y) |#
#|   (= (* (numer x) (denom y)) |#
#|      (* (numer y) (denom x)))) |#

#| (define x (cons 1 2)) |#
#| (define y (cons 4 6)) |#
#| (define z (cons x y)) |#

#| (define (print-rat x) |#
#|   (newline) |#
#|   (display (numer x)) |#
#|   (display "/") |#
#|   (display (denom x))) |#

#| (define one-half (make-rat 1 2)) |#
#| (define one-third (make-rat 1 3)) |#

#| (print-rat one-half) |#
#| (print-rat (add-rat one-half one-half)) |#
#| (print-rat (add-rat one-third one-half)) |#
#| (define la (list 1 2 3 4)) |#
#| (cdr (cdr (cdr la))) |#


(define (memq item x)
  (cond ((null? x) false)
        ((eq? item (car x )) x)
        (else (memq item (cdr x)))))

(memq 'apple '(pear banana prune))
(memq 'apple '(x (apple sauce) y apple pear))
(list 'a 'b 'c)
(list (list 'george))

