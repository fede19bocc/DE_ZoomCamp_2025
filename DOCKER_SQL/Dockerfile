FROM python:3.9

RUN pip install pandas

WORKDIR /app
COPY pipeline.py pipeline.py

# entrypoint le paso los comandos que quiero usar
ENTRYPOINT [ "python", "pipeline.py" ]

# docker build -t test:pandas . 
# comando para crear imagen con este dockerfile

#docker run -it test:pandas 2025-01-14
# comando para correr la imagen + el parametro 2025-01-14 
# puedo agregarle mas parametros y usarlo en pipeline