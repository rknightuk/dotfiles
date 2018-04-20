alias reload!='. ~/.zshrc'
eval "$(thefuck --alias)"
alias cl='clear'

# Laravel
alias hs="homestead"
alias a="php artisan"

# PHP
alias phpunit="./vendor/bin/phpunit"
alias phpspec="./vendor/bin/phpspec"

# JS
alias gulp="./node_modules/gulp/bin/gulp.js"
alias karma="./node_modules/karma/bin/karma"
alias webpack="./node_modules/webpack/bin/webpack.js"
alias grunt="./node_modules/.bin/grunt"
alias flow="./node_modules/.bin/flow"
alias flow-typed="./node_modules/.bin/flow-typed"
alias jest="./node_modules/.bin/jest"
alias prettier="./node_modules/.bin/prettier"
alias eslint="./node_modules/.bin/eslint"
alias tailwind="./node_modules/.bin/tailwind"

# Utils
alias uuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]' | pbcopy && pbpaste && echo"
