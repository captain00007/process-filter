# ProcessFilter
## Descrição do projeto
* Sistema para fazer filtragem de processos de advogados, o nome do advogado é passado via input, o servidor retorna todos os processos relacionados com esse advogado.

## Configurações para rodar o projeto no linux

**Para rodar o projeto precisa de:**  
* ruby 3.1.4  (ruby -v para ver se ruby está instalado)
* rails 7.1.1 (rails -v para ver se rails está instalado)
* mysql (sudo mysql -v para ver se mysql está instalado)
* Caso não têm as instalações veja abaixo como fazer

## Depois de verificar ou fazer todas as intalações

### Criar a base de dados
* Executar o arquivo script que está na pasta script do projeto para criar a base de dados e as tabelas (pode usar dBeaver ou Workbench para executar o script)
* Configurar o arquivo database.yml(dentro da pasta config) de acordo com o usuário que você está acessando o seu banco de dados no mysql
#### config/database.yml
* default: &default
  ...
  username: usuario (subsitui usuario pelo nome do seu usuario)
  password: senha (subsitui senha pela sua senha)
* rails s (para rodar o projeto)
* o projeto estára disponivel na porta 3000
* Clicar no url que aprece no seu terminal para abrir o navegador
* Agora faz suas pesquisas.


## Instalações para rodar o projeto no linux

**Verificar se tem nodejs e npm installado**
    node -v
    npm -v

**Se não aparece as versões então installa nodejs** (segue o link abaixo)
    https://github.com/nodesource/distributions

**-Installar ruby 3.1.4**
**-Installar ruby via rbenv (ruby management version)**  
Passo a passo:
* git clone https://github.com/rbenv/rbenv.git ~/.rbenv
* echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
* echo 'eval "$(rbenv init -)"' >> ~/.bashrc
* exec $SHELL
* git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
* echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
* exec $SHELL
* sudo apt-get install libssl-dev libreadline-dev
* sudo apt-get install -y zlib1g-dev
**-Install ruby v3.1.4 from rbenv**    
* rbenv install 3.1.4
* rbenv global 3.1.4
* ruby --version (Para ver se a versão certa está installada)

**-Installar bundler**  
    gem install bundler

**-Installar rails 7.1.1** 
    gem install rails

**-Installar mysql**  (Database)
    sudo apt-get install mysql-server mysql-client libmysqlclient-dev
    gem install mysql2

**-Installar as dependencias do projeto usando using bundler**  
    bundle install
