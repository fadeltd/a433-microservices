# Setelah proses clone usai, langkah selanjutnya adalah Anda harus membuat berkas Dockerfile di root project, yang nantinya digunakan dalam membuat Docker image untuk container bernama item-app.
# Berkas Dockerfile wajib berisi baris perintah di bawah ini.
# Menggunakan base image Node.js versi 14.
FROM node:14

# Menentukan bahwa working directory untuk container adalah /app.
WORKDIR /app

# Menyalin seluruh source code ke working directory di container.
COPY . /app

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-dbsebagai database host. Anda bisa salin kode berikut.
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi. Anda bisa salin kode berikut.
RUN npm install --production --unsafe-perm && npm run build

# Ekspos bahwa port yang digunakan oleh aplikasi adalah 8080.
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start.
CMD ["npm", "start"]

# Ingat bahwa tahapan di atas mesti dilakukan secara berurutan.