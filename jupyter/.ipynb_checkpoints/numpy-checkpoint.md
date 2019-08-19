# numpy



### Scipy库简介
Scipy库是基于Python生态的一款开源数值计算、科学与工程应用的 开源软件，主要包括NumPy、Scipy、pandas、matplotlib等等

[官方文档:https://scipy.org/](https://scipy.org/)

### numPy、Scipy、pandas、matplotlib简介

#### numpy——基础
以矩阵为基础的数学计算模块，纯数学存储和处理大型矩阵。 这个是很基 础的扩展，其余的扩展都是以此为基础。

#### scipy——数值计算库
在numPy库的基础上增加了众多的数学、科学以及工程计算中常用的库 函数。 方便、易于使用、专为科学和工程设计的Python工具包.它包括统计,优化,整合,线性代 数模块,傅里叶变换,信号和图像处理,常微分方程求解器等等。

#### pandas——数据分析
基于numPy 的一种工具，为了解决数据分析任务而创建的.Pandas 纳 入了大量库和一些标准的数据模型，提供了高效地操作大型数据集所需的工具。

#### matplotlib——绘图
对于图像美化方面比较完可以自善，定义线条的颜色和式样，可以在一 张绘图纸上绘制多张小图，也可在一张图上绘制多条线，可以很方便的对数据进行可视化分析。

### numpy

[官网:http://www.numpy.org/](http://www.numpy.org/)

[官方文档:https://docs.scipy.org/doc/numpy/user/index.html](https://docs.scipy.org/doc/numpy/user/index.html)

#### numpy 主要包括
- 一个具有矢量算术运算和复杂广播能力的快速且节省空间的多维数组，称为 ndarray(N-dimensional array object)
- 用于对整组数据进行快速运算的标准数学函数:ufunc(universal function object)
- 实用的线性代数、傅里叶变换和随机数生成函数。
- NumPy和稀疏矩阵的运算包Scipy配合使用更加方便。

#### ndarray

- NumPy的数组类被称作ndarray。通常被称作数组。注意numpy.array和标准Python库类array.array并不相同，后者只处理一维数组和提供少量功能。
- 一种由相同类型的元素组成的多维数组，元素数量是事先给定好的 
- 元素的数据类型由dtype(data-type)对象来指定，每个ndarray只有一种dtype类型
- ndarray的大小固定，创建好数组后数组大小是不会再发生改变的

#### ndarray创建
<a href="./01_ndarray的创建.ipynb"
title="flutter">具体可以查看01_ndarray代码</a>

主要创建方法：
- array函数:接收一个普通的python序列，并将其转换为ndarray 
- zeros函数:创建指定长度或者形状的全零数组。 
- ones函数:创建指定长度或者形状的全1数组。
- empty函数:创建一个没有任何具体值的数组(准确地说是创建一些未初始化
  的ndarray多维数组)

其它创建：
- arange函数: 类似python的range函数，通过指定开始值、终值和步长来
  创建一个一维数组，注意:最终创建的数组不包含终值
- linspace函数:通过指定开始值、终值和元素个数来创建一个一维数组， 数组的数据元素符合等差数列，可以通过endpoint关键字指定是否包含终 值，默认包含终值
- logspace函数:和linspace函数类似，不过创建的是等比数列数组
- 使用随机数填充数组，即使用numpy.random中的random()函数来创建 0-1之间的随机元素，数组包含的元素数量由参数决定




