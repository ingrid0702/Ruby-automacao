#language:pt   
Funcionalidade: E2E

Cenario: Login com sucesso 
    Dado que acesso a pagina de Login
    Quando preencher os campos de acesso 
    Então então o usuário devera ser autenticado

Cenario: Ir para a vitrine 

    Dado que estou autenticado 
    Quando estiver na pagina da minha conta
    E clico na logo 
    Então deverei ser direcionado para a pagina de vitrine

Cenario:Visualizar produto na pagina de produto

    Dado que estou na pagina de vitrine 
    Quando clicar no botão adicionar ao carrinho 
    Então o produto devera ser exibido na pagina de carrinho

Cenario: Adicionar produto ao carrinho

    Dado que estou na pagina de carrinho 
    Quando selecionar os campos obrigatórios 
    E clicar em adicionar ao carrinho 
    Então o produto devera ser adicionado ao carrinho 

Cenario: Ir para checkout

    Dado que estou com um produto selecionado no carrinho 
    Quando clicar no ícone do carrinho
    E selecionar finalizar pedido 
    Então devera ser encaminhado para checkout

Cenario: preencher dados de entrega

    Dado que estou na pagina checkout no stepe de envio
    Quando preencho os campos obrigatorios 
    E clico em próximo
    Então devera ser encaminhado para o estepe de revisão e pagamento 

Cenario: Finalizar podido 

     Dado que estou na pagina checkout no stepe de revisão e pagamento
    Quando seleciono a opção de boleto
    E clico em finalizar pedido 
    Então deverá ser encaminhado para atela de sucesso
    

