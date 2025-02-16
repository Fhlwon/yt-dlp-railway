FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y python3-pip python3-venv pipx ffmpeg curl

# Ensure pipx is available in PATH
ENV PATH="/root/.local/bin:$PATH"

# Install yt-dlp using pipx
RUN pipx install yt-dlp

# Set working directory
WORKDIR /downloads

# Command to keep container running
CMD ["tail", "-f", "/dev/null"]
