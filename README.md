# Fund-purchase-calculation


### 通过excel插入vbs代码自动计算购买金额

这个项目的起初只是一个表格，方便笔者统计定投记录，插入一些函数做简单的加减，购买金额的部分还是手动计算；
后来因为懒得每次都按计算器，所以写了代码，因为excel自带函数不支持复杂的多层调用

所谓为了节省按计算机的几十秒，花费几十小时写代码......这一切都值得吗（VBS这种上古语言的资料真的很难找）
```
-- Someone wrote several hours' worth of automated code becausethey wanted to save a dozen seconds instead
of using a calculator.
-- Oh, that's handy. Here's a question... Why?
-- Because we can.
```
后来也有和一些软件的智能定投软件作对比，计算方式来说跟表格的线性计算差不多，无非是上涨少买，下跌多买。不过他们相对保守，只能选择以200日线或500日线为基准计算，不能自定义选择。如果你想要更激进的投资策略，不妨试试表格，只需要手动填入收盘位置即可自动计算


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


### 5.0版本有较大的更改
使用函数的方式重新定义投资模型，方便日后进行模型的调整。请参考下图，X轴为下跌幅度，Y轴为购入倍数

(为了符合阅读习惯，函数进行了左右镜像，把X轴理解为负的就行，因为是跌多买多)

![image](https://github.com/Meidouzanget/Fund-purchase-calculation/assets/59044398/553a9da1-31fe-47fe-98a3-566c0ccd4c8b)




#### 线性函数(黑色)

贵的时候少买，便宜的时候多买，标准的金字塔型，线性函数
通用型，无论波动如何都有固定的购买比例，与跌深成正比。
经过实战检验，2023年总收益26%，净利润16%，无脑用这个没有错
回撤40%投入达5倍，回撤50%投入达6倍

#### 二次函数(红色)

贵的时候少少买，便宜的时候大把买，次方函数。
增强型金字塔，次方函数，下跌大于25是大量买进。
波动较少时会买得很少，可用于对抗波动较大高风险股
回撤40%投入达8倍，回撤50%投入达12倍

#### 立方函数(橙色)

平日一般买，便宜的时候疯狂抄底，立方函数。
平头宽底金字塔，下跌大于25时逐渐疯狂。
波动较少时会稳定购买，遇到下跌较大时会重仓，适用于走势稳定的股票。
回撤40%投入达14倍，回撤50%投入达26倍

#### 旧的阶梯买入法(绿色)

#### ！！以上都是设想 ！！

实际情况还要带入历史数据进行实验。像纳指这样下跌波动小的指数，二次函数的买入份额会非常少，如果遇上一年都没大跌的情况年末结算收益会比线性少很多

又比如三次函数在波动小的情况根本无法发挥出疯狂，反而收益跟定额定投差不多，收益也没有线性好。

说到底次方函数这些更像是实验性质，尝试多种可能性。因为是次方买入的关系，不同的股票还需要结合不同的最大回扯做微调，不然下跌太大就没钱买了

市场是多变的，以不变的线性应对多变的走势未尝不是坏事



