FROM ubuntu:latest
RUN apt-get update -yq \
&& apt-get install curl gnupg -yq \
&& curl -sL https://deb.nodesource.com/setup_10.x | bash \
&& apt-get install nodejs -yq \
&& apt-get clean –y
RUN npm install -g yarn
ADD . /app/
WORKDIR /app
RUN yarn