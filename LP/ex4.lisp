(defun cubo-elementos (lista)
  (if (null lista)

      (cons (expt (car lista) 3)  ; Eleva o primeiro elemento ao cubo e adiciona à lista resultante
            (cubo-elementos (cdr lista)))))  ; Chama recursivamente a função para o restante da lista


(setq lista-original '(1 2 3))
(setq lista-cubos (cubo-elementos lista-original))
(print lista-cubos)
