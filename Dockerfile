FROM node:8
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm install -g @angular/cli@6.0.8
COPY . /usr/src/app
RUN npm install

EXPOSE 4200

CMD ["npm","start"]