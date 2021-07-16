FROM debian:latest
LABEL maintainer="Testes"
RUN apt upgrade && apt update && apt install git python3 python3-pip -y
RUN pip3 install flask
RUN git clone https://github.com/ChromeCrysis/flask_docker.git
WORKDIR /flask_docker
CMD [ "python3", "servidor.py" ]
EXPOSE 5000