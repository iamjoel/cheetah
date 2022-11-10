# [just](https://just.systems/man/zh/chapter_1.html)
> 为您提供一种保存和运行项目特有命令的便捷方式。

## 常见使用场景
### 场景1: 快速启动项目
如果我们有参与多个项目，启动项目比较麻烦。可能是这样的：
```shell
cd 项目路径
nvm use node版本
npm start
```

其中，可能还要查询项目路径和 node版本。

用 just，可以简化为：
```shell
cd ~
just 项目名
```

执行代码前，要编辑 just 的配方(just 中的运行脚本叫配方)。类似这样：
```shell
项目1:
    #!/usr/bin/env bash
    set -euo pipefail
    cd 项目1的路径
    . ~/.nvm/nvm.sh
    nvm use 16
    npm run dev

项目2:
   ...

项目3:
   ...
```

### 场景2: 增加项目命令的可访问性
查看项目支持哪些命令，我们一般要打开 `package.json`。

如果项目安装了 just。查看项目支持哪些命令，只需执行 `just -l`。

### 场景3: 自动化
以提交代码到 git 为例。编写下面的配方：
```
commit msg:
    git add -A
    git commit -am "{{msg}}"
    git push
```

提交代码只需执行：
```
just commit '提交信息'
```

通过给 just 和 commit 配别名。可以简化为：
```
j c '提交信息'
```

给 just 配别名，用 oh-my-zsh。在 `~/.zshrc` 中加:
```
alias j="just"
```

让其生效，执行 `source ~/.zshrc`。

给 commit 配置别名。在配方中添加：
```
alias c := commit
```

## 使用
1 安装
Node 中使用：
```
npm i -g just-install
```

2 创建配方文件
文件名必须是 `justfile` 或 `.justfile`。

3 编写配方
参考[这里](https://just.systems/man/zh/chapter_21.html)

4 运行
```bash
cd 配方文件
just [参数] 配方名 
```
