(defun f ()
  (let ((N (read)) (M (read)) (K (read)))
    (defun fLIP? (N M K)
      (defun iter (i j)
	(if (= i (+ N 1))
	    nil
	    (if (= (+ M 1) j)
		(iter (+ i 1) 0)
		(if (= (+ (* i j) (* (- N i) (- M j)))
		       K)
		    t
		    (iter i (+ j 1))))))
      (iter 0 0))
    (if (fLIP? N M K)
    	(format t "~A~%" "Yes")
    	(format t "~A~%" "No"))))

(f)
