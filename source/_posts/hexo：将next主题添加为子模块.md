---
title: hexo：将next主题添加为子模块
date: 2019-05-09 21:31:28
tags: 
 - next
categories:
 - hexo
mathjax: true
---

# hexo：将next主题添加为子模块

<!--more-->

## 一、将next主题fork至远程仓库

## 二、使用 Git submodules 的方式来选择一个主题

```
git submodule add https://github.com/drggboy/hexo-theme-next.git themes/next
```

git 便会将 `hexo-theme-next` 主题作为一个项目子模块 clone 到 themes/next 中. 同时 hexo 项目中会自动生成一个 `.gitmodules` 文件, 这个配置文件中保存了项目 URL 与已经拉取的本地目录之间的映射.

## 三、更改主题文件配置

## 四、提交子模块的更改

（1）进入主题文件夹，将子模块的更改推送至远程仓库

```
git add .
git commit -m '启用mathjax'
git push
```

（2）或者直接在根目录下 push 时通过 `git push --recurse-submodules=check` 命令,  如果任何提交的子模块改动没有推送那么 check 选项会直接使 push 操作失败.

（3）另外也可以使用 `git push --recurse-submodules=on-demand` git 会自动尝试推送变更的子项目.

（4）运行批处理文件 deploy.sh.

