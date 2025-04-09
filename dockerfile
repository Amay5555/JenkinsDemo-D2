FROM node:18

WORKDIR /ReactApp

COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm","start"]