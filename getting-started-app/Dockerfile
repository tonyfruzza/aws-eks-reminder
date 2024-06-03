# syntax=docker/dockerfile:1

FROM node:18-alpine
RUN apk --no-cache add ca-certificates
WORKDIR /app
COPY . .
COPY additional-ca-certs/netskope.crt /usr/share/ca-certificates/
RUN echo netskope.crt >> /etc/ca-certificates.conf && \
    update-ca-certificates
# node-gyp doesn't honor the ca-certificates file, so we need to set NODE_EXTRA_CA_CERTS
ENV NODE_EXTRA_CA_CERTS=/usr/share/ca-certificates/netskope.crt
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
