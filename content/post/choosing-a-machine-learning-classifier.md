+++
date = "2013-05-10T21:41:00+08:00"
title = "[译]如何选择机器学习算法"
tags = [ "机器学习" ]
topics = []
+++

译自[Choosing a Machine Learning Classifier](http://blog.echen.me/2011/04/27/choosing-a-machine-learning-classifier/)

如何针对某个分类问题决定使用何种机器学习算法？当然，如果你真心在乎准确率，最好的途径就是测试一大堆各式各样的算法（同时确保在每个算法上也测试不同的参数），最后选择在交叉验证中表现最好的。倘若你只是想针对你的问题寻找一个“足够好”的算法，或者一个起步点，这里给出了一些我觉得这些年用着还不错的常规指南。

> How do you know what machine learning algorithm to choose for your classification problem? Of course, if you really care about accuracy, your best bet is to test out a couple different ones (making sure to try different parameters within each algorithm as well), and select the best one by cross-validation. But if you’re simply looking for a “good enough” algorithm for your problem, or a place to start, here are some general guidelines I’ve found to work well over the years.


### 训练集有多大？
> How large is your training set?

如果是小训练集，高偏差/低方差的分类器（比如朴素贝叶斯）要比低偏差/高方差的分类器（比如k最近邻）具有优势，因为后者容易过拟合。然而随着训练集的增大，低偏差/高方差的分类器将开始具有优势（它们拥有更低的渐近误差），因为高偏差分类器对于提供准确模型不那么给力。

> If your training set is small, high bias/low variance classifiers (e.g., Naive Bayes) have an advantage over low bias/high variance classifiers (e.g., kNN), since the latter will overfit. But low bias/high variance classifiers start to win out as your training set grows (they have lower asymptotic error), since high bias classifiers aren’t powerful enough to provide accurate models.

你也可以把这一点看作生成模型和判别模型的差别。

> You can also think of this as a generative model vs. discriminative model distinction.

### 一些常用算法的优缺点

> Advantages of some particular algorithms

**朴素贝叶斯**: 巨尼玛简单，你只要做些算术就好了。倘若条件独立性假设确实满足，朴素贝叶斯分类器将会比判别模型，譬如逻辑回归收敛得更快，因此你只需要更少的训练数据。就算该假设不成立，朴素贝叶斯分类器在实践中仍然有着不俗的表现。如果你需要的是快速简单并且表现出色，这将是个不错的选择。其主要缺点是它学习不了特征间的交互关系（比方说，它学习不了你虽然喜欢甄子丹和姜文的电影，却讨厌他们共同出演的电影《关云长》的情况）。

> Advantages of Naive Bayes: Super simple, you’re just doing a bunch of counts. If the NB conditional independence assumption actually holds, a Naive Bayes classifier will converge quicker than discriminative models like logistic regression, so you need less training data. And even if the NB assumption doesn’t hold, a NB classifier still often does a great job in practice. A good bet if want something fast and easy that performs pretty well. Its main disadvantage is that it can’t learn interactions between features (e.g., it can’t learn that although you love movies with Brad Pitt and Tom Cruise, you hate movies where they’re together).

**逻辑回归**: 有很多正则化模型的方法，而且你不必像在用朴素贝叶斯那样担心你的特征是否相关。与决策树与支持向量机相比，你还会得到一个不错的概率解释，你甚至可以轻松地利用新数据来更新模型（使用在线梯度下降算法）。如果你需要一个概率架构（比如简单地调节分类阈值，指明不确定性，或者是要得得置信区间），或者你以后想将更多的训练数据快速整合到模型中去，使用它吧。

> Advantages of Logistic Regression: Lots of ways to regularize your model, and you don’t have to worry as much about your features being correlated, like you do in Naive Bayes. You also have a nice probabilistic interpretation, unlike decision trees or SVMs, and you can easily update your model to take in new data (using an online gradient descent method), again unlike decision trees or SVMs. Use it if you want a probabilistic framework (e.g., to easily adjust classification thresholds, to say when you’re unsure, or to get confidence intervals) or if you expect to receive more training data in the future that you want to be able to quickly incorporate into your model.

**决策树**: 易于解释说明（对于某些人来说 —— 我不确定我是否在这其中）。它可以毫无压力地处理特征间的交互关系并且是非参数化的，因此你不必担心异常值或者数据是否线性可分（举个例子，决策树能轻松处理好类别A在某个特征维度x的末端，类别B在中间，然后类别A又出现在特征维度x前端的情况）。它的一个缺点就是不支持在线学习，于是在新样本到来后，决策树需要全部重建。另一个缺点是容易过拟合，但这也就是诸如随机森林（或提升树）之类的集成方法的切入点。另外，随机森林经常是很多分类问题的赢家（通常比支持向量机好上那么一点，我认为），它快速并且可调，同时你无须担心要像支持向量机那样调一大堆参数，所以最近它貌似相当受欢迎。

> Advantages of Decision Trees: Easy to interpret and explain (for some people – I’m not sure I fall into this camp). They easily handle feature interactions and they’re non-parametric, so you don’t have to worry about outliers or whether the data is linearly separable (e.g., decision trees easily take care of cases where you have class A at the low end of some feature x, class B in the mid-range of feature x, and A again at the high end). One disadvantage is that they don’t support online learning, so you have to rebuild your tree when new examples come on. Another disadvantage is that they easily overfit, but that’s where ensemble methods like random forests (or boosted trees) come in. Plus, random forests are often the winner for lots of problems in classification (usually slightly ahead of SVMs, I believe), they’re fast and scalable, and you don’t have to worry about tuning a bunch of parameters like you do with SVMs, so they seem to be quite popular these days.

**支持向量机**: 高准确率，为避免过拟合提供了很好的理论保证，而且就算数据在原特征空间线性不可分，只要给个合适的核函数，它就能运行得很好。在动辄超高维的文本分类问题中特别受欢迎。可惜内存消耗大，难以解释，运行和调参也有些烦人，所以我认为随机森林要开始取而代之了。

> Advantages of SVMs: High accuracy, nice theoretical guarantees regarding overfitting, and with an appropriate kernel they can work well even if you’re data isn’t linearly separable in the base feature space. Especially popular in text classification problems where very high-dimensional spaces are the norm. Memory-intensive, hard to interpret, and kind of annoying to run and tune, though, so I think random forests are starting to steal the crown.

### 然而。。。

> But…

尽管如此，回想一下，好的数据却要优于好的算法，设计优良特征是大有裨益的。假如你有一个超大数据集，那么无论你使用哪种算法可能对分类性能都没太大影响（此时就根据速度和易用性来进行抉择）。

> Recall, though, that better data often beats better algorithms, and designing good features goes a long way. And if you have a huge dataset, then whichever classification algorithm you use might not matter so much in terms of classification performance (so choose your algorithm based on speed or ease of use instead).

再重申一次我上面说过的话，倘若你真心在乎准确率，你一定得尝试多种多样的分类器，并且通过交叉验证选择最优。要么就从Netflix Prize（和Middle Earth）取点经，用集成方法把它们合而用之，妥妥的。

> And to reiterate what I said above, if you really care about accuracy, you should definitely try a bunch of different classifiers and select the best one by cross-validation. Or, to take a lesson from the Netflix Prize (and Middle Earth), just use an ensemble method to choose them all.
