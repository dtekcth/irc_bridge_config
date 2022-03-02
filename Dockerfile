FROM golang:1.17.7-alpine3.15

RUN mkdir -p /usr/app
WORKDIR /usr/app
RUN wget https://github.com/42wim/matterbridge/releases/download/v1.24.0/matterbridge-1.24.0-linux-64bit

COPY . .

ARG DISCORD_TOKEN
RUN sed -i s/DISCORD_TOKEN/\"$DISCORD_TOKEN\"/ matterbridge.toml
RUN chmod +x matterbridge*
RUN ./matterbridge-1.24.0-linux-64bit

