# Etapa 1: Usar una imagen base oficial de Node.js
FROM node:14

# Etapa 2: Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Etapa 3: Copiar los archivos necesarios al contenedor
COPY package.json ./

# Etapa 4: Instalar las dependencias
RUN npm install

# Etapa 5: Copiar el resto del código fuente
COPY . .

# Etapa 6: Exponer el puerto en el que corre la aplicación
EXPOSE 3000

# Etapa 7: Definir el comando para iniciar la aplicación
CMD ["npm", "start"]
