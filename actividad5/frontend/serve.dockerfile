## Build
# docker build -t frontend:0.1.0 -f serve.dockerfile .
## Run
# docker run -d -p 3000:3000 frontend:0.1.0

FROM node:18.17.1-bullseye-slim

LABEL name="jesus" \
    email="susguzman@gmail.com"

COPY . /opt/app

WORKDIR /opt/app

RUN npm install

RUN npm run build

RUN npm install -g serve

EXPOSE 3000

CMD ["serve", "-s", "build"]
