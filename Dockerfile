FROM python:3.6

ENV TERRAFORM_VERSION=0.11.7

RUN apt update && \
    apt install unzip && \
    curl -L https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o /tmp/terraform.zip && \
    unzip /tmp/terraform.zip -d /usr/local/bin/ && \
    pip install joblib python-jenkins pylint && \
    rm -rf /tmp/terraform.zip && \
    apt remove -y unzip && \
    apt clean
