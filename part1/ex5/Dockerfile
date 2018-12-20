FROM ubuntu:16.04

WORKDIR /src
EXPOSE 5000

COPY . .

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs

RUN npm install

ENV API_URL=http://localhost:8000

CMD npm start
