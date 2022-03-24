;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Assignment1.41) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (double f x)
    (f (f x)))

(define (inc x)
  (+ 1 x))

(double inc 5)

(double inc (double inc (double inc  (double inc (double inc (double inc (double inc (double inc 5))))))))