FROM node:18-bookworm-slim

# desde que directorio quiero que ejecute los comandos
WORKDIR /code  

# copiamos el código del proyecto dentro del contenedor en /code
COPY . /code

# instalamos las dependencias de mi aplicación
RUN npm install

# información pública de la imagen
EXPOSE 1337

# comando de inicio para cuando se ejecute docker run
CMD ["npm", "start"]