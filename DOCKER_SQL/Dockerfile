FROM python:3.9

RUN apt-get install wget
RUN pip install pandas sqalchemy psycopg2

WORKDIR /app
COPY ingest_data.py ingest_data.py

# entrypoint le paso los comandos que quiero usar
ENTRYPOINT [ "python", "ingest_data.py" ]

# docker build -t test:pandas . 
# comando para crear imagen con este dockerfile

#docker run -it test:pandas 2025-01-14
# comando para correr la imagen + el parametro 2025-01-14 
# puedo agregarle mas parametros y usarlo en pipeline