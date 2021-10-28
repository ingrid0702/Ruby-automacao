 #language:pt  
    Funcionalidade: Fazer cadastro 

        Dado que  acesso a pagina inicial 
        Quando clico em “Crie sua conta aqui”
        Então deverei ser direcionado para a tela de cadastro

    Cenario: Concluir cadastro 

        Dado que preencho os campos validos
        Quando todos os campos forem preenchidos 
        E validados  
        Então deverei receber um e-mail de confirmação de cadastro 