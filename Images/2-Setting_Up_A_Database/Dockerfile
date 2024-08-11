FROM postgres:13
ENV POSTGRES_USER=root
ENV POSTGRES_PASSWORD=1234
ENV POSTGRES_DB=Example
COPY scripts/ /docker-entrypoint-initdb.d/
EXPOSE 7575