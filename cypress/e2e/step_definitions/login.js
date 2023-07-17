import {
  Given,
  When,
  Then,
} from "@badeball/cypress-cucumber-preprocessor";
import {loginPage} from 'cypress/page-object/LoginPage'

Given("Acessar a página de login do saucelabs", () => {
  loginPage.visitPage()
});

When("Um usuário insere o nome de usuário {string}, a senha {string} e clica no botão de login", (username,password) => {
  loginPage.submitLogin(username,password)
  
});

When("Um usuário fornece credenciais incorretas e clica no botão de login", (table) => {
  table.hashes().forEach((row) => {
    loginPage.submitLogin(row.username, row.password)

  });
});
Then("a url conterá o subdiretório inventory", () => {
  loginPage.verifyPage()
});
Then("A mensagem de erro {string} é mostrada", (errorMessage) => {
  loginPage.verifyErrorMessage(errorMessage)
});
