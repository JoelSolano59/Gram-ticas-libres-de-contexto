%{
#include <stdio.h>
#include <time.h>

void yyerror(const char *s);
int yylex(void);
%}

%token HOLA ADIOS HORA

%%

chatbot : greeting
        | farewell
        | query
        ;

greeting : HOLA { printf("Chatbot: Que habido? Como te puedo ayudar hoy?\n"); }
         ;

farewell : ADIOS { printf("Chatbot: Adios! Que tengas un gran dia!\n"); }
         ;

query : HORA { 
            time_t now = time(NULL);
            struct tm *local = localtime(&now);
            printf("Chatbot: La hora actual es %02d:%02d.\n", local->tm_hour, local->tm_min);
         }
       ;

%%

int main() {
    printf("Chatbot: Hola! Puedes saludarme, preguntarme por el tiempo, o decir adios.\n");
    while (yyparse() == 0) {
        // Loop until end of input
    }
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Chatbot: Nocomprendo jeje.\n");
}