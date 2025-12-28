FROM node:16-alpine
WORKDIR /app
# O PRIMEIRO PONTO SIGNIFICA TODOS OS ARQUIVOS DA PASTA ATUAL
# O SEGUNDO PONTO SIGNIFICA A PASTA DE DESTINO REFERENCIADA NO WORKDIR
COPY . .
#o RUN executa quando se está construindo a imagem
RUN apk add --no-cache python3 g++ make
RUN yarn install --force
#o cmd executa quando o container é iniciado
CMD ["node", "src/index.js"]
EXPOSE 3000