# dev.Dockerfile
# docker image build -f dev.Dockerfile -t frontend .

FROM node:10-alpine

WORKDIR /app

COPY ./package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]