;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 030816notes) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; 1: to-celsius
(define (to-celcius num)
  (/ (- num 32) 1.8))
(check-expect (to-celcius 32) 0)

; 2: is-leap-year
(define (is-leap-year x)
  (if (= (remainder x 4) 0)
      (if (> (remainder x 100) 0) true
          (if (= (remainder x 400) 0) true false) )
      false))
(check-expect (is-leap-year 2016) true)
(check-expect (is-leap-year 2000) true)
(check-expect (is-leap-year 2015) false)
(check-expect (is-leap-year 1900) false)
(check-expect (is-leap-year 1700) false)

; 3: countdown
(define (countdown num)
  (cond
    [(<= num 0) "Blast off"]
    [else (string-append
           (number->string num)
           "" (countdown
               (- num 1)))]))

(check-expect (countdown 5) "54321Blast off")
(check-expect (countdown 0) "Blast off")
(check-expect (countdown -3) "Blast off")

; 4. summation
(define (summation num)
  (cond
    [(< num 1) 0]
    [else (+ num (summation(- num 1)))]
    )
  )
(check-expect (summation 3) 6)
(check-expect (summation 5) 15)


; 5: num-digits: number->number
(define (num-digits n)
  (cond
    [(< n 10) 1]
    [else (+ 1 (num-digits (quotient n 10)))]))
(check-expect (num-digits 1000) 4)

(cons 3 empty)
(cons 4 (cons 3 empty))
(cons 6 (cons 4 (cons 3 empty)))
