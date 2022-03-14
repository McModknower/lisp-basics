;; lisp allows quick list setups using ' ` , and ,@

;; ' is lisp for "the following thing should be taken literally"
(format t "~a~%" '(* 1 2))
; (* 1 2)
(format t "~a~%" (* 1 2))
; 2

;; you can also use ' for induvidual symbols
(let ((a 100))
     (format t "~a~%" a)
     (format t "~a~%" 'a))
; 100
; A

;; ` is similar to ' but a , inside the list introduces a subthing that will get evaluated
(format t "~a~%" `(* ,(- 5 2) 2 (+ 10 ,(+ 10 10))))
; (* 3 2 (+ 10 20))

;; inside a ` quoted expression a ,@ means the following thing should get evaluated and spliced into the containing list
(format t "~a~%" `(* ,@(list 5 2) 2 (+ 10 ,@(list 10 10) 5)))
; (* 5 2 2 (+ 10 10 10 5))