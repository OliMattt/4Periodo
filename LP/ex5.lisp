(defun processar-lista (lista)
  (cond ((null lista) '())  
        ((evenp (car lista)) 
         (cons (* -1 (car lista))  
               (processar-lista (cdr lista)))) 
        (t (processar-lista (cdr lista)))))  

(setq lista-original '(1 2 3 4 5))
(setq lista-processada (processar-lista lista-original))
(print lista-processada) 