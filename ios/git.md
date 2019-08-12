# git 命令学习

#### git init 初始化一个项目变成Git可以管理的仓库

#### git add 告诉Git，把文件添加到仓库

#### git commit 告诉Git，把文件提交到仓库 

```
git commit -m "后面输入的是本次提交的说明"
```

#### git status 命令看看结果

#### git diff 看具体修改了什么内容
```
git diff HEAD readme.txt
```

#### git log显示从最近到最远的提交日志 
如果嫌输出信息太多，看得眼花缭乱的，可以试试加上--pretty=oneline参数

```
git log --pretty=oneline
```

在Git中，用HEAD表示当前版本，也就是最新的提交1094adb...（注意我的提交ID和你的肯定不一样），
上一个版本就是HEAD^，上上一个版本就是HEAD^^，当然往上100个版本写100个^比较容易数不过来，所以写成HEAD~100

#### git reset回退版本
```
git reset --hard HEAD^/1094a //上一个版本或者版本号
```

#### git reflog 用来记录你的每一次命令

#### git checkout -- readme.txt把readme.txt文件在工作区的修改全部撤销
这里有两种情况：

一种是readme.txt自修改后还没有被放到暂存区，现在，撤销修改就回到和版本库一模一样的状态；

一种是readme.txt已经添加到暂存区后，又作了修改，现在，撤销修改就回到添加到暂存区后的状态。

#### git reset HEAD <file> 可以把暂存区的修改撤销掉（unstage），重新放回工作区

#### git rm用于删除一个文件。如果一个文件已经被提交到版本库，那么你永远不用担心误删




[参考廖雪峰写的git教程](https://www.liaoxuefeng.com/wiki/896043488029600)