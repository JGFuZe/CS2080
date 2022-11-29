# Build the image on top of the ubuntu image
FROM ubuntu

# Install zsh
RUN apt-get update && apt install -y zsh curl
RUN curl -fsSL https://coder.com/install.sh | sh

# Install VS Code
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Set the app as the containers default application
CMD [ "code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none" ]
