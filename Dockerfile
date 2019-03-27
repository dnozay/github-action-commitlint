FROM node:alpine

LABEL "name"="commitlint"
LABEL "maintainer"="Damien Nozay <dnozay@confluent.io>"
LABEL "version"="0.0.1"

LABEL "com.github.actions.name"="commitlint"
LABEL "com.github.actions.description"="Runs commitlint in an action"
LABEL "com.github.actions.icon"="file-text"
LABEL "com.github.actions.color"="yellow"

COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY entrypoint.sh /entrypoint.sh
RUN apk add --no-cache git
RUN npm install -g @commitlint/cli @commitlint/config-conventional
RUN echo "module.exports = {extends: ['@commitlint/config-conventional']}" > commitlint.config.js

ENTRYPOINT ["/entrypoint.sh"]
