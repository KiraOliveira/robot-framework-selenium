## QA Power 29/07/2025

Repositório com a apresentação 

Criei esse reposítorio afim de apresentar como avaliação do case proposto

* Utilizado o framework [Robot](https://robotframework.org/).

---

## Sobre o repositório

O site [Login Page](https://the-internet.herokuapp.com/login) foi utilizado para realizar a automação da interface web.
O site [Users](https://jsonplaceholder.typicode.com/users) foi utilizado para realizar a automação da api.

---

## Tecnologias Utilizadas

- Robot Framework - 7.3.2
- Robot Framework - Selenium Library
- Python3 - 3.12.3
- PIP - 24.0
- VS Code

---

## Cenário: Login com sucesso

```
Feature: Login com sucesso

        Dado que eu abro o navegador
        E coloco o username
        E coloco a senha
        E clico no botão "Login"
        Então deve ser exibido a mensagem "You logged into a secure area!"

```

---

## Como Realizar o clone do Repositório

```bash
git clone git@github.com:KiraOliveira/robot-framework-selenium.git
cd robot-framework-selenium
```

---

## Como Executar os Testes

Foi usado um ambiente virtualizado para realização dos testes

```bash
Dentro do seu diretório rode os comandos.
* python3 -m venv .venv
* source .venv/bin/activate

Instalando o Robot na Venv dentro do diretório.
* pip install robotframework
* pip install robotframework-seleniumlibrary
* pip freeze (verificar se as libs foram instaladas)
```

---

