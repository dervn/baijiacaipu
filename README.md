# 百家菜谱



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
