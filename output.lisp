(format t "~%~%Start output.lisp~%~%")

;; (format t ...) prints something to the stdout
;; (format nil ...) returns the formatted string

;; the standard Hello world
(format t "Hello World!")

;; terpri is a function that prints a newline to stdout
(terpri)

;; You can use the "~" character to put other stuff in there
;; ~a to add an object
;; ~% for a newline (like terpri)
(format t "Hello World ~a!~%" 1)

;; fresh-line is like terpri, but only outputs a newline if there wasn't already a newline as the last symbol on the output
(format t "Line 1")
(fresh-line)
(fresh-line)
(fresh-line)
(format t "Line 2")
(fresh-line)

;; like ~% for terpri, there is ~& for fresh-line
(format t "Line 1~&~&~&Line 2~%")

;; ~~ works like any programmer would expect: it prints a ~
(format t "~~~%")

;; with the newlines and ~ you can also specify a number of how many times the char should be outputted
(format t "~10~~3%~10~~%")

(format t "~%End output.lisp~%~%")