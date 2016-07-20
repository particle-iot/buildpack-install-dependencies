FROM particle/buildpack-base-node:node_v6.2.1

COPY bin /bin
# Install Particle CLI inside of the container
RUN /bin/run-in-nvm npm config set user 0 \
    && /bin/run-in-nvm npm config set unsafe-perm true \
    && /bin/run-in-nvm npm install -g particle-cli@1.15.0

COPY test /test
