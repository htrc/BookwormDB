FROM python:latest

WORKDIR /opt/bookworm

COPY . .

COPY /docker/.bookworm-sql.cnf ~/.bookworm-sql.cnf

RUN pip install .

RUN bookworm --help

EXPOSE 10012

CMD [ "bookworm", "-l", "debug", "serve" ]