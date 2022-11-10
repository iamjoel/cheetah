default:
    just --list --unsorted

# open url in browser.
j-open url:
    # npm package open-cli
    open-cli {{url}}

# open doc site
j-doc:
    open-cli https://iamjoel.github.io/doc/dist/

# Node Project: pet shop
pet-shop:
    #!/usr/bin/env bash
    echo "Security Dao starting..."
    set -euo pipefail
    cd /Users/joel/project/pet-shop
    . ~/.nvm/nvm.sh
    nvm use 16
    npm run dev

# Open pet shop in vscode
open-pet-shop:
    code /Users/joel/project/pet-shop

# pet shop Offical Site
pet-shop-site:
    #!/usr/bin/env bash
    echo "Meta Security Offical site starting..."
    set -euo pipefail
    cd /Users/joel/project/pet-shop-offical
    reload -b

# open url in browser.
j-open url:
    # npm package open-cli
    open-cli {{url}}

# open doc site
j-doc:
    open-cli https://iamjoel.github.io/doc/dist/