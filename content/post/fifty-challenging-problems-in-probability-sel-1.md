+++
author = ""
categories = ["概率", "试题"]
date = "2013-05-28T22:24:00+08:00"
description = ""
highlight = false
highlight_languages = []
tags = ["五十六道概率题（Fifty Challenging Problems in Probability）"]
title = "五十六道概率题（Fifty Challenging Problems in Probability）精选（一）"

+++

## 4. 不到黄河心不死 Trials until First Success

On the average, how many times must a die be thrown until one gets a 6?

> 解一：
>
> $m=p+2qp+3q^2p+\cdots+nq^{n-1}p+\cdots$
>
> $qm=qp+2q^2p+3q^3p+\cdots+nq^np+\cdots$
>
> $m-qm=p+pq+pq^2+\cdots+pq^n+\cdots$$=1$
>
>
> 解二：
>
> $m=p+q(m+1)$
>
> ------
> Answer: <font color="#f5f7fa">6</font>



## 9. 双骰 Craps

The game of craps, played with two dice, is one of America's fastest and most popular gambling games. Calculating the odds associated with it is an instructive exercise.

The rules are these. Only totals for the two dice count. The player throws the dice and wins at once if the total for the first throw is 7 or 11, loses at once if it is 2, 3, or 12. Any other throw is called his "point."(The throws have catchy names: for example, a total of 2 is Snake eyes, of 8, Eighter from Decatur, of 12, Boxcars. When an even point is made by throwing a pair, it is made "the hard way.") If the first throw is a point, the player throws the dice repeatedly until he either wins by throwing his point again or loses by throwing 7. What is the player's chance to win?


   | 1 | 2 | 3 | 4| 5 | 6
  ---|---|---|---|---|---|---
**1**| 2 | 3 | 4 | 5 | 6 | 7
**2**| 3 | 4 | 5 | 6 | 7 | 8
**3**| 4 | 5 | 6 | 7 | 8 | 9
**4**| 5 | 6 | 7 | 8 | 9 | 10
**5**| 6 | 7 | 8 | 9 | 10| 11
**6**| 7 | 8 | 9 | 10| 11| 12


> 技巧在于求 “point” 获胜概率时，可以直接根据样本空间进行运算，而无需进行无穷级数的计算
>
> 比如，若 4 为 “point”，则有 3 种方式获胜，6 种方式落败，则获胜概率为 `$3/(3+6)=1/3$`
>
> 若用无穷级数
>
> 设$P$为掷出 “point” 的概率，$Q$ 为掷出7的概率，$R$ 为需要重掷的概率，则
>
> $P+PR+PR^2+\cdots$$=P/(1-R)$$=P/(P+Q)$
>
> 和样本空间法一样
>
> -----
> Answer: <font color="#f5f7fa">0.49293</font>



## 14. 集券 Collecting Coupons

Coupons in cereal boxes are numbered 1 to 5, and a set of one of each is required for a prize. With one coupon per box, how many boxes on the average are required to make a complete set?

> 运用[第 4 题](#4-不到黄河心不死-trials-until-first-success)的结论
>
> 开到第二张新优惠券的期望次数为 5/4，开到第三张新优惠券的期望次数为 5/3，依次类推
>
> -----
> Answer: <font color="#f5f7fa">11.42</font>



## 15. 剧院排座 The Theater Row

Eight eligible bachelors and seven beautiful models happen randomly to have purchased single seats in the same 15-seat row of a theater. On the average, how many pairs of adjacent seats are ticketed for marriageable couples?

> 无节操的话 14 个无误
>
> ![贱](/img/mean_face.jpg)
>
> 主要是考察期望的线性性质
>
> `$E[X+Y]=\sum\limits_{i,j}(x_i+y_j)p_{ij}$`
>
> `$=\sum\limits_{i}\sum\limits_{j}x_ip_{ij}+\sum\limits_{j}\sum\limits_{i}y_jp_{ij}$`
>
> `$=\sum\limits_{i}x_ip_i+\sum\limits_{j}y_jp_j$`
>
> $=E[X]+E[Y]$
>
> 无视独立关系
>
> -----
> Answer: $\color{#f5f7fa}{7\frac{7}{15}}$



## 17. 双生骑士 Twin Knights

(a) Suppose King Arthur holds a jousting tournament where the jousts are in pairs as in a tennis tournament. See Problem 16 for tournament ladder. The 8 knights in the tournament are evenly matched, and they include the twin knights Balin and Balan.(According to Arthurian legend, they were so evenly matched that on another occasion they slew each other.) What is the chance that the twins meet in a match during the tournament?

![Tennis tournament ladder of 8](/img/tennis_tourament_ladder_of_8.png)

(b) Replace 8 by $2^n$ in the above problem. Now what is the chance that they meet?

> 用归纳法
>
> $N=2$ 时，$P(N=2^1)=1$
>
> $N=4$ 时，`$P(N=2^2)=1/2$`
>
> $N=8$ 时，`$P(N=2^3)=1/4$`
>
> $N=2^n$ 时，
>
> $P(N=2^n)=\dfrac{2^{n-1}-1}{2^n-1}P(N=2^{n-1})$$+\dfrac{2^n-2^{n-1}}{2^n-1}\times 0.5^{2n-2}$
>
> -----
> Answer: `$\color{#f5f7fa}{P(N=2^n)=1/2^{n-1}}$`



## 20. 三角决斗 The Three-Cornered Duel

A, B, and C are to fight a three-cornered pistol duel. All know that A's chance of hitting his target is 0.3, C's is 0.5, and B never misses. They are to fire at their choice of target in succession in the order A, B, C, cyclically (but a hit man loses further turns and is no longer shot at) until only one man is left unhit. What should A's strategy be?

> 首先，A 不能先射击 C，因为 C 要是被击中，A 也无处可逃。
>
> 下面分析先射击 B 的情况
>
> 0.3 的可能是击中
>
> 　　此时生还概率为 $0.5\times 0.3+0.5^2\times0.7\times0.3$$+0.5^3\times0.7^2\times0.3+\cdots$$=\dfrac{3}{13}$
>
> 0.7 的可能是未击中，那么 B 会先干掉 C，然后 A 只有一发机会干掉B
>
> 　　此时生还概率为 $0.3$
>
> 注意到 $\dfrac{3}{13}<0.3$
>
> 所以...
>
> -----
> Answer: <font color="#f5f7fa">先放空枪, 等着与B拼命</font>
>
> -----
> 补充思考
>
> 但是上面的射击顺序似乎有些不公平，倘若 C 是神枪手而 B 是半吊子，情况又如何呢？
>
> 同样 A 不能先射 B
>
> 分析先射 C 的情况
>
> 0.3 的可能击中
>
> 　　此时生还概率为 $0.5\times 0.3+0.5^2\times0.7\times0.3$$+0.5^3\times0.7^2\times0.3+\cdots$$=\dfrac{3}{13}$
>
> 0.7 的可能未击中，之后 B 必然选择射击 C，于是
>
> 　　0.5 的可能击中神枪手
>
> 　　　　此时生还概率为 $0.3+0.7\times0.5\times0.3$$+0.7^2\times0.5^2\times0.3+\cdots$$=\dfrac{6}{13}$
>
> 　　0.5 的可能未击中神枪手，神枪手还是会先干掉半吊子，A 只有一次机会干掉神枪手
>
> 　　　　此时生还概率为 $0.3$
>
> 同样注意到 $\dfrac{3}{13}<0.5\times(\dfrac{6}{13}+0.3)$，因此 A 的策略不变



## 21. 是否放回取样？ Should You Sample with or without Replacement?

Two urns contain red and black balls, all alike except for color. Urn A has 2 reds and 1 black, and Urn B has 101 reds and 100 blacks. An urn is chosen at random, and you win a prize if you correctly name the urn on the basis of the evidence of two balls drawn from it. After the first ball is drawn and its color reported, you can decide whether or not the ball shall be replaced before the second drawing. How do you order the second drawing, and how do you decide on the urn?

> 若第一次抽到红球，之后黑红的抽中率会相等
>
> -----
> Answer: <font color="#f5f7fa">2 reds, black then red->A; otherwise B</font>
