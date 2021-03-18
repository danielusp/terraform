FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install curl zip -y && \
    mkdir terraform-projects && \
    curl -O https://releases.hashicorp.com/terraform/0.14.8/terraform_0.14.8_linux_amd64.zip && \
    unzip terraform_0.14.8_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_0.14.8_linux_amd64.zip

WORKDIR /terraform-projects