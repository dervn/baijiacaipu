# 百家菜谱


### allow-unrelated-histories

```
➜  baijiacaipu git:(master) git merge dev
fatal: refusing to merge unrelated histories
➜  baijiacaipu git:(master) git co dev
Switched to branch 'dev'
Your branch is up-to-date with 'origin/dev'.
➜  baijiacaipu git:(dev) git merge master --allow-unrelated-histories
Merge made by the 'recursive' strategy.
 README.md | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 README.md
```


### 删除远程分支

1. 要删除分支不能为默认分支(默认的不一定就是master)
2. 若删除报错，按照1设置后重新执行 git push origin :br_name  
