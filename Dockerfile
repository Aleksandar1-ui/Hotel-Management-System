FROM php:8.3.10

# Install dependencies
RUN apt-get update -y && \
    apt-get install -y openssl zip unzip git default-mysql-client

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install PHP extensions for MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Confirm mbstring is installed
RUN php -m | grep mbstring

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install Composer dependencies
RUN composer install

# Start Laravel server
CMD php artisan serve --host=0.0.0.0 --port=8000

# Expose port 8000
EXPOSE 8000
