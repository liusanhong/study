# flutter安装(macOS)


说明：macOS系统，使用的是Android Studio(简称as)编辑器 

### 1. 下载flutter
[flutter下载地址](https://flutter.dev/docs/development/tools/sdk/releases?tab=macos#macos)
建议下载 Stable 稳定版本

### 2. 解压到你想放置到地方

### 3. 设置环境变量 打开环境变量：

打开环境变量文件，把path复制到环境变量里面。或者用vim操作也行，具体不详细介绍
  
 ```
    open -e .bash_profile export
    PATH=`pwd`/flutter/bin:$PATH
 ```
 pwd为你放置到目录
 
 
### 4. 在appstore里面安装xcode 

   安装最新
   [Android Studio](https://developer.android.com/studio/index.html)
   
### 5. Android Studio 里面安装最新的sdk和BuildTools

现在的是Flutter requires Android SDK 28 and the Android BuildTools 28.0.3

### 5.  Android Studio安装插件 

安装Flutter和Dart这两个插件:

Flutter插件： 支持Flutter开发工作流 (运行、调试、热重载等). Dart插件：
提供代码分析 (输入代码时进行验证、代码补全等). 

步骤: 

```
    启动Android Studio. 
    打开插件首选项 (Preferences>Plugins on macOS, File>Settings>Plugins on Windows & Linux). 选择 Browse
    repositories…, 选择 Flutter 插件并点击 install. 
    重启Android Studio后插件生效.
```

### 6. 运行 flutter doctor(按上面来后，android一般就差不多了)
 
 查看是否需要安装其它依赖项来完成安装
 
### 7. 用as新建一个flutter项目，就可以运行了ios模拟器上了

<a href="./02_使用外部包.md" title="02_使用外部包">下一篇(使用外部包)</a>
