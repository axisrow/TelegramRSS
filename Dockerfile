FROM xtrime/telegram-api-server:2

WORKDIR /app
COPY . /app
RUN composer install --no-dev --optimize-autoloader

EXPOSE 9504

ENTRYPOINT ["php", "server.php"]
