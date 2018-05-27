# Modern_Cryptography_Report

新学期的内容，采用Git + GitHub远程仓库来解决版本控制问题，所以不再出现versionX的情况。特此说明。

## 1. 建库说明

该课程与中国全国数学密码学挑战赛第3届时间重叠，关于挑战赛的有关内容详见这个Git Repo：[第三届数学密码挑战赛初赛题目](https://github.com/LittleNewton/Math_and_Cryptography_Contest_3th)

本次课程的实验平台选定开源软件SageMath，自从2017年12月更新8.0版本之后，该平台首次支持Windows操作系统。中国的用户可以从[SageMath官网](http://www.sagemath.org/)进行下载。具体教程同样参见官网。

## 2. 每个实验的Abstract说明

### 2.1 编程平台实验（Finished）

#### 2.1.1 文档要求

1.	Sage数学软件的使用，网络在线使用或下载安装使用。
2.	选做读Java的BigInteger （java.math.BigInteger）和BigDecimal（java.math.BigDecimal）文档，分析两个类库的构成。自己构造例子熟悉BigInteger和BigDecimal中各个方法的使用
3.	在互联网查阅其它与密码学有关的编程资源，列出这些资源的网址，并予以简单介绍。

#### 2.1.2 我的说明

- SageMath与Python 2兼容，所以有Python 2开发经验就可以通过简单的学习驾驭SageMath.
- 建议把所有实验平台换到虚拟机上，因为宿主机很有可能因为多种原因而失去生产力，重新配置之后，无法与之前的文件兼容。比如删除了Windows之后的Cygwin就很难清理.
- 平台采用Ubuntu 17.10 64位操作系统，Sage的团队也已经在2017年底发布了8.1的Windows版本，提供.exe文件进行安装，原生体验相当良好，自带的Shell非常友好。目前来看，最新的SageMath版本是8.2，发布于2018-05-05.

### 2.2 古典加密技术实验（Finished）

#### 2.2.1 文档要求

1. 编程实现古典密码学的主要体制和算法
2. 编程实现古典密码学的主要分析方法。

#### 2.2.2 我的说明

- 以凯撒密码为实例进行实验，语言为Python 2的SageMath

### 2.3 离散对数问题实验（Finished）

#### 2.3.1 文档要求

**熟悉离散对数问题（DLP）及其有关的密码体制。**

1.	编程实现与离散对数问题（DLP）有关的求解算法；
2.	编程实现Deffie-Hellman体制；
3.	编程实现EIGamal体制。

#### 2.3.2 我的说明

DLP的求解算法可以尝试数域筛法。

### 2.4 因子分解问题与RSA算法（Finished）

了解大整数的因子分解困难，并实现基于这个困难性的RSA算法。

### 2.6 椭圆曲线离散对数问题实验
