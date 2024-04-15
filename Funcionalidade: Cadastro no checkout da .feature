            Funcionalidade: Cadastro no checkout da EBAC-SHOP
            Como cliente da EBAC-SHOP
            Eu quero concluir meu cadastro
            Para finalizar minha compra

            Cenário: Cadastro com e-mail inválido
            Dado que estou na tela de cadastro do checkout da EBAC-SHOP
            E preencho o campo de e-mail com um formato inválido
            Quando eu clico no botão "Finalizar Cadastro"
            Então eu vejo uma mensagem de erro indicando que o formato do e-mail é inválido

            Cenário: Cadastro com campos vazios
            Dado que estou na tela de cadastro do checkout da EBAC-SHOP
            E deixo campos obrigatórios em branco
            Quando eu clico no botão "Finalizar Cadastro"
            Então eu vejo uma mensagem de alerta indicando que os campos obrigatórios devem ser preenchidos

            Cenário: Cadastro com sucesso
            Dado que estou na tela de cadastro do checkout da EBAC-SHOP
            E preencho todos os campos obrigatórios com os seguintes dados:
            | Nome*     | Jorge Jesus      |
            | E-mail*   | jj@example.com   |
            | Telefone* | 21 99999-9999    |
            | Endereço* | Rua Exemplo, 111 |
            | Cidade*   | Rio de Janeiro   |
            | Estado*   | RJ               |
            | CEP*      | 01000-000        |
            Quando eu clico no botão "Finalizar Cadastro"
            Então meu cadastro é concluído
            E eu posso finalizar minha compra

            Cenário: Cadastro com sucesso
            Dado que estou na tela de cadastro do checkout da EBAC-SHOP
            E preencho todos os campos obrigatórios "<nome>", "<email>", "<telefone>", "<endereço>", "<cidade>", "<estado>", "<cep>"
            Quando eu clico no botão "Finalizar Cadastro"
            Então meu cadastro é concluído
            E eu posso finalizar minha compra

            Exemplos:
            | nome  | email             | telefone      | endereço         | cidade    | estado | cep       |
            | João  | joao@example.com  | 11 99999-9999 | Rua Exemplo, 123 | São Paulo | SP     | 01000-000 |
            | Maria | maria@example.com | 11 88888-8888 | Rua Teste, 456   | Campinas  | SP     | 02000-000 |
            | José  | jose@example.com  | 11 77777-7777 | Rua Exemplo, 789 | Guarulhos | SP     | 03000-000 |
