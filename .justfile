# yarn just --list
alias c := commit

nodeVersion := `node -v`

des:
    #!/usr/bin/env node
    const des = 'Cheetah runs fast!'
    console.log(des)
node:
    echo Node Version: {{nodeVersion}}
commit:
    git add -A
    git commit -am "adds by justfile"
    git push