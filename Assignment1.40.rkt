;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Assignment1.40) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Exercise 1.40
(define tolerance 0.00001)
(define dx 0.00001)

(define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))

(define (try f guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try f next))))

(define (fixed-point f first-guess)
  (try f first-guess))

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x)) dx)))

(define (newton-transform g)
  (lambda (x) (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (cubic a b c)
  (lambda (x)
    (+ (* x x x) (* x x a) (* x b) c)))

(newtons-method (cubic 1 1 1) 1)
