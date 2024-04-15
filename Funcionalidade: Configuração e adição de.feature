            Funcionalidade: Configuração e adição de produtos ao carrinho
            Como cliente da EBAC-SHOP
            Eu quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Configurar produto e adicionar ao carrinho
            Dado que estou na página de um produto na EBAC-SHOP
            Quando eu seleciono a cor "cor_selecionada"
            E eu seleciono o tamanho "tamanho_selecionado"
            E eu escolho a quantidade "quantidade_selecionada"
            E eu clico no botão "Adicionar_ao_Carrinho"
            Então o produto é adicionado ao carrinho
            E eu vejo uma mensagem de sucesso

            Funcionalidade: Visualizar detalhes do pedido
            Como cliente da EBAC-SHOP
            Eu quero visualizar os detalhes do meu pedido
            Para garantir que os itens e quantidades estão corretos

            Cenário: Visualizar detalhes do pedido
            Dado que estou logado na minha conta da EBAC-SHOP
            E tenho um pedido com os seguintes itens "<produto>" e quantidades "<quantidade>"
            | produto       | quantidade |
            | Camisa Branca | 3          |
            | Meia Amarela  | 2          |
            | Chinelo Preto | 2          |
            Quando eu visualizo os detalhes do pedido
            Então eu vejo a lista de itens comprados com as quantidades correspondentes

            Funcionalidade: Calcular desconto
            Como cliente da EBAC-SHOP
            Eu quero calcular o desconto aplicado ao meu pedido
            Para saber o valor final a ser pago

            Cenário: Calcular desconto
            Dado que o valor total do meu pedido é "<pedido_total>"
            E eu tenho um cupom de desconto de "<desconto_ponrcentagem>"
            Quando eu aplico o cupom ao meu pedido
            Então o desconto de "<desconto_calculado>" é aplicado
            E o valor final a ser pago é "<valor_final>"

            Exemplos:
            | pedido_total | desconto_porcentagem | desconto_calculado | valor_final |
            | 100          | 10                   | 10                 | 90          |
            | 200          | 10                   | 20                 | 180         |