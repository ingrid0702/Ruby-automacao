#language:pt   
Funcionalidade:Pedidos finalizados 
Cenario: Finalizar pedido 

    Dado que acessa a pagina de produto 
    Quando adicionar ao carrinho e finalizar o pedido 
    E preenche os campos de dados pessoas com email "ingrid@mailinator.com" nome "Teste"
    E sobrenome  "Dois" empresa "teste teste"
    E os dados de endereço que são rua "Cristino de Castro"  bairro "Ibura" Complemento "casa"
    Então a compra sera finalizada com sucesso 



