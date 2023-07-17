Feature: Pagina de Login 

    Feature A página de Login funcionará dependendo das credenciais do usuário.

    Background:
        Given Acessar a página de login do saucelabs
    
    Scenario: Login com sucesso
        When Um usuário insere o nome de usuário "standard_user", a senha "secret_sauce" e clica no botão de login
        Then a url conterá o subdiretório inventory
    
    Scenario: Login com erro
        When Um usuário insere o nome de usuário "locked_out_user", a senha "secret_sauce" e clica no botão de login
        Then A mensagem de erro "Epic sadface: Sorry, this user has been locked out." é mostrada
    
    Scenario: Usuario incorreto
        When Um usuário fornece credenciais incorretas e clica no botão de login
            | username | password     |
            | testName | secret_sauce |
        Then A mensagem de erro "Epic sadface: Username and password do not match any user in this service" é mostrada
    
    Scenario: Senha incorreta
        When Um usuário fornece credenciais incorretas e clica no botão de login
            | username      | password     |
            | standard_user | testPassword |
        Then A mensagem de erro "Epic sadface: Username and password do not match any user in this service" é mostrada