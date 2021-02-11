# language: pt
Funcionalidade: Assinatura

    @unidade @unidade01 @fleury
    Cenário: Pesquisa de unidade
        Dado que acesso a pagina de unidades
        E pesquiso pela unidade 'Sumaré'
        Então devo ver a primeira unidade com o texto 'Sumaré'

    @unidade @unidade02 @fleury
    Cenário: Acessar a primeira unidade
        Dado que acesso a pagina de unidades
        E clico na primeira unidade
        Então devo ser direcionado para a pagina da unidade clicada

    @unidade @unidade03 @fleury
    Cenário: Validação do endereço da primeira unidade apresentada
        Dado que acesso a pagina de unidades
        E clico na primeira unidade
        Quando acesso para ver o mapa
        Então vejo o mapa com o endereço que está na capa

    @unidade @unidade04 @fleury
    Cenário: Validar botao de agendar exame dentro de detalhes de unidade
        Dado que acesso a pagina de unidades
        E pesquiso pela unidade 'Campo Belo'
        Quando estou dentro de detalhes da unidade e clico no botão de agendar exame
        Então devo ver o modal com as informações de canais de atendimento
