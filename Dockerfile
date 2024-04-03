# Use an official Ubuntu image as the base image
FROM ubuntu:20.04

# Update the package index and install the OpenSSH server
# Use an official Ubuntu image as the base image
FROM ubuntu:20.04

# Update the package index and install necessary packages
RUN apt-get update && \
    apt-get install -y locales openssh-server sudo mosh && \
    rm -rf /var/lib/apt/lists/*

# Create the locale.gen file and generate locales
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    apt-get install -y locales && \
    locale-gen

# Set the default locale environment variables
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Create a new user and group for the SSH server
RUN useradd -m -s /bin/bash bilbo
RUN echo "bilbo:mellon" | chpasswd

# Add bilbo user to sudoers
RUN echo "bilbo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Create the privilege separation directory
RUN mkdir -p /run/sshd

# Expose the SSH port (22)
EXPOSE 22   
EXPOSE 60000/udp
EXPOSE 60001/udp

# Start the SSH server on container startup
CMD ["/usr/sbin/sshd", "-D"]

