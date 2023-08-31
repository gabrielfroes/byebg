# byebg

_Remova o fundo de suas imagens JPG automagicamente._

![Ícone byebg](/docs/byebg.png)

## 📌 Descrição

`byebg` é uma ferramenta de linha de comando e também uma integração com o menu de contexto do Windows, permitindo que desenvolvedores e usuários removam o fundo de imagens JPG de forma automática.

## 🚀 Instalação e Compilação

### Pré-requisitos

- Python 3.x
- Pip
- PyInstaller (para compilação do executável)

### Passos

1. Clone o repositório:

   ```bash
   git clone https://github.com/gabrielfroes/byebg.git
   cd byebg
   ```

2. Crie um ambiente virtual e ative-o:

   ```bash
   python -m venv venv
   source venv/bin/activate  # No Windows use: .\venv\Scripts\activate
   ```

3. Instale as dependências:

   ```bash
   pip install -r requirements.txt
   ```

4. Compile o projeto (opcional):
   ```bash
   pyinstaller --onefile --noconsole --icon=byebg.ico ./src/byebg.py
   ```
   Pode ser que você precise ajustar o caminho correto do ícone se quiser incorporá-lo no executável.

### Instalação do menu de contexto

Após compilar, se você quiser adicionar a opção no menu de contexto do Windows:

1. Adapte o arquivo `.reg` para apontar para o local correto do seu executável.
2. Execute o arquivo `.reg` como administrador.

## 🎯 Como usar

### Linha de Comando

Execute o script ou o executável compilado passando a imagem de entrada e a saída desejada:

```bash
python byebg.py input.jpg output.png
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
