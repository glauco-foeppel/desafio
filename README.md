# Resolução do desafio

### Requisitos

* Ruby versão 2.2.1
* Rails versão 4.2.5
* PostgreSQL 9+

### Instalação

* Faça o clone do projeto para seu ambiente
* No diretório do projeto rode os comandos:
```
 rake db:create
 rake db:migrate
 rake db:seed
 ```
* Se o ambiente for local, basta rodar o comando:
```
  rails s
```
* Links de acesso:
  - Área do usuário: **[seu_dominio]/users** (ex. localhost:3000/users)
  Você terá uma página com um formulário de acesso, você pode ativar uma das contas de email existente no arquivo seeds ([projeto]/db/seeds.rb) e depois clicando em "Não recebeu instruções de ativação?" na tela de login ou criar uma nova conta.
  
  - Área do admin: **[seu_dominio]/admin** (ex. localhost:3000/admin) Você pode acessar com as credenciais existente:
  email: **admin@email.com** e a senha: **12345678**. Consulte o arquivo seeds.rb para obter as informações de acesso.
  
  
# Observações

  1. O action Mailer para efetuar a entrega de emails precisa ser configurado com algum serviço de entrega. Rodando o projeto na maquina local, você pode ter acesso ao modelo de email enviado e a url de ativação olhando o log do servidor local logo após o cadastro de usuário.
  
  2. No projeto foi utilizado a gem **Paranoia** (https://github.com/rubysherpas/paranoia) para manter os dados "deletados" ocultos no banco ao invés de remover da base. Essa solução foi pensada para esse teste especificamente mas seria um ponto a ser refatorado após uma prévia análise da necessidade de utilização da funcionalidade ou pelo volume de dados, podendo manter uma base somente com histórico de dados legados.
  
  3. A inclusão de testes automatizados, devido ao prazo de entrega não foi desenvolvido utilizando BDD, então o refatoramento com a inclusão de testes se faz necessário.
  
  
  
  
> # Desafio

> Este projeto consiste em construir uma aplicação web, utilizando Ruby 2.2+ Rails 4.2+, e o banco de dados PostgreSQL 9+. > Não é importante a parte gráfica do projeto, sugiro utilizar o Bootstrap para ficar fácil e minimamente apresentável.

> Você poderá usar extensões ao seu gosto, desde que eles não componham uma solução completa, ou seja, você deve construir e > não somente parametrizar algo pronto.

> Não esqueça de documentar o que for necessário da aplicação no arquivo README.md informando todos os dados necessários para > rodar o projeto. Versione também o dump da última versão do seu banco de dados se necessário. É recomendável a utilização do setup de banco via rake setup/migrate para facilitar a execução e avaliação.

> CASE:

> Um cliente fictício passou as 'stories' com os detalhes do que ele precisa:

> 1. Como visitante eu devo conseguir criar uma conta utilizando meu nome, email e uma senha, e ao concluir com sucesso meu cadastro devo receber um email de confirmação.
> 2. Como visitante eu devo conseguir me autenticar utilizando meu email e senha.
> 3. Como usuário devo poder alterar meu cadastro e me deslogar.
> 4. Como usuário administrador devo poder visualizar todos os usuários.
> 4. Como usuário administrador devo poder buscar um usuário pelo seu nome.
> 5. Como usuário administrador devo poder alterar os dados de qualquer usuário. 
> 5. Como usuário administrador devo poder remover um usuário.
> 6. Como usuário administrador devo poder listar todos os usuários deletados.


> Faça um fork deste repositório e envie o link do repositório com o desafio completo para ti@moccato.com.br.
