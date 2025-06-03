Feature: Login na plataforma EBAC-SHOP
  Como cliente da EBAC-SHOP
  Quero fazer login na plataforma
  Para visualizar meus pedidos

  Scenario Outline: Registro de novo usuário
    Given que estou na página de login da EBAC-SHOP com a intenção de me registrar
    When insiro o e-mail "<email>" e a senha "<senha>", e clico em "Register"
    Then o sistema deve exibir a mensagem de alerta "<mensagem>"

    Examples:
      | email              | senha       | mensagem                                                    |
      | bruno@gmail.com    | 123@test    | Olá, bruno@gmail.com (não é bruno@gmail.com? Sair)          |
      | amanda@yahoo.com   | abc123@     | Olá, amanda@yahoo.com (não é amanda@yahoo.com? Sair)        |

  Scenario Outline: Tentativa de login com dados inválidos
    Given que estou na página de login da EBAC-SHOP
    When insiro o e-mail "<email>" e a senha "<senha>" inválidos e clico no botão "Login"
    Then o sistema deve exibir a mensagem de alerta "<mensagem>"

    Examples:
      | email              | senha       | mensagem                                                                                    |
      | bruno@gmail.com    | 123321@     | Erro: A senha fornecida para o e-mail bruno@gmail.com está incorreta. Perdeu a senha?       |
      | brunno@gmail.com   | 123@test    | Endereço de e-mail desconhecido. Verifique novamente ou tente seu nome de usuário.          |
      | brunno@gmail.com   | 123321@     | Endereço de e-mail desconhecido. Verifique novamente ou tente seu nome de usuário.          |

  Scenario: Logout após login bem-sucedido
    Given que estou logado na plataforma EBAC-SHOP
    When clico no botão "sair"
    Then devo ser deslogado da minha conta
