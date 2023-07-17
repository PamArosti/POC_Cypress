Feature: Login page with Tags

    Feature A página de Login funcionará dependendo das credenciais do usuário.

    Background:
        Given Acessar a página de login do saucelabs - tag demo
    @mobile
    Scenario: Login com sucesso
        When Um usuário insere o nome de usuário "standard_user", a senha "secret_sauce" e clica no botão de login - tag demo
        Then a url conterá o subdiretório inventory - tag demo
    @desktop
    Scenario: Login com erro
        When Um usuário insere o nome de usuário "locked_out_user", a senha "secret_sauce" e clica no botão de login - tag demo
        Then A mensagem de erro "Epic sadface: Sorry, this user has been locked out." é mostrada - tag demo
