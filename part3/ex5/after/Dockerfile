FROM node:alpine

WORKDIR /space-roam

EXPOSE 3000

COPY . .

RUN adduser -S app && \
    npm install --production && \
    chown -R app /space-roam && \
    rm LICENSE package-lock.json Dockerfile README.md && \
    rm -rf /src /public

USER app

CMD npm start
