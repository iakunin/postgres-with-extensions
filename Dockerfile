# For more info about `ARG` see
# https://docs.docker.com/engine/reference/builder/#understand-how-arg-and-from-interact
ARG POSTGRES_VERSION=latest
FROM reg.8adm.com/proxy/library/postgres:${POSTGRES_VERSION}

# These lines are based on the following example:
# https://github.com/postgis/docker-postgis/blob/f6d28e4a1871b1f72e1c893ff103f10b6d7cb6e1/10-2.4/Dockerfile
RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./init-extensions.sh /docker-entrypoint-initdb.d/
