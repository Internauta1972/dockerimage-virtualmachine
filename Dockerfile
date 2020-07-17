FROM ubuntu
USER root
RUN apt-get update && apt-get -y install
RUN apt-get update && \
    apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    apt-get update && \
    add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \  
    apt-get install -y docker-ce docker-ce-cli containerd.io
CMD ["service", "docker", "start"]


