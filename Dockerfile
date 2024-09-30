FROM php:8.1-cli

WORKDIR /app
COPY . /app
RUN mkdir -p /upload && chmod -R 755 /upload

EXPOSE 8000
CMD ["php", "-S", "0.0.0.0:8000", "-t", "."]
