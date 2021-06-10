FROM alpine

LABEL "name"="GitHub Flarum Build"
LABEL "description"=""
LABEL "maintainer"="Kitsune Solar <kitsune.solar@gmail.com>"
LABEL "repository"="https://github.com/pkgstore/github-action-flarum-build.git"
LABEL "homepage"="https://pkgstore.github.io/"

LABEL "com.github.actions.name"="GitHub Flarum Build"
LABEL "com.github.actions.description"=""
LABEL "com.github.actions.icon"=""
LABEL "com.github.actions.color"=""

COPY *.sh /
RUN apk add --no-cache bash git git-lfs tar xz composer php7-pdo php7-fileinfo php7-dom

ENTRYPOINT ["/entrypoint.sh"]
