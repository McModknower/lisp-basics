(defun my-function (x y z) 
  ;; + is a function that takes zero or more arguments
  (+ x y z))

(defmacro my-macro (name &body body)
  ;; The backtick here means that all following places where a , is in front of something get evaluated and then put into the list.
  `(progn
     (format t "Enter ~a~%" ,name)
     ;; Splice in the real body
     ;; and store the result so the result gets returned at the end
     (let ((result (progn ,@body)))
          (format t "Exit  ~a~%" ,name)
          result)))
(format t "Hello world ~a!~%" (my-macro "my-function" (my-function 0 1 0)))
(list 1 2 3)


(defun recursive-factorial (n &optional (a 1))
  (if (< n 2)
      a
      (recursive-factorial (- n 1) (* n a))))

(format t "5! = ~a~%" (recursive-factorial 5))
(trace recursive-factorial)
(format t "5! = ~a~%" (recursive-factorial 5))
(untrace recursive-factorial)


(defun keys (a &key b c d e)
  (format nil "Parameters: a=~a, b=~a, c=~a, d=~a, e=~a" a b c d e))

(format t "keys ~a~%Result: ~a~%" '('a :b 'b :e 'e :d 'd) (keys 'a :b 'b :e 'e :d 'd))

(load "numbers.lisp")