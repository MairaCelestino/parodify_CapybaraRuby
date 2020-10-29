#language: pt

    Funcionalidade: Login
        Sendo um usuário previamente cadastrado
        Quero acessar o sistema com meu email e senha
        Para que eu possa ter acesso as playlists do Parodify

    
        Cenário: Login do usuário

            Dado que acesso a página principal 
            Quando submeto minhas credenciais com: "mairacelestino@bol.com" e "123mudar"
            Então devo ser redirecionado para a área logada

        Cenário: Tentativa de login
            Dado que acesso a página principal 
            Quando submeto minhas credenciais com: "<email>" e "<senha>"
            Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

            Exemplos:
                | email                    |  senha   |
                | maira@404.com            | 12mudar  |
                |                          |          |
                | mairacelestino@gmail.com |          |
                | maira@4040.com           |          | 

