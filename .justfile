# yarn just --list


nodeVersion := `node -v`
msg := "default adds by justfile"

default:
    just --list

des:
    #!/usr/bin/env node
    const des = 'Cheetah runs fast!'
    console.log(des)
node:
    echo Node Version: {{nodeVersion}}

# Commit Code
commit:
    git add -A
    git commit -am "{{msg}}"
    git push

# Examples: just msg="feat: xxx" c
alias c := commit

s:
    git status