            Funcionalidade: Login na plataforma EBAC-SHOP
            Como cliente da EBAC-SHOP
            Eu quero fazer o login na plataforma
            Para visualizar meus pedidos

            Cenário: Login com sucesso
            Dado que estou na página de login da EBAC-SHOP
            Quando eu insiro um usuário e senha válidos
            E eu clico no botão "Login"
            Então eu sou direcionado para a tela de checkout
            E eu vejo meus pedidos

            Cenário: Login com sucesso_2
            Dado que estou na página de login da EBAC-SHOP
            Quando eu insiro um usuário "<usuario>" e senha "<senha>" válidos
            | usuario            | senha         |
            | usuario_cadastrado | senha_correta |
            E eu clico no botão "Login"
            Então eu sou direcionado para a tela de checkout
            E eu vejo meus pedidos

            Cenário: Login com falha
            Dado que estou na página de login da EBAC-SHOP
            Quando eu insiro um usuário "<usuario>" ou senha "<senha>" inválidos
            E eu clico no botão "Login"
            Então eu vejo uma mensagem de alerta "<mensagem>"

            Exemplos:
            | usuario              | senha           | mensagem                   |
            | usuario_cadastrado   | senha_incorreta | Usuário ou senha inválidos |
            | usuario_cadastrado   | senha_correta   | Bem-Vindo, usuário         |
            | usuario_sem_cadastro | senha_correta   | Usuário ou senha inválidos |
            | usuario_sem_cadastro | senha_incorreta | Usuário ou senha inválidos |

