FROM ubuntu

RUN apt-get -y update && apt-get install -y git-core
RUN apt-get install -qq software-properties-common -y
RUN apt-add-repository ppa:ansible/ansible -y
RUN apt-get update -qq -y
RUN apt-get install -qq build-essential -y
RUN apt-get install -qq libssl-dev libffi-dev python-dev -y
RUN apt-get install wget
RUN apt-get install curl
RUN apt-get install unzip
RUN apt-get install -qq ansible -y
WORKDIR /root
RUN wget https://releases.hashicorp.com/terraform/0.9.3/terraform_0.9.3_linux_amd64.zip
RUN unzip $(ls | grep terraform)
RUN rm *.zip
RUN mv terraform /usr/bin/
RUN wget https://releases.hashicorp.com/packer/1.0.0/packer_1.0.0_linux_amd64.zip
RUN unzip $(ls | grep packer)
RUN rm *.zip
RUN mv packer /usr/bin/
RUN useradd --create-home --shell /bin/bash kenobi
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | tee /etc/apt/sources.list.d/azure-cli.list
RUN apt-key adv --keyserver packages.microsoft.com --recv-keys 417A0893
RUN apt-get install apt-transport-https
RUN apt-get update && apt-get install azure-cli
USER kenobi
WORKDIR /home/kenobi