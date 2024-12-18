#!/bin/sh


./containthedocs-build.sh

docker build --platform linux/amd64 -t reg.edgecnf.com/apps/genai-lab-guide:v0.1 -f Dockerfile .

docker push reg.edgecnf.com/apps/genai-lab-guide:v0.1

