FROM particle/buildpack-base-node:0.1.1-node_v6.2.1

# Install Particle CLI inside of the container
RUN npm config set user 0 \
    && npm config set unsafe-perm true \
    && npm install -g https://github.com/spark/particle-cli/releases/download/v2.0.0-libraries.9/particle-cli-2.0.0-libraries.9.tgz \
    && ln -s /root/.nvm/current/bin/particle /usr/local/bin

COPY bin /bin
COPY test /test
