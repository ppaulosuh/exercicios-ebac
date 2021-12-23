            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha comprar

            Contexto:
            Dado que eu acesse a tela de Checkout e preencha os dados corretamente

            Cenário: Compra finalizada
            Quando eu preencher os campos <Nome>, <Sobrenome>, <Pais>, <Endereco>, <Cidade>, <CEP>,
            <Telefone>, <Email>
            Ao clicar em Finalizar Compra
            Então deve me mostrar uma <Mensagem> de compra finalizada

            Exemplos:
            | Nome    | Sobrenome | Pais     | Endereco          | Cidade     | CEP      | Telefone   | Email               | Mensagem            |
            | "Paulo" | "Victor"  | "Brasil" | "Rua 200 Casa 12" | "Brasilia" | "728000" | "61999000" | "paulo@ebac.com.br" | "Compra finalizada" |

            Contexto:
            Dado que eu acesse a tela de Checkout e preencha o Email incorretamente

            Cenário: Formato de Email invalido
            Quando eu preencher os campos <Nome>, <Sobrenome>, <Pais>, <Endereco>, <Cidade>, <CEP>,
            <Telefone>, <Email>
            Ao clicar em Finalizar Compra
            Então deve me mostrar uma <Mensagem> de Email invalido

            Exemplos:
            | Nome    | Sobrenome | Pais     | Endereco          | Cidade     | CEP      | Telefone   | Email              | Mensagem                    |
            | "Paulo" | "Victor"  | "Brasil" | "Rua 200 Casa 12" | "Brasilia" | "728000" | "61999000" | "pauloebac.com.br" | "Formato de Email invalido" |

            Contexto:
            Dado que eu acesse a tela de Checkout e NAO preencha os campos obrigatórios

            Cenário: Campos obrigatórios
            Quando eu preencher os campos <Nome>, <Sobrenome>, <Pais>, <Endereco>, <Cidade>, <CEP>,
            <Telefone>, <Email> //Email não preenchido
            Ao clicar em Finalizar Compra
            Então deve me mostrar uma <Mensagem> de preencha os campos obrigatórios

            Exemplos:
            | Nome    | Sobrenome | Pais     | Endereco          | Cidade     | CEP      | Telefone   | Email | Mensagem                          |
            | "Paulo" | "Victor"  | "Brasil" | "Rua 200 Casa 12" | "Brasilia" | "728000" | "61999000" | ""    | "Preencha os campos obrigatórios" |