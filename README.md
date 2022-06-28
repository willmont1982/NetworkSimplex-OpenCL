
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
    c # nodes             : 4
    c # arcs              : 5
    c # arcs in a block   : 5
    c Init Time           : 0 ms
    c # iterations        : 4
    c Time                : 0 ms
    c - find entering arc : 0 ms (0.1343)
    c - find join node    : 0 ms (0.04215)
    c - find leaving arc  : 0 ms (0.053802)
    c - change flows      : 0 ms (0.0282871)
    c - change states     : 0 ms (0.08259)
    c - update tree       : 0 ms (0.403412)
    c - update pots       : 0 ms (0.0274343)
    s 11.4

