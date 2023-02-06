            #lenguage: pt

            Funcionalidade: Cadastros
            Como cliente da EBAC
            Quero concluir meu Cadastro
            Para finalizar minha compra

            Cenário: Parametros para email e senha
            Dado que o email não seja composto somente por números
            Quando a senha for composta por números, letras e caracteres
            Então deve ser considerados válidos

            Contexto:
            Dado que eu precise finalizar o cadastro para fazer a compra

            Cenário: Cadastro com todos dados obrigatórios
            Quando todos os itens obrigatórios marcados com asterisco
            Dado que o email e a senha estejam nos parametros de aceitação
            Então deve permitir o cadastro do usuario

            Esquema do Cenário: Autorização do cadastro
            Dado que os <campos com asterisco> estejam preenchidos
            Quando o <email> e a <senha> corresponderem os parametros de aceitação
            Então o usuario deve ser <autorizado> a realizar o cadastro
            Exemplos:
            | Email                | Senha      | Campos com asterisco | Autorização |
            | "adrian12@gmail.com" | "123ebac!" | "preenchidos"        | "sim"       |


            Cenário: Cadastro não autorizado ou invalido
            Quando o usuário não preencher os itens obrigatórios marcados com asterisco 
            Dado que o <email> e a <senha> não correspondam com os parametros de aceitação 
            Então não deve ser autorizado o cadastro

            Esquema do Cenário: Cadastro invalido
            Exemplos:
            | Email             | Senha    | Campos com asterisco | Autorização |
            | "76812@gmail.com" | "abcser" | "não"                | "não"       |
