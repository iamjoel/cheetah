# List available recipes
default:
    just -l --unsorted

# Project describe
des:
    #!/usr/bin/env node
    const des = 'Cheetah runs fast!'
    console.log(des)

# The doc of Using just
use:
    cat ./tools/content/developer/just/README.md

# Commit Code
commit msg:
    git add -A
    git commit -am "{{msg}}"
    git push

# Examples: just "feat: xxx" c
alias c := commit
