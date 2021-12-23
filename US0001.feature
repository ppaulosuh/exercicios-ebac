            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acessa a EBAC-SHOP

            Cenário: Tabela de escolha
            Quando eu escolher o <size> desejado
            E escolher a <color>
            E a <quantidade>
            Ao clicar no botão de comprar
            Então deve exibir a <mensagem>

            Exemplos:
            | size | color    | quantidade | mensagem                         |
            | "XS" | "blue"   | "1"        | "Produto adicionado no carrinho" |
            | "M"  | "Orange" | "5"        | "Produto adicionado no carrinho" |
            | "XL" | "Red"    | "10"       | "Produto adicionado no carrinho" |
            | "S"  | "Red"    | "11"       | "Quantidade não permitida"       |
            | "L"  | "Orange" | "0"        | "Quantidade não permitida"       |