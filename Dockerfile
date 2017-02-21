FROM particle/buildpack-base-node:0.1.1-node_v6.2.1

# Install Particle CLI inside of the container
RUN npm config set user 0 \
    && npm config set unsafe-perm true \
    && npm install -g particle-cli@1.19.4 \
    && ln -s /root/.nvm/current/bin/particle /usr/local/bin

COPY bin /bin
COPY test /test
