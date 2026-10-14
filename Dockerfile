FROM particle/buildpack-base:0.5.0

ENV PARTICLE_DISABLE_UPDATE=true

# Install Particle CLI inside of the container
RUN apt update && \
    apt install -y python3 && \
    curl -sL https://particle.io/install-cli | bash && \
    ln -s /root/bin/particle /usr/local/bin/particle && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

COPY bin /bin
COPY test /test
