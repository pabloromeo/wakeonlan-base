FROM debian:stable-slim

# Update package lists, install the specified packages, and clean up in one step
RUN apt-get update && apt-get install -y \
    wakeonlan \
    inetutils-ping \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
