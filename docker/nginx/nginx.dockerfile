FROM nginx:stable-alpine

# Install Bash and Nano.
RUN apk update && apk add bash nano

# Copy nginx conf to container.
ADD ./config/default.conf /etc/nginx/conf.d/default.conf