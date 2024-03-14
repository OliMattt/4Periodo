# Lista de exercícios 1 - Compiladores


# Questão 1

    Ambiguidade só é valida em gramaticas livre de contexto GLC (Descarta a letra A)
    A Gramatica nao é GLC, pois para ser GLC precisa ter um elemento nao terminal a esquerda gerando um elemento a direita. (alfa -> Beta) (Descarta a Letra C)
    A Gramática não tem como ser nula pois ela tem elementos terminais (Descarta a Letra E)
    S := AB := AAB:= AB:= aaB := aab (Portanto nao gera aabbb) (Descarta a LETRA D)
    S := AB := AAB := AAAB := aaab (sendo assim a⁷b. sendo equivalente)
    ## Resposta Correta é a letra B

# Eliminação de Recursão a esqueda
    Para eliminar a recursão a esquerda é
            A := A alfa
            alfa := beta
            
            A := beta A'
            A' := alfa A'
            A' := vazio

            Exemplo:
                E := E+id
                E := id

                E := id E'
                E' := +id E'
                E' := Vazio

# Questão 2

    A primeira está incorreta pois para uso de uma implementação Top-Down é necessario **eliminar recursao a esquerda** 
    A DOIS esta correta
    o Item TRES está falso
    o item QUATRO 
        - Resposta correta LETRA C

# Questão 3

        Program -> Statement ; Program
        | vazio
        Statement -> *if* Expression *Then* Statement *else* Statement
        | Identifier = Expression
        Expression -> Identifier
        | number
        | identifier + Expression
        | number + Expression

        LETRA D: Faltou ";" no final do Statement
        LETRA E: Faltou ";" no final do Statement
        LETRA A: errado a parte depois do "THEN" ão é possível fazer a Expressão
        LETRA B: Faltou os dois "ELSE", pois possui 2 "IF" e 2 "THEN", sendo assim eles acompanham por 2 "ELSE"
        LETRA C: ALTERNATIVA CORRETA

# Questão 4

    B C H G A D F E
    (B) Alocação de Registradores
    (C) Analise Sintatica
    (H) Verificação de Tipos e Simbolos
    (G) Seleção de Instruções
    (A) Alocação de Registradores
    (D) Emissao de Codigo Assembly
    (F) Montagem
    (E) Link Edição
    Reposta CORRETA LETRA A

# Questão 5

    - RESPOSTA LETRA D
    Os itens elementares são os tokens ou palavras, sendo assim é responsabilidade de analisador Léxico

# Questão 6

    letra (Letra/Digito)*
    - Resposta LETRA E

# Questão 7

    - Resposta LETRA A

# Questão 8

    8.1 - corretas: LETRAS C, D & E
    8.2 - corretas: LETRAS B & E
    8.3 - corretas: LETRAS A, B & D
    8.4 - corretas: LETRAS B, C, D & E

# Questão 3.1

     Front-End := 
        Analise Lexica -> Analise Sintatica -> Analise Semantica -> Geração de Código Intermediario
        C B E F

# Questão 3.2

    Back-End :=
        Gerador de Código -> Otimizador de Código
        A D

# Questão 3.3

    Análise Léxica -> Otimizador de Código
    C D

# Questão 3.4

    Analise Semantica
    E

# Questão 3.5

    Analise Lexica
    C
    
# Questão 3.6

    Analise Semantica
    E

# Questão 3.7

    Analise Sintatica
    B

# Questão 3.8

    Analise Semantica
    E