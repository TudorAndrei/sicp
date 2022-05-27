#lang sicp
(define (square n) (* n n))
(define (even? n )
  (= (remainder n 2) 0))
#| (define (factorial n) |#
#|   (if (= n 1) |#
#|     1 |#
#|     (* n (factorial (- n 1))))) |#
#| (factorial 6) |#

#| Iterative addition |#
#| (define (+ a b) |#
#|   (if (= a 0) b (inc (+ (dec a) b)))) |#

#| Recursive addition |#
#| (define (+ a b) |#
#|   (if (= a 0) b (+ (dec a) (inc b)))) |#

#| (+ 5 2) |#

#| Ex 1.10 |#
#| (define (A x y) |#
#|   (cond ((= y 0) 0) |#
#|         ((= x 0) (* 2 y)) |#
#|         ((= y 1) 2) |#
#|         (else (A (- x 1) (A x (- y 1)))))) |#
#| (A 1 10) |#
#| (A 2 4) |#
#| (A 3 3) |#
#| (define (f n) |#
#|   (cond ((< n 3) n) |#
#|         (else (+ f(- n 1) (* 2 f(- n 2)) (* 3 f(- n 3)))))) |#

#| (f 5) |#

#| SEarch for divisors |#
(define (smalles-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n ) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b) (= (remainder b a) 0))
(define (prime? n)
  (= n (smalles-divisor n)))
#| (prime? 2) |#
#| Fermat test |#
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
        (remainder
            (square (expmod base (/ exp 2) m))
            m))
        (else
          (remainder
            (* base (expmod base (- exp 1) m))
            m))))

(define (fermat-test n)
  (define (try a)
    (= (expmod a n n) a))
  (try (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n ) (fast-prime? n (- times 1)))
        (else false)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
    (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

#| (fast-prime? 31 1) |#
(define (search-for-primes low high)
  (if (< low high) (search-for-primes (+ low 1) high)))
  (if not (even? low)
    (search-for-primes (+ 1 low) high))
  (timed-prime-test low)

(search-for-primes 1000 10000)


