#!/bin/sh


./containthedocs-build.sh

docker build --platform linux/amd64 --no-cache -t reg.edgecnf.com/apps/genai-lab-guide:v0.1 -f Dockerfile .

docker push reg.edgecnf.com/apps/genai-lab-guide:v0.1

