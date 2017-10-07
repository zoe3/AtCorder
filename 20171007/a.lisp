(defun f ()
  (let ((str (coerce (symbol-name (read)) 'list)))
    ;;入力はSymbolなので文字列に変換
    ;;文字列をcoerceで1文字のlistに分割
    (if (and (eql (car str) (nth 1 str))
	     (not (eql (nth 1 str) (nth 2 str)))
	     (eql (nth 2 str) (nth 3 str)))
	(format t "~A~%" "Yes")
	(format t "~A~%" "No"))))
(f)
