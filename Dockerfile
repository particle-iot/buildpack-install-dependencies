FROM particle/buildpack-base-node:node_v6.2.1

COPY bin /bin
# Install Particle CLI inside of the container
RUN /bin/run-in-nvm npm config set user 0 \
    && /bin/run-in-nvm npm config set unsafe-perm true \
    && /bin/run-in-nvm npm install -g https://github.com/spark/particle-cli/releases/download/v1.16.0-develop.1/particle-cli-1.16.0-develop.1.tgz

COPY test /test
