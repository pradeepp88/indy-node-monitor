FROM ubuntu:latest
RUN apt update
RUN apt install -y git
RUN git clone https://github.com/pradeepp88/indy-node-monitor.git
RUN git checkout origin/monitoring-stack
RUN apt-get install yq
RUN ./manage start
