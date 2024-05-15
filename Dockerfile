FROM node:16-alpine

WORKDIR site

RUN wget https://js-dos.com/6.22/current/js-dos.js
RUN wget https://js-dos.com/6.22/current/wdosbox.js
RUN wget https://js-dos.com/6.22/current/wdosbox.wasm.js

RUN npm install -g serve

COPY index.html .

COPY game.zip .

ENTRYPOINT npx serve -l tcp://0.0.0.0:8000