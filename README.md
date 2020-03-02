[TOC]



## Onecmd

主要是一些对于 iOS 开发日常中的一些命令行命令的简单的封装。



## Installation

```
gem install onecmd
```



## Usage

### onecmd -h

```shell
± onecmd
Usage:

    $ onecmd COMMAND

      a iOS dev tools cmd.

Commands:

    + macosx    for mac os x
    + xcode     for xcode ide
```

### macosx

#### 显示 - 隐藏文件

```shell
onecmd macosx hiden-files
onecmd macosx hiden-files --hide # 同上
```

####  隐藏 - 隐藏文件

```
onecmd macosx hiden-files --no-hide
```

### xcode

#### rm derived data

```
onecmd xcode rm-derived-data
```

