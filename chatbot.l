%{
#include "y.tab.h"
%}

%%

hola            { return HOLA; }
que[' ']habido  { return HOLA; }
hey             { return HOLA; }
adios           { return ADIOS; }
bye             { return ADIOS; }
hora            { return HORA; }
que[' ']hora[' ']es  { return HORA; }
cual[' ']es[' ']la[' ']hora  { return HORA; }
\n              { return 0; }  /* End of input on newline */

.               { return yytext[0]; }

%%

int yywrap() {
    return 1;
}