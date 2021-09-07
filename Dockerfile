FROM node:14-alpine

RUN npm i -g \
    release-it \
    @release-it/bumper \
    @release-it/conventional-changelog

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]