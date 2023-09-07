# byebg

_Remova o fundo de suas imagens JPG automagicamente._

![Ícone byebg](/docs/byebg.png)

## 📌 Descrição

`byebg` é uma ferramenta de linha de comando e também uma integração com o menu de contexto do Windows, permitindo que desenvolvedores e usuários removam o fundo de imagens JPG de forma automática.

## 🚀 Instalação e Compilação

### Pré-requisitos

- Docker

### Passos

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

### Docker branch

Aos desenvolvedores que não tem o Python instalado e quiserem testar a funcionalide do byebg, podem testar utilizando o docker.

> Para mais detalhes, visualize a [branch main](https://github.com/gabrielfroes/byebg/tree/main).

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
