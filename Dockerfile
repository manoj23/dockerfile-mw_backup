FROM alpine:3.9
LABEL maintainer="Georges Savoundararadj <savoundg@gmail.com>"
RUN apk add --no-cache coreutils git mariadb-client
ADD https://raw.githubusercontent.com/manoj23/mw_backup/v1.0/mw_backup.sh /usr/local/bin/
COPY mw_backup_main.sh /usr/local/bin/
ENTRYPOINT mw_backup_main.sh
