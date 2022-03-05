(format t "Start loops.lisp")
(terpri)
(loop for x from 1 to 10
    do(terpri)(format t "~d" x))