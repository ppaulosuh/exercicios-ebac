#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a pagina de login da EBAC-SHOP

Cenário: Autenticação válida
Quando eu digitar o usuário "joao@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de boas vindas "Olá João"

Cenário: Usuário inexistente
Quando eu digitar o usuário "xxxyyyzzz@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de alerta "Usuário inexistente"

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "joao@ebac.com.br"
E a senha "senha123"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválida"
