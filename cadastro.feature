            #lenguage: pt

            Funcionalidade: Cadastros
            Como cliente da EBAC
            Quero concluir meu Cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu precise finalizar o cadastro para fazer a compra

            Cenário: Cadastro com todos dados obrigatórios
            Quando todos os itens obrigatórios marcados com asterisco
            E o email não seja somente números
            E a senha seja números e caracteres
            Então deve permitir o cadastro do usuario

            Esquema do Cenário: Autorização do cadastro
            Dado que os <campos com asterisco> estejam preenchidos
            E o <email> não seja somente números
            E a <senha> obedeça a regra
            Então o usuario deve ser <autorizado> a realizar o cadastro
            Exemplos:
            | Email                | Senha      | Campos com asterisco | Autorização |
            | "adrian12@gmail.com" | "123ebac!" | "preenchidos"        | "sim"       |


            Cenário: Cadastro não autorizado ou invalido
            Quando o email for somente números
            E a senha não for com números e caracteres
            E os campos com asteriscos não forem preenchidos pelo usuário
            Então não deve autoziar o cadastro

            Esquema do Cenário: Cadastro invalido
            Exemplos:
            | Email             | Senha    | Campos com asterisco | Autorização |
            | "76812@gmail.com" | "abcser" | "não"                | "não"       |
