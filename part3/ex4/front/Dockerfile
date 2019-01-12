FROM node:alpine

WORKDIR /src
EXPOSE 5000

COPY . .

RUN adduser -S app && \
    npm install && \
    chown -R app /src

USER app

ENV API_URL=http://localhost:8000

CMD npm start