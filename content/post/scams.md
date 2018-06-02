+++
author = ""
date = "2017-12-21T11:43:15+08:00"
description = ""
draft = false
highlight = false
tags = ["骗术"]
title = "骗术"
categories = ["套路"]

+++

欺骗紧随着语言的产生而产生，人类天生就会欺骗，这是比暴力更容易获取也更容易实施的操纵他人的能力，却威力巨大，从进化的角度来看，这种性状因此得以保留并增强[^Why We Lie]。虽然人类第一次欺骗已不可考，但从世界现存最早的兵书《孙子兵法》可以得知，至少在公元前 512 年以前，人类已经懂得有意识地利用欺骗去获得利益。当代社会的欺骗更履见不鲜，小到美颜，大到广告，甚至国家外交，人类对欺骗的应用可谓游刃有余。想知道没有欺骗的世界是什么样？去看看电影《谎言的诞生》吧。而自欺骗诞生后，渐渐有一部分人，专门靠策划和实施欺骗为生，古称骗棍，英文中称为 “con artist”，发展至今，行骗的路数已经五花八门，令人叹为观止，而其核心依然不变：**让目标相信某事，并为此付出代价**。

## 分类
### 简单分类
一个骗局可以按照耗时长短分为 “Long con” 和 “Short con”[^Confidence trick]，按照实施人数分为单刀型和团伙型，按照对目标的选择方式可分为主动选择型、被动选择（“鸟枪法”）型和主被动混合选择型。

这里要特别对被动选择进行说明，相比于 *Hustle* 《飞天大盗》中主角团队对目标的主动选择，被动选择使用广撒网的手段，在个体挖掘上显然不如前者更可控，但是由于大数定律的保证，会造成一些前者无法达到的效果：

* 当初筛触及的目标足够多时，因为大数定律，有些事情将趋近于必然发生，收获到的进一步潜在目标将更有挖掘价值。
	* 其虚构的场景或事实很可能有目标刚好符合，任何的事实命中都将极大地增加可信度、增大后续步骤成功率。
		* 在有些情况下甚至可以对小目标群的命中概率进行预测和控制，一个经典例子便是球赛预测。假设有 32 支球队参赛的淘汰赛， 每一轮挑选一支球队进行输赢的结果预测，一直成功预测到决赛的概率至少可以做到 1/2 的 5 次方即 1/32，如果考虑先验的话这个概率还可以更高。也就是说，假设一开始选择 32 个目标，每一轮将目标分成两组向其发送比赛结果预测，一半预测输，一半预测赢，预测失败的目标不参与下一轮预测，那么最终一定至少有 1 个潜在目标观察到的事实是五次预测结果全中，这将大大增加骗局的可信程度。
	* 调整初筛的可信阈值将筛选出不同级别的目标，降低可信程度也许会减少初筛过滤概率，但却很可能增大最终获利期望，因为筛选出来的是潜在 “优质” 目标，同时减少了后续人力成本。由于目标池大，甚至可以通过 A/B Test 系统地完成阈值调整。
* 使用 “包生男，生女退款” 类型 的策略，在目标足够多的情况下，获利期望趋于稳定。

### 系统分类
对骗术进行粒度更为细致的、严格、系统的归纳和分类是非常困难的，因为其具体的手段随着社会的发展变化很快，同时一个骗局中可能包含多个不同粒度的套路。维基上有一个大致的分类[^List of confidence tricks]，但我认为其逻辑比较乱，这里将参照它的归纳，并结合计算机安全的分析模式对骗术进行拆解，对骗术手法和技巧从尽量抽象的角度进行系统的归纳。

骗术和计算机安全中的攻击框架非常相似，都是寻找 Vulnerabilities，并通过 Exploits 来最终利用 Payloads 获利。

### 模式

#### Vulnerabilities 弱点

* Meta vulnerabilities

	应该说，所有的骗局都或多或少地利用了这些 Meta vulnerabilities，但也有主要利用 Meta vulnerabilities 的 Exploits。
	* 不负责
		* Exploits
			* Insurance fraud[^Insurance fraud]
			* Promotional cheque[^Promotional cheque]
	* 轻信
		* Exploits
			* Bar bill scam[^Bar bill scam]
	* 无知
		* Exploits
			* Psychic surgery[^Psychic surgery]
			* Blessing scam[^Blessing scam]
	* Exploits
		* 成功学
		* 保健品

			之所以归类在这里而不是对健康的欲望是因为保健品的目标通常对真正有益健康的运动、定期体检、听医嘱等并不热衷。
		* 引诱汇款/转账
		* Phony job offer scam[^Phony job offer scam]
			* 变种：Fake casting agent scam[^Fake casting agent scam]
		* Fraudulent directory solicitations[^Fraudulent directory solicitations]
		* Change raising[^Change raising]

			在电影 *The Grifters* 、 *Criminal* 、 *Nine Queens* 、 *Paper Moon* 以及 *Hustle* S01E04 结尾处都有展示。
		* Money exchange[^Money exchange]
		* Wedding planner scam[^Wedding planner scam]
		* 出千
			* Three-card Monte[^Three-card Monte]
			* 象棋残局
			* 扣碗猜球
		
		* 邪教
* 欲望

	这是绝大部分骗局中都会利用的突破点
	* 贪婪
		
		一般是针对钱财
		* Exploits
			* Get-rich-quick schemes[^Get-rich-quick scheme]
				* Salting[^Salting]

					在 *Hustle* S0201 集中有展示
				* Spanish Prisoner[^Spanish Prisoner]
					* 变种：尼日利亚王子[^尼日利亚王子]
					* 变种：Black money scam[^Black money scam]
				* The Wire[^The Wire Game]

					电影 *The Sting* （《骗中骗》）展示
				* Lottery fraud by proxy[^Lottery fraud by proxy]
					* 中国变种：可乐拉环中奖
			* Gold brick scams[^Gold brick scams]
				* Fiddle game[^Fiddle game]
					在 *Hustle* S01E04 和电影 *Zombieland* 中均有演绎，在后者中该套路称为 “The Ring Reward”
					* 变种：Glim-dropper[^Glim-dropper]
				* Pig in a poke[^Pig in a poke]
				* Gem scam[^Gem scam]
				* White van speaker scam[^White van speaker scam]
				* Iraqi Dinar[^Iraqi dinar]
				* 潘家园
			* 小便宜/损失厌恶
				* 廉价名牌
					* 廉价代购
					* 工厂倒闭促销
				* 高级茶叶[^年底骗子新招 “高级”茶叶低价卖]

					这个至少 09 年就有[^大家注意没有，这几天卖茶叶的骗子特别多。。。]，并且到今年还在北京机场有出现。
				* Bidding fee auctions (Penny auctions)[^Bidding fee auction]
					* 也就是 “一元购” 系列
				* Pigeon Drop[^Pigeon drop]
					
					从古到今，全球皆有，非常经典的团伙骗局，电影 *The Sting* （《骗中骗》）开头有展示
					* 变种：Rip deal[^Rip deal]
					* Payloads
						* 偷窃
							* 调包
				* Fraudulent collection agencies[^Fraudulent collection agencies]
					* 变种：赠品/奖品放送填写收件信息
					* Payloads
						* 收集个人信息
				* Jam Auction[^Jam Auction]
	* 淫欲
		* Exploits
			* Sex
				* 虚构服务
				* 货不对板
			* Possibility of sex
				* Clip joint[^Clip joint]
					* 酒托
					* 即使目标发现受骗，一般 Payloads 会立即转成勒索
			* Payloads
				* 偷窃
					* 调包
			* 色情资源
	* 虚荣

		通常也会用来和其他弱点进行组合或者连接以避免目标报警
		* Exploits
			* Diploma mill[^Diploma mill]
			* Vanity publications and awards[^Vanity publications and awards]
			* Who's Who scam[^Who's Who scam]
			* World Luxury Association[^World Luxury Association]
	* 其他

		有时目标想要的并不一定就是只是直接的金钱、美色或者名望，对于不同目标，欲望也会变化，高明的骗局讲究对症下药，总之要满足其需求。
		* Exploits
			* Mystery shopping[^Mystery shopping]
			* Predatory open access publishing[^Predatory open access publishing]
			* 复制手机卡诈骗[^公安部曝光48种常见电信网络诈骗手法]
	* 绝望
		* Exploits
			* Reloading scam[^Reloading scam]
				* Recovery room[^Recovery room]
			* 虚构无息无担保贷款
	* Exploits
		* Ponzi scheme[^Ponzi scheme] 庞氏骗局

			> 之所以将 Ponzi scheme 放在这是因为我认为 Ponzi scheme 本身是一种获利模式，这个模式和利用何种欲望其实是无关的。比方说，可以成立一个旅游组织，承诺成员每年可以低价旅游，只要源源不断的有新会员加入，就能确保在旧会员身上实现承诺，继续扩大组织规模，直到没有新会员加入，资金链断裂。
		* Rainmaking[^Rainmaking]
			
			“包生男，生女退款” 模式
	* Payloads
		* Advance-fee[^Advance-fee scam]

			在满足目标欲望之前，以某种名义要求目标预先进行支付，注意：一种变种是间接支付给利益相关方，比如在酒托套路中，目标仅支付给卖酒方。
		* Direct Payment

			Deliver fake fullfillment
* 情绪
	* 恐惧
		* Exploits
			* Pay up or be arrested scam[^Pay up or be arrested scam]
				* 变种：Public transport ticket control scam[^Public transport ticket control scam]
				* 变种：Dropped wallet scam[^Dropped wallet scam]
				* 国内还有一个例子甚至伪造了一整个审讯室[^4人花20万装修假审讯室 敲诈官员]
			* 伪造不利证据（图片、录音甚至录像）
		* Payloads
			* 敲诈
			* 勒索
	* 焦虑
		* Exploits
			* 莆田系
			* Rogue security software[^Rogue security software]
			* Fortune telling fraud[^Fortune telling fraud]
	* 内疚
		* Exploits
			* False-injury tricks 碰瓷
				* Th Flop[^The Flop]
				* The Melon Drop[^The Melon Drop]
				* Dry-Cleaning Bill Scam[^Dry-Cleaning Bill Scam]
				* 自戴绿帽
			* Art student scam[^Art student scam]
	* 同情
		* 假乞丐
		* 假残疾人
		* 假僧人
		* 伪造募捐
	* 仇恨
		* 明张应俞《骗经》中所记 “诈称偷鹅脱青布”
	* 喜悦
		* 说他们想听的话
			* 算命先生
			* 报喜
				* 明代张应俞在《骗经》中记载的 “诈学道书报好梦”。
	* 悲伤
* 关系
	* 亲情
	* 友情
		* Exploits
			* 假意结交
	* 爱情
		* Exploits
			* Romance scam[^Romance scam]

				> 之所以认为 Romance scam 是利用爱情而不是利用 Possibility of sex 是因为典型的 Romance scam 获利的金额将大大超过目标正常嫖娼或者约炮的花费，因此必须作爱情考虑。
			* 骗婚
	* 同事
	* Exploits
		* 亲密关系伪装
			* 伪装成亲戚、朋友、爱人或同事
				* 冒充留学生向父母要钱
				* 帮充话费
				* 借钱
				* “猜猜我是谁”
				* “明天到我办公室来一下”
			* 假借亲戚、朋友、爱人或同事的名义
				* 虚构事故
				* *Hustle* S02E02 中还有一个很狠的例子，冒充快递员伪造收件人为刚刚过世的人的到付包裹送到其家里。应该属于 Unsolicited goods[^Unsolicited goods] 的变种。
		* 非亲密关系伪装

			此种 Exploits 的具体手法十分多样化，令人防不胜防，更可以与其他 Exploit 进行组合
			* 冒充公务人员
			* 冒充网购客服
			* 冒用公共媒介
			* The Fake Workmen Scam[^10 Classic Cons You’d Still Fall For]
			* 伪 ATM 告示[^老骗局升级再现身 骗子ATM机上贴假银联告示诈骗(图)]
			* 伪基站
			* Phishing[^Phishing] 网络钓鱼
				* 伪邮件
				* 伪网站
			* Technical support scam[^Technical support scam]
			* Big Store[^Big Store]
			* 二维码替换[^骗局无处不在！这些二维码扫码陷阱“潜伏”在身边 ]
	* Payloads
		* 索取财物（以某种名义）
		* 有借无还
		* 偷窃
			* 调包
* 心术不正
	* 通常用于阻止目标报警或者敲诈
	* Exploits
		* 诱其违背道德
		* 诱其违法


#### Exploits 挖掘
其实绝大多数成功的 Exploit 并非只挖掘一个弱点（即使除去 Meta vulnerabilities），很多 Exploit 都是复合型的，而且弱点的挖掘还分为组合式和链式。

* 离异富婆重金求子

	组合式挖掘 淫欲+贪婪
* Badger game[^Badger game]

	首先挖掘淫欲引诱其出轨，然后再是挖掘内疚与焦虑令其赔偿，最终再试情况而定挖掘恐惧进行敲诈。
	这种弱点复合属于链式：淫欲 -> 内疚+焦虑 -> 恐惧
* 仙人跳

	淫欲 -> 恐惧
* Coin-matching game[^Coin-matching game]
	
	贪婪+不正直 -> 恐惧
* Beijing tea
	
	Clip Joint[^Clip joint] 的一个变种，更换弱点挖掘为 友情+贪小便宜/虚荣
* 军用望远镜[^【被骗了】九二式军用望远镜骗局]

	贪小便宜+非亲密关系
* Rental scams[^Rental scams]

	贪小便宜+轻信
* Unsolicited goods[^Unsolicited goods]

	先是利用 Meta Vulnerabilities 获取信息，然后再进一步利用恐惧进行勒索。
* Bogus or fraudulent law firms[^Bogus or fraudulent law firms]
	
	无知+恐惧


#### Payloads 获利
* Advance-fee   
* Direct Payment
* 索取财物
* 有借无还
* 敲诈
* 勒索
* 偷窃
	* 调包
* 其他
	* 收集个人信息

## 技巧
所有的技巧都是为一个目标服务

**尽可能地 convince 目标**

* Cold reading 冷读术
* Social engineering 社会工程学
* 表演
* 甜术
* 百科知识
* 蹭人蹭物
	
	在很多骗局中，骗棍会使用各种技巧借人借物制造假象，必须保持警惕，比如：
	1. 与其谈笑风生之人不一定是其相熟之人。
	2. 其所在的不动产不一定由其拥有。

## 防御
这和计算机安全防御的原则是一样的，只需要保证骗棍对你行骗的成本大于他的收益即可，因此核心思路就两点：

* 提高骗棍的行骗成本
* 降低骗棍的期望收益

[^Why We Lie]: [Why We Lie: The Science Behind Our Deceptive Ways](https://www.nationalgeographic.com/magazine/2017/06/lying-hoax-false-fibs-science/)
[^Confidence trick]: [Confidence trick - Wikipedia](https://en.wikipedia.org/wiki/Confidence_trick)
[^List of confidence tricks]: [List of confidence tricks - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks)
[^Insurance fraud]: [Insurance fraud - Wikipedia](https://en.wikipedia.org/wiki/Insurance_fraud)
[^Promotional cheque]: [Promotional cheque - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Promotional_cheque)
[^Bar bill scam]: [Bar bill scam - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Bar_bill_scam)
[^Psychic surgery]: [Psychic surgery - Wikipedia](https://en.wikipedia.org/wiki/Psychic_surgery)
[^Blessing scam]: [Blessing scam - Wikipedia](https://en.wikipedia.org/wiki/Blessing_scam)
[^Phony job offer scam]: [Phony job offer scam - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Phony_job_offer_scam)
[^Fake casting agent scam]: [Fake casting agent scam - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Fake_casting_agent_scam)
[^Fraudulent directory solicitations]: [Fraudulent directory solicitations - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Fraudulent_directory_solicitations)
[^Change raising]: [Change raising - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Change_raising)
[^Money exchange]: [Money exchange - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Money_exchange)
[^Wedding planner scam]: [Wedding planner scam - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Wedding_planner_scam)
[^Three-card Monte]: [Three-card Monte - Wikipedia](https://en.wikipedia.org/wiki/Three-card_Monte)
[^Get-rich-quick scheme]: [Get-rich-quick scheme - Wikipedia](https://en.wikipedia.org/wiki/Get-rich-quick_scheme)
[^Salting]: [Salting - Wikipedia](https://en.wikipedia.org/wiki/Salting_(confidence_trick))
[^Spanish Prisoner]: [Spanish Prisoner - Wikipedia](https://en.wikipedia.org/wiki/Spanish_Prisoner)
[^尼日利亚王子]: [尼日利亚王子 - 百度百科](https://baike.baidu.com/item/尼日利亚王子)
[^Black money scam]: [Black money scam - Wikipedia](https://en.wikipedia.org/wiki/Black_money_scam)
[^Lottery fraud by proxy]: [Lottery fraud by proxy - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Lottery_fraud_by_proxy)
[^Gold brick scams]: [Gold brick scams - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Gold_brick_scams)
[^Fiddle game]: [Fiddle game - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Fiddle_game)
[^Glim-dropper]: [Glim-dropper - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Glim-dropper)
[^Pig in a poke]: [Pig in a poke - Wikipedia](https://en.wikipedia.org/wiki/Pig_in_a_poke)
[^Gem scam]: [Gem scam - Wikipedia](https://en.wikipedia.org/wiki/Gem_scam)
[^White van speaker scam]: [White van speaker scam - Wikipedia](https://en.wikipedia.org/wiki/White_van_speaker_scam)
[^Iraqi dinar]: [Iraqi dinar - Wikipedia](https://en.wikipedia.org/wiki/Iraqi_dinar)
[^年底骗子新招 “高级”茶叶低价卖]: [年底骗子新招 “高级”茶叶低价卖](https://www.douban.com/note/125604758/)
[^大家注意没有，这几天卖茶叶的骗子特别多。。。]: [大家注意没有，这几天卖茶叶的骗子特别多。。。](http://www.xcar.com.cn/bbs/viewthread.php?tid=11173906)
[^公安部曝光48种常见电信网络诈骗手法]: [公安部曝光48种常见电信网络诈骗手法](http://finance.people.com.cn/n1/2017/1218/c1004-29713021-2.html)
[^Bidding fee auction]: [Bidding fee auction - Wikipedia](https://en.wikipedia.org/wiki/Bidding_fee_auction)
[^Pigeon drop]: [Pigeon drop - Wikipedia](https://en.wikipedia.org/wiki/Pigeon_drop)
[^Rip deal]: [Rip deal - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Rip_deal)
[^Fraudulent collection agencies]: [Fraudulent collection agencies - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Fraudulent_collection_agencies)
[^Jam Auction]: [Jam Auction - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Jam_Auction)
[^Clip joint]: [Clip joint - Wikipedia](https://en.wikipedia.org/wiki/Clip_joint)
[^Diploma mill]: [Diploma mill - Wikipedia](https://en.wikipedia.org/wiki/Diploma_mill)
[^Vanity publications and awards]: [Vanity publications and awards - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Vanity_publications_and_awards)
[^Who's Who scam]: [Who's Who scam - Wikipedia](https://en.wikipedia.org/wiki/Who%27s_Who_scam)
[^World Luxury Association]: [World Luxury Association - Wikipedia](https://en.wikipedia.org/wiki/World_Luxury_Association)
[^Mystery shopping]: [Mystery shopping - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Mystery_shopping)
[^Predatory open access publishing]: [Predatory open access publishing - Wikipedia](https://en.wikipedia.org/wiki/Predatory_open_access_publishing)
[^公安部曝光48种常见电信网络诈骗手法]: [公安部曝光48种常见电信网络诈骗手法](http://finance.people.com.cn/n1/2017/1218/c1004-29713021-6.html)
[^Reloading scam]: [Reloading scam - Wikipedia](https://en.wikipedia.org/wiki/Reloading_scam)
[^Recovery room]: [Recovery room - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Recovery_room)
[^Ponzi scheme]: [Ponzi scheme - Wikipedia](https://en.wikipedia.org/wiki/Ponzi_scheme)
[^Rainmaking]: [Rainmaking - Wikipedia](https://en.wikipedia.org/wiki/Rainmaking)
[^Advance-fee scam]: [Advance-fee scam - Wikipedia](https://en.wikipedia.org/wiki/Advance-fee_scam)
[^Pay up or be arrested scam]: [Pay up or be arrested scam - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Pay_up_or_be_arrested_scam)
[^Public transport ticket control scam]: [Public transport ticket control scam - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Public_transport_ticket_control_scam)
[^Dropped wallet scam]: [Dropped wallet scam - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Dropped_wallet_scam)
[^4人花20万装修假审讯室 敲诈官员]: [4人花20万装修假审讯室 敲诈官员](http://news.sohu.com/20151019/n423620088.shtml)
[^Rogue security software]: [Rogue security software - Wikipedia](https://en.wikipedia.org/wiki/Rogue_security_software)
[^Fortune telling fraud]: [Fortune telling fraud - Wikipedia](https://en.wikipedia.org/wiki/Fortune_telling_fraud)
[^The Flop]: [The Flop | The Hustle](http://thehustle.wikia.com/wiki/The_Flop)
[^The Melon Drop]: [The Melon Drop: Top 10 Classic Cons](https://www.askmen.com/top_10/entertainment/top-10-classic-cons_10.html)
[^Dry-Cleaning Bill Scam]: [Dry-Cleaning Bill Scam | Scam Detector](http://www.scam-detector.com/face-to-face-scams/dry-cleaning-bill-scam)
[^Art student scam]: [Art student scam - Wikipedia](https://en.wikipedia.org/wiki/Art_student_scam)
[^Romance scam]: [Romance scam - Wikipedia](https://en.wikipedia.org/wiki/Romance_scam)
[^老骗局升级再现身 骗子ATM机上贴假银联告示诈骗(图)]: [老骗局升级再现身 骗子ATM机上贴假银联告示诈骗(图)](http://fj.sina.com.cn/news/s/2012-03-06/0823125681.html)
[^Phishing]: [Phishing - Wikipedia](https://en.wikipedia.org/wiki/Phishing)
[^Technical support scam]: [Technical support scam - Wikipedia](https://en.wikipedia.org/wiki/Technical_support_scam)
[^Big Store]: [Big Store - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Big_Store)
[^骗局无处不在！这些二维码扫码陷阱“潜伏”在身边 ]: [骗局无处不在！这些二维码扫码陷阱“潜伏”在身边 ](http://www.chinanews.com/sh/2017/05-31/8237791.shtml)
[^Badger game]: [Badger game - Wikipedia](https://en.wikipedia.org/wiki/Badger_game)
[^Coin-matching game]: [Coin-matching game - Wikipedia](https://en.wikipedia.org/wiki/Coin-matching_game)
[^Beijing tea]: [Beijing tea - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Beijing_tea)
[^【被骗了】九二式军用望远镜骗局]: [【被骗了】九二式军用望远镜骗局](https://www.guokr.com/post/185922/)
[^Rental scams]: [Rental scams - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Rental_scams)
[^Unsolicited goods]: [Unsolicited goods - Wikipedia](https://en.wikipedia.org/wiki/Unsolicited_goods)
[^Bogus or fraudulent law firms]: [Bogus or fraudulent law firms - Wikipedia](https://en.wikipedia.org/wiki/List_of_confidence_tricks#Bogus_or_fraudulent_law_firms)
[^10 Classic Cons You’d Still Fall For]: [10 Classic Cons You’d Still Fall For](https://listverse.com/2014/06/28/10-classic-cons-youd-still-fall-for/)
[^The Wire Game]: [The WIre Game: Top 10 Classic Cons](https://www.askmen.com/top_10/entertainment/top-10-classic-cons_1.html)