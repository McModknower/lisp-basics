;; this file is here to make the project more structured and make it easier to search for specific things

(format t "~%~%Start numbers.lisp~%~%")

;; the function + can take any number of arguments:
(format t "no arguments: ~a~%" (+))
(format t "one argument: ~a~%" (+ 10))
(format t "two arguments: ~a~%" (+ 12 11))
(format t "more arguments: ~a~%" (+ 1 2 3 4 5 6 7 8 9 20))

;; it can also work with other number types
(format t "fractions: ~a~%" (+ 1/10 1/5))
(format t "decimals: ~a~%" (+ 0.1 0.2))
(format t "complex numbers: ~a~%" (+ #c(1 0) #c(0 1)))

;; mixing number types is also possible
(format t "mixed: ~a~%" (+ 1 1/5))
(format t "mixed: ~a~%" (+ 0.1 1/5))
(format t "mixed: ~a~%" (+ #c(2 3) 1/5))

;; with the other basic number functions it is similar:
(format t "no arguments: ~a~%" (*))
(format t "one argument: ~a~%" (* 10))
(format t "more arguments: ~a~%" (* 1 2 3 4 5/2 6 7 8 9 0.2))

;; - and / always need at least one element
;; but they work differently with one argument compared to multiple
(format t "one argument: ~a~%" (- 10))
(format t "more arguments: ~a~%" (- 10 1/2))
(format t "one argument: ~a~%" (/ 10))
(format t "more arguments: ~a~%" (/ 10 2))

(format t "~%End numbers.lisp~%~%")