FROM node:alpine

WORKDIR /src
EXPOSE 8000

COPY . .

RUN adduser -S app && \
    npm install && \
    chown -R app /src

USER app

ENV FRONT_URL=http://localhost:5000

CMD npm start