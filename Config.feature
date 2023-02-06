            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Configurar protudo
            Dado que o usuario escolha o produto
            Quando o usuário escolher a cor e o tamanho e a quantidade
            E não podendo passar de 10 itens por compra
            Quando o usuario clicar na opção limpar
            Então deve voltar ao estado original

            Esquema do Cenário: Limpar opções
            Dado que eu escolha a <cor> o <tamanho> e a <quantidade>
            Quando o usuario selecionar <limpar>
            Então o <carrinho> deve ficar vazio

            Exemplos:
            | Cor     | Tamanho | Quantidade | Limpar | Carrinho |
            | "Verde" | "M"     | "5 itens"  | "sim"  | "vazio"  |
            | "Rosa"  | "P"     | "3 itens"  | "não"  | "nok"     |





