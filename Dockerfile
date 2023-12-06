# Menggunakan image node:14-alpine
FROM node:14-alpine

# Workdir digunakan untuk tempat aplikasi pada direktori /app
WORKDIR /app

# melakukan proses duplikasi file proyek ke /app
COPY . /app

# mendefenisikan environment production dan DB_HOST=item-db
ENV NODE_ENV=production DB_HOST=item-db

# menjalankan NPM untuk production dan melakukan proses build
RUN npm install --production --unsafe-perm && npm run build

# expose aplikasi untuk berjalan pada port 8080
EXPOSE 8080

# menjalankan NPM
CMD ["npm", "start"]

