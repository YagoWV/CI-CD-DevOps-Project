
# Usando uma imagem base leve do Python
FROM python:3.9-alpine

# Definindo o diretório de trabalho dentro do container
WORKDIR /app

# Copiando os arquivos do seu projeto para o diretório de trabalho
COPY . /app

# Instalando as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expondo a porta 5000 (a porta onde sua aplicação Flask vai rodar)
EXPOSE 5000

# Definindo o comando para rodar a aplicação
CMD ["python", "app.py"]
