            Funcionalidade: Login na plataforma EBAC-SHOP
            Como cliente da EBAC-SHOP
            Eu quero fazer o login na plataforma
            Para visualizar meus pedidos

            Cenário: Registro 
            Dado que estou na página de login da EBAC-SHOP e desejo me registrar
            Quando eu insiro um email "<email>" e senha "<senha>" e clico em "Register"
            Então eu vejo uma mensagem de alerta "<mensagem>"
             
            Exemplos:
            | usuario              | senha            | mensagem                                           |
            | bruno@gmail.com      | 123@test         | Olá, bruno@gmail.com (não é bruno@gmail.com? Sair) |
            
            
            Cenário: Login 
            Dado que estou na página de login da EBAC-SHOP
            Quando eu insiro um usuário "<usuario>" ou senha "<senha>" inválidos e clico no botão "Login"
            Então eu vejo uma mensagem de alerta "<mensagem>"

            Exemplos:
            | usuario              | senha           | mensagem                                                                              |
            | bruno@gmail.com      | 123321@         | Erro: A senha fornecida para o e-mail bruno@gmail.com está incorreta. Perdeu a senha? |
            | bruno@gmail.com      | 123@test        | Olá, bruno@gmail.com (não é bruno@gmail.com? Sair)                                    |
            | brunno@gmail.com     | 123@test        | Endereço de e-mail desconhecido. Verifique novamente ou tente seu nome de usuário.    |
            | brunno@gmail.com     | 123321@         | Endereço de e-mail desconhecido. Verifique novamente ou tente seu nome de usuário.    |


            Cenário: Botão de "sair" após realizar login 
            Dado que estou na página de login da EBAC-SHOP e insiro as credenciais válidas para realizar o login
            Quando eu clico no botão "sair"
            Então eu saio da minha conta logada.
