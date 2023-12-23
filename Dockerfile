# Menggunakaan Node.js versi terbaru sebagai base image
FROM node:lts-alpine

# Menggunakan working directory app dalam container
WORKDIR /app

# Copy semua file dari directory
COPY . .

# Install dependency menggunakan npm
RUN npm install

# Definisikan environment variable pada Dockerfile
ENV PORT=3001

# Expose port yang didefinisikan pada .env atau default to 3001
EXPOSE ${PORT}

# Perintah untuk memulai aplikasi shipping-service
CMD ["npm", "start"]
