FROM ubuntu:16.04

WORKDIR /src
EXPOSE 8000

COPY . .

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/*

RUN npm install

ENV FRONT_URL=http://localhost:5000

CMD npm start
