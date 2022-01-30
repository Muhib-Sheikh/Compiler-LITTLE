grammar Little;

r: COMMENT;
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
IDENTIFIER: ([a-z] | [A-Z]) [A-Za-z0-9]*;
INTLITERAL: [0-9]+;
FLOATLITERAL: [0-9]* '.' [0-9]+;
STRINGLITERAL: '"' .*? '"';
COMMENT: '--' .*? [EOF\n\r] -> skip;
OPERATOR:
	':='
	| '+'
	| '-'
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