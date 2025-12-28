FROM node:20

WORKDIR /tiki_nextjs

COPY package.json .

RUN yarn config set network-timeout 30000000

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 3000

CMD [ "npm", "start" ]

#docker build . -t img-next-html
#docker run -p 3001:3000 --name cons-next-tiki img-next-html