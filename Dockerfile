FROM node:10-alpine
WORKDIR /usr/src/client
COPY package*.json ./
RUN yarn
COPY . . 
RUN yarn run build
RUN ['cp','-r','/usr/src/client/build', '/usr/src/client/_build']
CMD ["sleep", "300"]