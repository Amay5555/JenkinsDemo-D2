FROM node:18

WORKDIR /ReactApp

COPY . .

RUN npm install

EXPOSE 5000

CMD ["npm","start"]