FROM php:8.2-fpm

  # Install dependencies
RUN apt-get update && apt-get install -y \
build-essential \
libpng-dev \
libjpeg62-turbo-dev \
libfreetype6-dev \
locales \
zip \
jpegoptim optipng pngquant gifsicle \
vim \
unzip \
git \
curl \
libzip-dev \
libwebp-dev

  # Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

  # Install extensions
RUN docker-php-ext-install pdo_mysql zip exif pcntl
RUN docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp
RUN docker-php-ext-install gd

  # Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

  # Set working directory
WORKDIR /var/www

  # Copy existing application directory contents
COPY . /var/www

  # Copy existing application directory permissions
COPY --chown=www-data:www-data . /var/www

  # Change current user to www
USER www-data

  # Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
