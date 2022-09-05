#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálago ninjaflix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu e-mail e senha

    @login_happy
    Cenario: Acesso
        Quando faço login com "tony@stark.com" e "123456"
        Então devo ser autenticado
        E devo ver "Tony Stark" na área logada

    @login_hapless
    Esquema do Cenario: Login sem sucesso
        Quando faço login com <email> e <senha>
        Então não devo ser autenticado
        E devo ver a mensagem de alerta <texto>

        Exemplos:
            | email             | senha    | texto                          |
            | "tony@stark.com"  | "111111" | "Usuário e/ou senha inválidos" |
            | "storm@stark.com" | "123456" | "Usuário e/ou senha inválidos" |
            | ""                | "123456" | "Opps. Cadê o email?"          |
            | "tony@stark.com"  | ""       | "Opps. Cadê a senha?"          |