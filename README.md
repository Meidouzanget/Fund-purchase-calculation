# Fund-purchase-calculation


### 通过excel插入vbs代码自动计算购买金额

这个项目的起初只是一个表格，方便笔者统计定投记录，插入一些函数做简单的加减，购买金额的部分还是手动计算；
后来因为懒得每次都按计算器，所以写了代码，因为excel自带函数不支持复杂的多层调用

所谓为了节省按计算机的几十秒，花费几十小时写代码......这一切都值得吗（VBS这种上古语言的资料真的很难找）
```
-- Someone wrote several hours' worth of automated code because they wanted to save a dozen seconds instead of using a calculator.
-- Oh, that's handy. Here's a question... Why?
-- Because we can.
```
后来也有和一些软件的智能定投软件作对比，计算方式来说都差不多，无非是上涨少买，下跌多买。不过他们相对保守，只能选择以200日线或500日线为基准计算，不能自定义选择。如果你想要更激进的投资策略，不妨试试表格，只需要手动填入收盘位置即可自动计算


### 使用方法

1.首先要在excel中启用开发者工具。

打开 新计划3.0.xlsm ,点击 文件> 选项
![6](https://user-images.githubusercontent.com/59044398/166092236-df1de076-f7fe-4e17-9656-5da7d3a38464.PNG)

2.选择 开发者工具>宏的安全性

![5](https://user-images.githubusercontent.com/59044398/166092205-8a51c37a-1a1d-4076-a397-947854397031.PNG)

![捕获](https://user-images.githubusercontent.com/59044398/166092092-4a500a51-693a-4b98-90cd-dd9cc80d9692.PNG)



3.完成设置后就可以开始使用了

4.橙色的单元格为数据输入部分，灰色的是自动计算部分。填入数值后，点击蓝色的Calculate，即可输出自动计算结果

![789](https://user-images.githubusercontent.com/59044398/166094095-0a1f7cd0-f7bc-410a-aacd-3e2f26538802.PNG)


### 名词解释：

1）原始点：初始位置，涨幅根据此数值计算。可以定为第一次买入时指数的位置，激进点也可以设置为指数最高位

2）第一次：因为设计时计划一个月买入两次，所以这是每个月的第一次买入

3）买入金额：自动计算，本次应该要买入多少钱

4）涨幅：自动计算,相比原始点的涨幅

5）份额：自动计算，原始点看作单位1，计算相比单位1现在是多少

6）原始金额：每次投入金额的基准，设置好后无需变动，买入金额在此基础上计算


