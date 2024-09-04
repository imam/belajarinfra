# Gunakan base image golang
FROM golang:1.20-alpine

# Set working directory
WORKDIR /app

# Copy semua file ke dalam working directory
COPY . .

# Build aplikasi
RUN go build -o main .

# Ekspos port 3000
EXPOSE 3000

# Jalankan aplikasi
CMD ["./main"]

