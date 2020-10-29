#language: pt

    Funcionalidade: Reproduzir parodia
        Sendo um usuário cadastrado
        Quero reproduzir musicas no player do Parodify
        Para que eu poassa ouvir as paródias das minhas bandas favoritas

        Contexto: Login
            * Login com "mairacelestino@bol.com" e "123mudar"

        Cenário: Ouvir parodia

            Dado que eu gosto muito de "Rock"
            Quando toco a seguinte canção:
                | parodia | Sprints de Luta Sprints de Gloria |
                | banda   | Charlie Brown Bug                 |
            Então essa paródia deve ficar em modo de reprodução