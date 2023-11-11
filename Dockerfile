FROM node:20.9.0

# https://github.com/Yelp/dumb-init
ADD --chmod=755 https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 /usr/bin/dumb-init

COPY . /app
WORKDIR /app
RUN npm install

USER node
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["npm", "start"]
