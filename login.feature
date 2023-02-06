            #Lenguage: pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login na Plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação na plataforma da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar usuário "nuneslucas@gmail.com"
            E a senha "456acesso"
            Então deve levar para a página de checkout, permitindo a visualização do pedido


            Cenário: Autenticação inválida
            Quando eu digitar usuário "nuneslucas@gmail.com"
            E a senha "123cesso"
            Então deve emitir um alerta "usuario ou senha inválida"


            Esquema do Cenário: Autorização de Checkout
            Quando eu digitar <usuario> e a <senha>
            Então deve levar para a pagina de <checkout>

            Exemplos:
            | usuario                | senha       | checkout    |
            | "nuneslucas@gmail.com" | "456acesso" | "permitido" |
            | "nuneslucas@gmail.com" | "123acesso" |    "negado" |
           

