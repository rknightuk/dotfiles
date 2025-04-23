# Install the cli tools
echo "› Installing laravel dependencies"

COMPOSER_ARGS="--no-interaction --quiet"

composer global require "laravel/installer" $COMPOSER_ARGS