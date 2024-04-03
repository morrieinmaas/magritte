# Use an official Ubuntu image as the base image
FROM ubuntu:20.04

# Update the package index and install the OpenSSH server
RUN apt-get update && apt-get install -y openssh-server sudo mosh

# Create a new user and group for the SSH server
RUN useradd -m -s /bin/bash bilbo
RUN echo "bilbo:mellon" | chpasswd

# Add bilbo user to sudoers
RUN echo "bilbo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Create the privilege separation directory
RUN mkdir -p /run/sshd

# Expose the SSH port (22)
EXPOSE 22

# Start the SSH server on container startup
CMD ["/usr/sbin/sshd", "-D"]

