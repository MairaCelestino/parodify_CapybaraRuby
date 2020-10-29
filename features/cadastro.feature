#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenário: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | mairacelestino@hotmail.com |
            | senha          | 123mudar                   |
            | senha_confirma | 123mudar                   |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <senha_confirma> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                      | senha    | senha_confirma | mensagem_saida                       |
            |                            | 123mudar | 123mudar       | Oops! Informe seu email.             |
            | mairacelestino@hotmail.com |          |                | Oops! Informe sua senha.             |
            | mairacelestino@hotmail.com | 123mudar | 1234mudar      | Oops! Senhas não são iguais.         |
            |                            |          |                | Oops! Informe seu email e sua senha. |
    @temp
    Cenário: Validação do campo email

        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]" 
