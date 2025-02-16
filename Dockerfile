FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y python3-pip ffmpeg curl

# Install yt-dlp
RUN pip install yt-dlp

# Set working directory
WORKDIR /downloads

# Command to keep container running
CMD ["tail", "-f", "/dev/null"]
