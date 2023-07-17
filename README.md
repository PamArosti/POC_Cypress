# Introdução
Cada projeto deverá definir sua introdução aqui (Contexto de projeto)

# Instalação
1.	Instale o VS Code (https://code.visualstudio.com/Download (Visual Studio Code));
2.	Instale e configure o git de acordo com o S.O do computador (No caso utilizamos o S.O windows (https://gitforwindows.org/));
3.	Instale a versão LTS atual do node.js( https://nodejs.org/en/download (No caso instalamos a partir da versão 18.14.2, pois o cypress a partir das novas versões, não suportam versões do node abaixo da 14));
4.	Execute o comando npm install para instalar as dependencias (Versão do cypress utilizada no package.json é a 12.0.2).


# Execução
1.  Execute o comando npm run test para iniciar a execução do projeto. A url base utilizada poderá ser substituida por um ambiente local, homologação e/ou produção. Porém ele utiliza apenas um unico ambiente como base;
2.  Para execução em mais ambientes como homologação e produção para ser utilizado em uma pipeline, utilizar os comandos de execução: test:homolog | test:prod;
3.  Ao abrir o modal, selecione qual a suite de testes que irá executar (login / tags);
4.  A execução será iniciada automaticamente.


