#!/bin/bash


echo "Membuat docker images..."
# Perintah untuk membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

echo "List docker images"
# Melihat daftar image di lokal
docker images

echo "Mengubah nama sesuai dengan format docker registry"
# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages)
docker tag item-app:v1 ghcr.io/asrofilnadib/item-app:v1

echo "Login ke Github Packages"
# Login ke Docker Hub (atau GitHub Packages)
echo "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" | docker login ghcr.io -u asrofilnadib --password-stdin

echo "Mengunggah image ke Github Packages"
# Mengunggah image ke Docker Hub (atau GitHub Packages)
docker push ghcr.io/asrofilnadib/item-app:v1
