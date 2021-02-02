# git 命令学习

   * [git 命令学习](#git-命令学习)
        * [git init 初始化一个项目变成Git可以管理的仓库](#git-init-初始化一个项目变成git可以管理的仓库)
        * [git add 告诉Git，把文件添加到仓库](#git-add-告诉git把文件添加到仓库)
        * [git commit 告诉Git，把文件提交到仓库](#git-commit-告诉git把文件提交到仓库)
        * [git status 命令看看结果](#git-status-命令看看结果)
        * [git diff 看具体修改了什么内容](#git-diff-看具体修改了什么内容)
        * [git log显示从最近到最远的提交日志](#git-log显示从最近到最远的提交日志)
        * [git reset回退版本](#git-reset回退版本)
        * [git reflog 用来记录你的每一次命令](#git-reflog-用来记录你的每一次命令)
        * [git checkout -- readme.txt把readme.txt文件在工作区的修改全部撤销](#git-checkout----readmetxt把readmetxt文件在工作区的修改全部撤销)
        * [git reset HEAD  可以把暂存区的修改撤销掉（unstage），重新放回工作区](#git-reset-head--可以把暂存区的修改撤销掉unstage重新放回工作区)
        * [git rm用于删除一个文件。如果一个文件已经被提交到版本库，那么你永远不用担心误删](#git-rm用于删除一个文件如果一个文件已经被提交到版本库那么你永远不用担心误删)
        * [git remote add origin 关联一个远程库 origin远程名字](#git-remote-add-origin-关联一个远程库-origin远程名字)
        * [git push -u origin master -u选项指定一个默认主机  origin远程名字 master分支](#git-push--u-origin-master--u选项指定一个默认主机--origin远程名字-master分支)
        * [git branch 查看分支](#git-branch-查看分支)
        * [git checkout -b  创建 切换分支](#git-checkout--b--创建切换分支)
        * [git merge   git merge命令用于合并指定分支到当前分支](#git-merge---git-merge命令用于合并指定分支到当前分支)
        * [git branch -d  删除分支 -D强制删除](#git-branch--d--删除分支--d强制删除)
        * [git log --graph 分支合并图](#git-log---graph-分支合并图)
        * [git merge --no-ff -m "merge with no-ff" dev](#git-merge---no-ff--m-merge-with-no-ff-dev)
        * [git stash 把当前工作现场“储藏”起来](#git-stash-把当前工作现场储藏起来)
        * [git stash list 查看存储列表](#git-stash-list-查看存储列表)
        * [git stash apply 恢复存储，但是恢复后，stash内容并不删除](#git-stash-apply-恢复存储但是恢复后stash内容并不删除)
        * [git stash drop 删除存储](#git-stash-drop-删除存储)
        * [git stash pop 恢复的同时把stash内容也删了](#git-stash-pop-恢复的同时把stash内容也删了)
        * [git cherry-pick  合并某次提交到当前分支](#git-cherry-pick--合并某次提交到当前分支)
        * [git remote -v 查看远程库的信息 -v显示更详细的信息](#git-remote--v-查看远程库的信息--v显示更详细的信息)
        * [git checkout -b branch-name origin/branch-name 在本地创建和远程分支对应的分支](#git-checkout--b-branch-name-originbranch-name-在本地创建和远程分支对应的分支)
        * [git branch --set-upstream branch-name origin/branch-name 建立本地分支和远程分支的关联](#git-branch---set-upstream-branch-name-originbranch-name-建立本地分支和远程分支的关联)
        * [git pull 从远程拉取](#git-pull-从远程拉取)
        * [git push origin branch-name 从本地推送分支](#git-push-origin-branch-name-从本地推送分支)
        * [git rebase 操作可以把本地未push的分叉提交历史整理成直线](#git-rebase-操作可以把本地未push的分叉提交历史整理成直线)
        * [git tag  当前分支用于新建一个标签](#git-tag--当前分支用于新建一个标签)
        * [git tag -a  -m "blablabla..."  创建带有说明的标签，用-a指定标签名，-m指定说明文字](#git-tag--a---m-blablabla--创建带有说明的标签用-a指定标签名-m指定说明文字)
        * [git tag 可以查看所有标签](#git-tag-可以查看所有标签)
        * [git tag -d  可以删除一个本地标签](#git-tag--d--可以删除一个本地标签)
        * [git push origin 可以推送一个本地标签](#git-push-origin-可以推送一个本地标签)
        * [git push origin --tags可以推送全部未推送过的本地标签](#git-push-origin---tags可以推送全部未推送过的本地标签)
        * [git push origin :refs/tags/可以删除一个远程标签](#git-push-origin-refstags可以删除一个远程标签)
        * [git check-ignore -v App.class坚持app在ignore 哪行进行了忽略](#git-check-ignore--v-appclass坚持app在ignore-哪行进行了忽略)
        * [git config --global alias.st status 别名缩写，用st代替 status](#git-config---global-aliasst-status-别名缩写用st代替-status)
        * [删除别名配置](#删除别名配置)
        * [搭建远程git服务器](#搭建远程git服务器)
        * [git学习网站](#git学习网站)
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
如果嫌输出信息太多，看得眼花缭乱的，可以试试加上--pretty=oneline 缩写commit

```
git log --pretty=oneline --abbrev-commit
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

#### git remote add origin 关联一个远程库 origin远程名字

#### git push -u origin master -u选项指定一个默认主机  origin远程名字 master分支
#### git push -f origin master  origin远程仓库名，master分支名，-f为force，意为：强行、强制。

这行命令的意思就是强制用本地的代码去覆盖掉远程仓库的代码，敲git push 
--help可查看官方的解释（英文的）。

请谨慎使用！请谨慎使用！请谨慎使用！

#### git branch 查看分支

#### git checkout -b <name> 创建+切换分支
相当于以下两条命令 

```
$ git branch <name>
$ git checkout <name>
```

#### git merge <name>  git merge命令用于合并指定分支到当前分支

#### git branch -d <name> 删除<name>分支 -D强制删除

#### git log --graph 分支合并图

#### git merge --no-ff -m "merge with no-ff" dev

 合并分支时，如果可能，Git会用Fastforward模式，但这种模式下，删除分支后，会丢掉分支信息.
 
 --no-ff:
 
 强制禁用Fastforward模式，Git就会在merge时生成一个新的commit加上-m参数，把commit描述写进去
 ```
在实际开发中，我们应该按照几个基本原则进行分支管理：

首先，master分支应该是非常稳定的，也就是仅用来发布新版本，平时不能在上面干活；

那在哪干活呢？干活都在dev分支上，也就是说，dev分支是不稳定的，到某个时候，比如1.0版本发布时，再把dev分支合并到master上，在master分支发布1.0版本；

你和你的小伙伴们每个人都在dev分支上干活，每个人都有自己的分支，时不时地往dev分支上合并就可以了。
```

#### git stash 把当前工作现场“储藏”起来

#### git stash list 查看存储列表

#### git stash apply 恢复存储，但是恢复后，stash内容并不删除

#### git stash drop 删除存储

#### git stash pop 恢复的同时把stash内容也删了

#### git cherry-pick <commit> 合并某次提交到当前分支
例如： git cherry-pick 4c805e2


#### git remote -v 查看远程库的信息 -v显示更详细的信息

#### git checkout -b branch-name origin/branch-name 在本地创建和远程分支对应的分支

#### git branch --set-upstream branch-name origin/branch-name 建立本地分支和远程分支的关联

#### git pull 从远程拉取

#### git push origin branch-name 从本地推送分支

#### git rebase 操作可以把本地未push的分叉提交历史整理成直线
把分叉的提交历史“整理”成一条直线，看上去更直观。缺点是本地的分叉提交已经被修改过了


#### git tag <tagname> 当前分支用于新建一个标签

#### git tag -a <tagname> -m "blablabla..."  创建带有说明的标签，用-a指定标签名，-m指定说明文字

#### git tag 可以查看所有标签
 
#### git tag -d <tagname> 可以删除一个本地标签

#### git show <tagname>  查看某个标签详情

#### git checkout <tagname> 切换到某个标签

#### git push origin <tagname>可以推送一个本地标签

#### git push origin --tags可以推送全部未推送过的本地标签

#### git push origin :refs/tags/<tagname>可以删除一个远程标签
要先删除本地标签，然后用推送的方式，删除远程标签

#### git check-ignore -v App.class坚持app在ignore 哪行进行了忽略


#### git config --global alias.st status 别名缩写，用st代替 status

#### git update-index --assume-unchanged /path/to/file       #忽略跟踪

#### git update-index --no-assume-unchanged /path/to/file  #恢复跟踪

```
$ git config --global alias.co checkout
$ git config --global alias.ci commit
$ git config --global alias.br branch
git config --global alias.unstage 'reset HEAD' //重新放回工作区
git config --global alias.last 'log -1' //显示最后一次提交信息
<!--配置log-->
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

```

#### 删除别名配置
每个仓库的Git配置文件都放在.git/config
cat .git/config 
别名就在[alias]后面，要删除别名，直接把对应的行删掉即可。

当前用户的Git配置文件放在用户主目录下的一个隐藏文件.gitconfig中

#### git update-index

提交代码时，忽略某一个文件不提交，即某个文件不被版本控制，例如config.propertites:

git update-index --assume-unchanged config.propertites 

恢复被忽略的文件重新被版本控制:

git update-index --no-assume-unchanged config.propertites

#### 设置git push和pull的默认远程分支
git branch --set-upstream-to=origin/master master

#### 搭建远程git服务器
[https://www.liaoxuefeng.com/wiki/896043488029600/899998870925664](https://www.liaoxuefeng.com/wiki/896043488029600/899998870925664)

#### git学习网站

[Git Cheat Sheet](https://gitee.com/liaoxuefeng/learn-java/raw/master/teach/git-cheatsheet.pdf)

[git 官方网站](https://git-scm.com/)

[廖雪峰大神写的git教程](https://www.liaoxuefeng.com/wiki/896043488029600)

[易百教程](https://www.yiibai.com/git/git_submodule.html)