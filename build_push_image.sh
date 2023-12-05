#!/usr/bin/env bash

# Selepas bikin Dockerfile, kini tugas Anda adalah membuat berkas shell script bernama build_push_image.sh yang berisi beberapa baris perintah untuk keperluan membuat Docker image (build) dan kemudian mengunggahnya (push) ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).

# Berikut adalah uraian yang mesti ada pada berkas script Anda secara berurutan.

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 -f Dockerfile .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker tag item-app:v1 fadeltd/item-app:v1

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
echo $DOCKER_HUB_PASSWORD | docker login -u fadeltd --password-stdin

# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker push fadeltd/item-app:v1

# Ingat bahwa tahapan di atas mesti dilakukan secara berurutan.