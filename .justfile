# yarn just --list
alias c := commit

nodeVersion := `node -v`
commitMsg := "default adds by justfile"

des:
    #!/usr/bin/env node
    const des = 'Cheetah runs fast!'
    console.log(des)
node:
    echo Node Version: {{nodeVersion}}

commit:
    git add -A
    git commit -am "{{commitMsg}}"
    git push

s:
    git status