grammar Little;

r:;
KEYWORD:
	'PROGRAM'
	| 'BEGIN'
	| 'END'
	| 'FUNCTION'
	| 'READ'
	| 'WRITE'
	| 'IF'
	| 'ELSE'
	| 'ENDIF'
	| 'WHILE'
	| 'ENDWHILE'
	| 'CONTINUE'
	| 'BREAK'
	| 'RETURN'
	| 'INT'
	| 'VOID'
	| 'STRING'
	| 'FLOAT';

IDENTIFIER: ([a-z] | [A-Z])+ ([A-Z] | [a-z] | [0-9])*;
INTLITERAL: [0-9]+;
FLOATLITERAL: [0-9]* '.' [0-9]+;
STRINGLITERAL: '"' .*? '"';

COMMENT: '--' .*? [\n\r]* -> skip;
WHITESPACE: [ \t\n\r]+ -> skip;
OPERATOR:
	':='
	| '+'
	| '-'
	| '*'
	| '/'
	| '='
	| '!='
	| '<'
	| '>'
	| '('
	| ')'
	| ';'
	| ','
	| '<='
	| '>=';