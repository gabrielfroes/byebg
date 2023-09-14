# byebg

_Remova o fundo de suas imagens JPG automagicamente._

![Ícone byebg](/docs/byebg.png)

## 📌 Descrição

`byebg` é uma ferramenta de linha de comando e também uma integração com o menu de contexto do Windows, permitindo que desenvolvedores e usuários removam o fundo de imagens JPG de forma automática.

## 🚀 Instalação e Compilação

### Pré-requisitos

- Python >=3.8,<3.12
- Pip ou Poetry
- PyInstaller (para compilação do executável)
- Docker

### Passos utilizando PIP

1. Clone o repositório:

   ```bash
   git clone https://github.com/gabrielfroes/byebg.git
   cd byebg
   ```

2. Construa e execute a image docker:

   ```bash
   docker compose up --build
   ```

3. _Opcional_: Gerar executavel com Docker compose

   ```bash
   docker compose -f docker-compose.pyinstaller.yaml up --build
   ```

4. Compile o projeto (opcional):
   ```bash
   pyinstaller --onefile --noconsole --icon=byebg.ico ./src/byebg.py
   ```
   Pode ser que você precise ajustar o caminho correto do ícone se quiser incorporá-lo no executável.

### Passos Utilizando Poetry

Certifique-se de ter o Poetry instalado ([tutorial oficial](https://python-poetry.org/docs/))

1. Clone o repositório:

   ```bash
   git clone https://github.com/gabrielfroes/byebg.git
   cd byebg
   ```

2. Crie um ambiente virtual e instale as dependências:

   ```bash
   poetry install
   ```

3. Compile o projeto (opcional):
   ```bash
   pyinstaller --onefile --noconsole --icon=byebg.ico ./src/byebg.py
   ```
   Pode ser que você precise ajustar o caminho correto do ícone se quiser incorporá-lo no executável.


### Instalação do menu de contexto

Após compilar, se você quiser adicionar a opção no menu de contexto do Windows:

1. Adapte o arquivo .reg para apontar para o local correto do seu executável.
2. Execute o arquivo .reg como administrador.

### Docker branch

Aos desenvolvedores que não tem o Python instalado e quiserem testar a funcionalide do byebg, podem testar utilizando o docker.

> Para mais detalhes, visualize a [branch main](https://github.com/gabrielfroes/byebg/tree/main).

## 🎯 Como usar

### Linha de Comando

Pra utilizar um virtual env no python, segue um pequeno exemplo:
```bash
# Para criar o venv
python -m venv byebg #Você pode trocar "byebg" para algum outro nome que você queira

# Para sair
deactivate

#para entrar novamente no venv
source byebg/bin/activate #Altere "byebg" para o nome que você criou o venv
```

Instale as dependências:
```bash
pip install -r requirements.txt
```

Execute o script ou o executável compilado passando a imagem de entrada e a saída desejada:

```bash
python ./src/byebg.py input.jpg output.png
```

### Menu de Contexto

![Ícone byebg](/docs/menu-contexto-byebg.png)

Após instalar a integração com o menu de contexto:

1. Navegue até uma imagem JPG no windows explorer.
2. Clique com o botão direito na imagem.
3. Selecione a opção "Remover Fundo".
4. Uma nova imagem será gerada no mesmo diretório com o sufixo "\_byebg.png".

## 🤖 Contribuições

Se você encontrar bugs, tiver sugestões de melhorias ou quiser expandir as funcionalidades, sinta-se à vontade para abrir uma issue ou enviar um pull request.
