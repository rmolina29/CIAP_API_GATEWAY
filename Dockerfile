# Utiliza una imagen de Node.js
FROM node:18

# Establece el directorio de trabajo
WORKDIR /app

# Copia el package.json y package-lock.json al directorio de trabajo
COPY package*.json ./
# Copia todo, excepto node_modules
COPY . .

# Instala las dependencias
RUN npm install

# Expone el puerto que utiliza Express Gateway
EXPOSE 9876

# Comando para iniciar Express Gateway
CMD ["npm", "start"]
