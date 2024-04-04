FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y locales openssh-server sudo mosh && \
    rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    apt-get install -y locales && \
    locale-gen

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN useradd -m -s /bin/bash bilbo
RUN echo "bilbo:mellon" | chpasswd

RUN echo "bilbo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir -p /run/sshd

EXPOSE 22   
EXPOSE 60000/udp
EXPOSE 60001/udp

CMD ["/usr/sbin/sshd", "-D"]

