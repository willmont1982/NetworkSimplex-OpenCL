
    c Este é um arquivo de exemplo simples para demonstrar 
    c formato de arquivo de entrada para problemas de fluxo de custo mínimo. A solução
    c vetor é [2,2,2,0,4] com custo em 14.
    c
    c Linha de problema (nós, links)
    p min 4 5
    c
    c Linhas do descritor do nó (supply+ ou demand-)
    n 1 4
    n 4 -4
    c
    c Linhas de descrição de arco (de, para, fluxo mínimo, fluxo máximo, custo)
    a 1 2 0 4 2
    a 1 3 0 2 2
    a 2 3 0 2 1
    a 2 4 0 3 3
    a 3 4 0 5 1
    c
    c fim do arquivo

Este arquivo pode ser usado da seguinte forma:

    
    c pns v1.0.0
    c # nós                 : 4
    c # arcos               : 5
    c # arcos em um bloco   : 5
    c tempo inicial         : 0 ms
    c # iterações           : 4
    c Time                  : 0 ms
    c - encontrar arco entrando   : 0 ms (0.1343)
    c - encontrar nó de junção    : 0 ms (0.04215)
    c - encontrar arco de saída   : 0 ms (0.053802)
    c - mudar fluxos              : 0 ms (0.0282871)
    c - mudar de estado           : 0 ms (0.08259)
    c - atualizar arvore          : 0 ms (0.403412)
    c - atualizar pots            : 0 ms (0.0274343)
    s 11.4

10 equal flow sets                  50 equal flow sets
Arcs   Iterations CPU (s) Sec/Iter. Arcs   Iterations CPU (s) Sec/Iter.
35,970  7500      23     000030   35970  10000     52     000049
71,940  10000     39     000038   71940  14000     74     000054
143,880 16000     80     000050   143880 19000     130    000067
215,820 21000    120     000058   215820 25000     200    000078
287,760 25000    160     000062   287760 32000     270    000085
359,700 32000    210     000066   359700 39000     350    000091
431,640 39000    280     000071   431640 47000     450    000097
503,580 45000    330     000073   503580 55000     550    00010
575,520 53000    410     000078   575520 62000     660    00011
647,460 62000    500     000080   647460 74000     810    00011
