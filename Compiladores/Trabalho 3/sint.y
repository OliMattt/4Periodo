%{ 
#include "analex.c" 
%}

%left '*' '/'
%left '+' '-'
%start Prog
%token IF
%token ELSE
%token WHILE
%token DO
%token INT
%token GE
%token LE
%token NE
%token EQ 
%token NUM
%token ID
%token FLOAT
%token CHAR
%token DOUBLE
%token VOID
%token LONG
%token SHORT
%token UNSIGNED
%token SIGNED
%token SIZEOF
%token AT_MOD
%token FOR
%token AND
%token OR
%token INC
%token DEC
%token AT_SOMA
%token AT_SUBT
%token AT_MULT
%token AT_DIV
%token STRUCT
%token RETURN
%token SWITCH
%token CASE
%token BREAK
%token DEFAULT
%token TYPEDEF
%token DESL_ESQ
%token DESL_DIR


%%
Prog : Prog Function
	|	Function
	;
		
Statement_Seq :
	Statement Statement_Seq
	|
	;

Statement: 
		Atribuicao
	|	If
	|	While
	|	Do_While
	;

Compound_Stt	:
		Statement
	|	'{' Statement_Seq '}'
	;

While:
	WHILE '(' Exp ')' Compound_Stt
	;

Do_While:
	DO  Compound_Stt WHILE '(' Exp ')' ';'
	;

If:
	IF '(' Exp ')' Statement
	| IF '(' Exp ')' '{' Statement_Seq '}'
		;

Function:
	Typef ID '('  ')'	'{' Decls Statement_Seq '}'
	;

Decls:
	Decl ';' Decls
	|
	;

Decl:
	Type IDs
	;

IDs:
	IDs ',' ID
	|	ID
	;
	
Typef:
	VOID
	|	INT
	|	CHAR
	|	FLOAT
	|	ID
	;	

Type:
	|	INT
	|	CHAR
	|	FLOAT
	|	ID
	;	

Atribuicao : ID '=' Exp ';' 
	;
		
Exp : Exp '+' Exp  
	| Exp '-' Exp  
	| Exp '*' Exp  
	| Exp '/' Exp  
	| '(' Exp ')'  
	| NUM		   
	| ID           
	;   

	
%%  
int main(int argc, char **argv) {     
  yyin = fopen(argv[1],"r");
  yyparse();      
}