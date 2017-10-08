+++
date = "2013-05-13T09:43:45+08:00"
tags = ["搜狗", "校招"]
title = "搜狗2013年校园招聘研发类笔试试题 V.Research类"
categories = ["试题"]
toc = false
+++

#### 49. 两艘船在同一时刻驶离河的两岸，一艘船从A驶往B，另一艘船从B驶往A，其中一艘开的比另一艘快些，因此他们在距离较近的岸5公里处相遇，到达预定地点后，每艘船要停留15分钟。以便乘客上下船，然后他们又返航,这两艘船在距另一岸1公里处重新相遇，请问河宽<font color="white">14</font>公里。

> 首先要确认的是“每艘船要停留15分钟”只是干扰项, 可以直接忽略。

> 设从A开出的船快一些, 河宽为 $d$

> 第一次相遇时AB共走一个河宽, 设耗时为 $t$

> A ---------------------------------><~~~~~~$5$~~~~~ B

> 第二次相遇时AB共走两个河宽, 则耗时 $2t$

> A ~~~~~~~~~~$d-5$~~~~~~~~~<>--------------- B

> A ~$1$~><------------------------------------------ B

> 由上图易知
> $$\frac{(d-5)+1}{2t}=\frac{5}{t}$$
> 则 $d=14$

#### 50.下列哪个不属于常用的文本分类的特征选择算法？( <font color="white">D</font> )

A.卡方检验值  B.互信息  C.信息增益  D.主成分分析

#### 51. N-Gram语言模型可用于查询分类。实际能获取到的查询分类训练数据往往带有一定噪音。以下四种模型和训练数据的选择中，哪种能达到最好的实际使用效果？( <font color="white">C</font> )

A. 二元和三元模型，正负例查询词各2,000，精度100%

B. 四元模型，正负例查询词各10,000，精度85%

C. 一元和二元模型，正负例查询词各20,000，精度80%

D. 二元模型，正负例查询词各5,000，精度95%


> 首先可以排除A、B, 虽然常用的是一元和二元模型，但也不是说三四元不可用，而是AB中给出的数据集相对来说实在是太小了。

> D不如C是因为5000*95%<20000*80%

#### 52. 语言模型的参数估计经常使用MLE(最大似然估计)。面临的—个问题是没有出现的项概率为0，这样会导致语言模型的效果不好。为了解决这个问题,需要使用：( <font color="white">A</font> )

A.平滑  B.去噪  C.随机插值  D.增加白噪音

> 平滑估计公式: `$P(e)=\frac{N_e+f_e}{\sum_{e'\in E}(N_{e'}+f_{e'})}$`

> 简单平滑: $f_e=Constant$

> Expected Likelihood Estimation (ELE): $f_e=0.5$

> 拉普拉斯平滑 Laplace Smoothing: $f_e=1$

> Add-tiny Smoothing: `$f_e=1/\sum_{e'\in E}N_{e'}$`

> [Good-Turing平滑](https://zh.wikipedia.org/wiki/%E5%9B%BE%E7%81%B5%E4%BC%B0%E8%AE%A1)

#### 53. 所有人口中，某癌症的患病率为0.008。对有癌症的病人，医院的化验测试有2%的可能错判其无癌症。对无癌症的病人，有3%的可能错判其有癌症。问：现有一新病人，化验测试表明其有癌症，该病人实际患有癌症的概率是多少？（计算过程四舍五入保留4位小数）( <font color="white">C</font> )

A.0.0078  B.00298  C.0.2074  D.0.98

> 由题知，$P(cancer)=0.008$, $P(\overline{positive}|cancer)=0.02$, $P(positive|\overline{cancer})=0.03$

> `$P(cancer|positive)$` `$=\frac{P(positive|cancer)P(cancer)}{P(positive|cancer)P(cancer)+P(positive|\overline{cancer})P(\overline{cancer})}$``$ \approx\frac{1}{1+\frac{0.0298}{0.0078}}$``$=1/4.821$``$\approx0.2074$`

#### 54. 在大规模的语料中，挖掘词的相关性是一个重要的问题。以下哪一个信息不能用于确定两个词的相关性。( <font color="white">B</font> )

A.互信息  B.最大熵  C.卡方检验  D.最大似然比

#### 55. 下列哪个不属于CRF模型对于HMM和MEMM模型的优势 ( <font color="white">B</font> )

A.特征灵活  B.速度快  C.可容纳较多上下文信息  D.全局最优

#### 56. 下列不是SVM核函数的是：( <font color="white">B</font> )

A.多项式核函数  B.logistic核函数  C.径向基核函数  D.Sigmoid核函数

#### 57. 下列属于无监督学习的是：( <font color="white">A</font> )

A.K-means  B.SVM  C.最大熵  D.CRF

#### 58. 以下哪些方法不可以直接来对文本分类 ( <font color="white">A</font> )

A.K-means  B.决策树  C.支持向量机  D.KNN

#### 59. 解决隐马模型中预测问题的算法是 ( <font color="white">D</font> )

A.前向算法  B.后向算法  C.Baum-Welch算法  D.维特比算法

#### 60. 一个有偏的硬币，抛了100次，出现1次人头，99次字。问用最大似然估计(ML)和最小均方误差(LSE)估计出现人头的概率哪个大 ( <font color="white">C</font> )

A.ML=MSE  B.ML>MSE  C.ML<MSE

> 解一:
>
> `$P(H)_{MLE}=\arg\max\limits_{\hat{\theta}} \hat{\theta}(1-\hat{\theta})^{99} $`
>
> 令$\dfrac{d }{d \hat{\theta}}(1-\hat{\theta})^{99}=(\hat{\theta}-1)^{98}(1-100\hat{\theta})=0$
>
> 则$P(H)_{MLE}=\frac{1}{100}$
>
>
>
> 假设真实值$P(H)=\theta$
>
> 那么`$P(H)_{MMSE}$``$=\arg\min\limits_{\hat{\theta}}  \int_{0}^{1} (\hat{\theta}-\theta)^2 p(\theta|D) d \theta $`
> 又`$P(\theta|D) \sim P(D|\theta)P(\theta)$` 而在没有其他信息的情况下, 先验地认为$\theta$在$[0, 1]$区间上均匀分布  
> 于是
>
> `$P(H)_{MMSE}=\arg\min\limits_{\hat{\theta}}  \int_{0}^{1} (\hat{\theta}-\theta)^2 p(D|\theta) d \theta $`
>
> `$=\arg\min\limits_{\hat{\theta}}  \int_{0}^{1} (\hat{\theta}-\theta)^2 \theta(1-\theta)^{99} d \theta $`
>
> 令$x=1-\theta$, `$P(H)_{MMSE}$``$=\arg\min\limits_{\hat{\theta}}  \int_{0}^{1} (\hat{\theta}+x-1)^2 (1-x)x^{99} d x$`
>
> 用[WolframAlpha](https://www.wolframalpha.com)解得
>
>  `$P(H)_{MMSE}$``$=\arg\min\limits_{\hat{\theta}} (5253 \hat{\theta}^2 - 206 \hat{\theta} + constant)$`
>
> `$P(H)_{MMSE}=\frac{1}{51}>P(H)_{MLE}=\frac{1}{100}$`
>
> 解二:
> 用直觉一点的方式，MLE比较激进，“听风就是雨”，要是没看到人头，就会估计人头的出现概率为0，而MMSE不会。MMSE比较保守，所造成的效果就是总把估计往先验(在此为均匀分布)均值拉一拉，因此MLE估高的MMSE就会估小一点儿，MLE估低MMSE就会估大一点儿。
>

#### 61. a和b两个人每天都会在7点-8点之间到同一个车站乘坐公交车，a坐101路公交车，每5分钟一班【7:00,7:05....】，b坐102路公交车，每10分钟一班【7:03,7:13...】，问a和b碰面的概率是多少？ ( <font color="white">C</font> )

A. 1/8  B. 41/400  C. 143/1200  D. 199/1800  E. 431/3600

>  $\dfrac{a}{b}┗━━━━┳━━┻━━━━━━━┻━━━━┳━━┻━━━━━━━┻┅┅┅┅┅┅┅━━━━━━┻━━━━┳━━┻━━━━━━━┛$
>
>  上图表示7点-8点之间的60分钟区间内, a、b两人可用的乘车时间点(a上b下)
>
>  可以看出每10分钟有一个最小循环, 那么可以先就前10分钟的区间进行分析.
>
>  以b为主体, b的时间可以被各时间点切成三份`$(3_{0-3},2_{3-5},5_{5-10})$`, 那么在这个区间里, 两人相遇的概率是
>
>  `$\dfrac{3}{60}\times\dfrac{3_{0-3}}{60}$``$+\dfrac{2}{60}\times\dfrac{13_{0-13}}{60}$``$+\dfrac{5}{60}\times\dfrac{8_{5-13}}{60}$``$=\dfrac{75}{3600}$`
>
>  需要注意的是后两项"使用了"下一个循环区间的时间, 因此需要单独考虑最后10分钟的相遇概率
>
> `$\dfrac{3}{60}\times\dfrac{3_{50-53}}{60}$``$+\dfrac{2}{60}\times\dfrac{10_{50-60}}{60}$``$+\dfrac{5}{60}\times\dfrac{5_{55-60}}{60}$``$=\dfrac{54}{3600}$`
>
>  汇总的相遇概率为
>
>  $\dfrac{75}{3600}\times 5+\dfrac{54}{3600}=\dfrac{143}{1200}$
>

#### 62. 假设某日是否有雨只和前一日是否有雨相关：今日有雨,则明日有雨的概率是0.7；今日无雨，则明日有雨的概率是0.5。如果周一有雨，求周三也有雨的概率 ( <font color="white">B</font> )

A.0.5  B.0.64  C.0.72  D.0.81

> 转移矩阵为
>
> `$A=\left(\begin{array}{cc}0.7&0.3\\0.5&0.5\end{array}\right)$`
>
> `$P(周三有雨|周一有雨)=\left[ (\begin{array}{cc} 1 & 0 \end{array}) A^2 \right]_{1,1}$``$=\left[ (\begin{array}{cc} 0.7 & 0.3 \end{array}) \left(\begin{array}{cc}0.7&0.3\\0.5&0.5\end{array}\right)\right]_{1,1}$``$=0.64$`
>

#### 63. 在large-scale且sparse的数据分析中，knn的k个最近邻应该如何选择 ( <font color="white">D</font> )

A.随机选择  B.L1-norm最近的  C.L2-norm最近的  D.不用knn
