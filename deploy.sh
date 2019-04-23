git add -A
git commit -m "加入脚本"
git push --recurse-submodules=check  #如果任何提交的子模块改动没有推送那么 check 选项会直接使 push 操作失败.
#git push --recurse-submodules=on-demand  git 会自动尝试推送变更的子项目.