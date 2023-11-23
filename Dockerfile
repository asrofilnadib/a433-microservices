# Gunakan Node.js versi 18 dengan base image Alpine
FROM node:18-alpine

# Tentukan direktori kerja di dalam container
WORKDIR /src

# Salin file package.json dan package-lock.json ke dalam direktori kerja
COPY package*.json ./

# Install dependensi npm yang didefinisikan dalam package.json
RUN npm install

# Set environment variable NODE_ENV ke production
ENV NODE_ENV=production

# Install dependensi dengan npm ci untuk memastikan kestabilan dependensi
RUN npm ci

# Salin semua file ke dalam direktori kerja di dalam container
COPY . .

# Expose port 3000 pada container
EXPOSE 3001

# Perintah yang akan dijalankan saat container dijalankan
CMD ["npm", "start"]
