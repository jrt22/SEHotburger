FROM app

COPY package*.json ./

USER root
WORKDIR /root/temp

RUN apt-get update
RUN apt-get -y install nodejs
RUN apt-get install -y git
RUN apt-get install nginx -y

COPY entrypoint.sh .
ENTRYPOINT ["entrypoint.sh"]
RUN chmod +x entrypoint.sh

COPY . .
EXPOSE 80

CMD [ "git", "app", "app.js" ]
