#!/usr/bin/env sh

# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama <username-docker>/karsajobs-ui:latest (untuk frontend)
docker build -t ghcr.io/fadeltd/karsajobs-ui:latest -f Dockerfile .

# Perintah untuk login ke Docker Hub (atau GitHub Package bila menerapan saran kedua).
echo $CR_PAT | docker login ghcr.io -u fadeltd --password-stdin

# Perintah untuk push image ke Docker Hub (atau GitHub Package bila menerapan saran kedua).
docker push ghcr.io/fadeltd/karsajobs-ui:latest
