
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

