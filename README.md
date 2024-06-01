Actividad 3.2. Gramaticas libres de contexto
Joel Isaias Solano Ocampo | A01639289

Requisitos:

- flex
- gcc

Comentarios:
Este repositorios se hizo a traves de PopOS! (distibucion de linux basada en Ubuntu). las instalaciones de flex y gcc se hicieron con los siguientes comandos:
a) sudo apt install flex
b) sudo apt install gcc
En caso de no poder instalar alguno de los componentes, intentar de nuevo los comandos previos pero aplicando primero el siguiente comando:
a) sudo apt update

Input -> chatbot.l:
Aqui se establecen las expresiones que se pueden usar dentro del Chatbot.

Input -> chatbot.y:
Aqui se establecen las respuestas que se daran al usuario al momento de usar el Chatbot.

1. Abrir terminal:
   Abrir terminal en la carpeta del proyecto.

1. Ejecutar comandos:
   Ejecutar los siguientes comandos en orden:
   a) flex chatbot.l
   b) yacc -d chatbot.y
   c) cc lex.yy.c y.tab.c -o chatbot
   d) ./chatbot

Output -> terminal:
Aqui se puede tener una conversacion con el Chabot usando las expresiones establecidas en el archivo chatbot.l.
