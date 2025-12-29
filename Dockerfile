FROM node:16-alpine
WORKDIR /app
COPY package.json .
#É IMPORTANTE COLOCAR O USER NESSE MOMENTO PARA QUE A PERMISSAO ESTEJA CORRETA
#RUN addgroup dev && adduser -S -G silvio dev
#USER silvio
#o RUN executa quando se está construindo a imagem
RUN apk add --no-cache python3 g++ make
RUN yarn install --force
# O PRIMEIRO PONTO SIGNIFICA TODOS OS ARQUIVOS DA PASTA ATUAL
# O SEGUNDO PONTO SIGNIFICA A PASTA DE DESTINO REFERENCIADA NO WORKDIR
COPY . .
#o cmd executa quando o container é iniciado
CMD ["node", "src/index.js"]
EXPOSE 3000