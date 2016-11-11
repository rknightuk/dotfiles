# Install the cli tools
echo "› Installing laravel dependencies"

COMPOSER_ARGS="--no-interaction --quiet"

composer global require "laravel/installer" $COMPOSER_ARGS
composer global require "laravel/lumen-installer":"dev-master" $COMPOSER_ARGS
composer global require "laravel/spark-installer" $COMPOSER_ARGS

if ! vagrant box list | grep --quiet "laravel\/homestead"
then
    vagrant box add laravel/homestead --provider virtualbox
fi

# Install Homestead
HOMESTEAD_DIR="$HOME/Homestead"

if [ ! -d $HOMESTEAD_DIR ]
then
    git clone https://github.com/laravel/homestead.git $HOMESTEAD_DIR

    (cd $HOMESTEAD_DIR; bash init.sh)
fi
