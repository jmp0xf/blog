+++
author = "Sangeet Paul Choudary"
date = "2016-05-04T00:00:00+08:00"
description = ""
highlight = false
highlight_languages = []
mathjax = false
tags = ["平台"]
title = "The Platform Stack"
categories = ["商业"]
external_link = "https://artplusmarketing.com/the-platform-stack-c83f9c96e6"
+++

I first wrote about the Platform Stack [last year on my blog](http://platformed.info/platform-stack/), and subsequently used it as a core framework in my first book, [Platform Scale](http://www.amazon.com/Platform-Scale-emerging-business-investment-ebook/dp/B015FAOKJ6/ref=cm_cr_pr_product_top?ie=UTF8). Ever since, it’s gained adoption across industries as both startups and incumbents use this framework to illustrate and evaluate their platform strategy. Having observed its usage over time, several patterns repeatedly come up and I wanted to lay out a structured essay integrating my earlier thinking with these new patterns that I’ve observed over time, through its usage.

#### PLATFORMS, PLATFORMS EVERYWHERE

Everyone seems to be building a platform, yet there is massive disagreement on the definition of a platform. This is one of the core motivations for laying out the platform stack as a central framework to understand different kinds of platforms.


![](https://cdn-images-1.medium.com/max/600/1*GdrhFGRdZ9YfvtDT4L4uMw.jpeg)

Within the software development community itself, the discussion on platforms is never ending, and the jury’s still out on the various terminologies that float right there. We call Android, Salesforce, Facebook Connect and a host of other things ‘platforms’.

Moving away from the developer community, we talk about Medium and WordPress as blogging platforms. YouTube, Facebook, and even Instagram are described as platforms. Uber, Airbnb and their ilk are widely described as ‘marketplaces’, ‘platforms’ or ‘marketplace platforms.’

To make things, even more, complex, the Nest thermostat is called a platform, Nike says it’s building a platform to connect its shoes and GE claims to be using a platform approach to manage its factories. The Internet of Things movement repeatedly talks about platforms, but those definitions don’t align with any of Uber, Medium or Android. And none of these align with each other either.

So what exactly is a platform? Through this essay, I want to propose a unifying framework for thinking through the concept of platforms.

This is a long analysis, but it’s heavily illustrated. Also, if you’d like to whet your appetite further, you should check out [my blog](http://platformed.info) or my two books on this topic: [Platform Scale](http://www.amazon.com/Platform-Scale-emerging-business-investment-ebook/dp/B015FAOKJ6/ref=cm_cr_pr_product_top?ie=UTF8) and [Platform Revolution](http://www.amazon.com/Platform-Revolution-Networked-Transforming-Economy-And/dp/0393249131).

#### DEFINITIONS FIRST

Let’s start with the WHY of platforms. Why does a platform exist?

![](https://cdn-images-1.medium.com/max/800/1*SKWix5_M2BXzX5XudwtEbw.jpeg)

HOW does it do that?

_It achieves this by_

1.  _Architecting incentives that repeatedly pull these participants to the platform,_
2.  _Providing a central infrastructure on which participants create and exchange value,_
3.  _Matching participants with each other and with content/goods/services created on the platform_

![](https://cdn-images-1.medium.com/max/800/1*J0_O-S1ZJC6iomT-ljOEBQ.jpeg)

This is great as a definition… but how does this bring together Android, Airbnb, Alibaba, YouTube, Nike and GE? Let’s dive into this further.

#### UNPACKING THIS FURTHER

The most important aspect of this definition is to understand the following:

1.  **Business model, not technology:** Platforms are a fundamentally new business model, different from Pipes (as illustrated in Platform Scale and Platform Revolution).
2.  **Plug and play:** Producers can ‘plug-in’ and create on top of a platform. When consumers ‘plug’ into a platform, the platform serves them what is more relevant for them. Developers create apps on top of Android, writers create articles on top of Medium, hosts create room availability on top of Airbnb, sellers create goods on top of Etsy, eBay, and Taobao (Alibaba). Consumers plug in and are served what they’re looking for.
3.  **Interactions:** The core role of the platform business is to enable interactions between the participants that connect to the platform. The interaction is the fundamental unit of analysis on a platform. Some platforms may have multiple parties connecting to it and many different types of interactions. But all platforms will have a core interaction as [we discuss here.](http://platformed.info/the-core-interaction-platform/)

#### AN ARCHITECTURAL FRAMEWORK

Let’s revisit the three key roles of the platform business model:

1.Architecting incentives that repeatedly pull these participants to the platform,  
2.Providing a central infrastructure on which participants create and exchange value,  
3.Matching participants with each other and with content/goods/services created on the platform

Across all platforms, we repeatedly see three layers, as follows:

![](https://cdn-images-1.medium.com/max/800/1*aGcZAwjrHlLyIaHxpLxRzw.jpeg)

**Network/Marketplace/Community Layer:** Some platforms may have users explicitly connecting with each other, as in social networks. Some may have users not connecting but exchanging items as in marketplaces. And some platforms may have an implicit community layer. e.g. If you use the Nest Thermostat or Mint.com, your usage is benchmarked against others. So you are benefiting from the community implicitly but you don’t explicitly connect with them.  
More importantly, this is also the layer at which the external network of producers creates value. To enable this value creation, we need the second layer: Infrastructure.

**Infrastructure Layer:** This is what you ‘build’. Of itself, it has little value unless users and partners create value on top. External producers build on top of this infrastructure. On Android, developers build apps. On YouTube, video creators host videos. On eBay, sellers build/host product availability. In some cases, the infrastructure layer may be very dominant, e.g. development platforms like Android. In other cases, the infrastructure layer may be much thinner e.g. Instagram. The infrastructure layer essentially provides the infrastructure on top of which value can be created.  
However, with a lot of value creation comes the problem of abundance. Relevance dips. If YouTube has too many videos, how do you find the best ones? This brings us to the third layer: Data.

**Data Layer:** The final layer is the data layer. Every platform uses data in some way. But in some cases, the data layer may play a more dominant role than in others. In most cases, data serves to provide relevance, matching the most relevant content/goods/services with the right users. In other cases, the value may exclusively lie in the data layer. The Nest Thermostat example, as we will revisit below, is what one would think of as a data-intensive platform, where the value is entirely in the data being aggregated.

> **The reason I propose the Platform Stack is to highlight that we’re increasingly not talking about different families of platforms. It’s not one vs. the other. Development platforms are building out marketplaces. Marketplaces are opening up APIs for platform extension. We are talking about different configurations of one stack.**

### Platform Configurations

Let’s play around with some of these configurations for a bit. As we mentioned, all platforms have all 3 layers but the degrees to which each dominates may vary.

To start with, let’s lay out the 3 basic configurations. These are merely for illustration. To understand specific platforms, it may help to tweak these around a bit.

BASIC CONFIG 1: THE MARKETPLACE/COMMUNITY PLATFORM

When we think of Airbnb, Uber, all those sharing economy platforms, we’re looking at a configuration that is heavy on the marketplace/community layer. The key source of value is the network. Online communities like Reddit also fall into this category.

![](https://cdn-images-1.medium.com/max/800/1*3socmg9kCO1xgGMlTkkGig.jpeg)

One would naturally argue that all parts play a role. Data is important too. In some cases, infrastructure plays a role along with the community. And that is precisely the point. The idea of using this stack is to illustrate that we’re not talking about one vs. the other. Every platform will have its unique configuration.

Having said that, there are examples of Craigslist or discussion forums that are pure marketplaces or communities with almost no infrastructure play and not leveraging data at all. They still exhibit many of the platform dynamics that an Airbnb and Facebook demonstrate but they lie at an extreme end, almost perfectly demonstrated by the stack above.

BASIC CONFIG 2: THE INFRASTRUCTURE PLATFORM

This is the basic configuration we would associate with a development platform like Android, which provides the infrastructure on top of which apps may be created. Of course, a key chunk of the value is in the marketplace created on top: the Play store. (We’ll explore that configuration in a minute) But the infrastructure is clearly important. Almost all traditional views of development platforms focus entirely on the infrastructure layer.

WordPress is a platform that provides the infrastructure exclusively and doesn’t provide network benefits or any value through data. Medium, as we shall soon see, has a different configuration.

![](https://cdn-images-1.medium.com/max/800/1*Y_3ZNpTXBHkdDvTdBUK1TQ.jpeg)

Let’s move to the third configuration.

BASIC CONFIG 3: THE DATA PLATFORM

The third — and often, least evident — basic configuration is the one where data dominates. Data plays a role with every platform. Facebook uses data to fashion your news feed; Airbnb uses data to show you relevant accommodation. But in certain cases, the data itself is the key value created on the platform. We discuss those platforms here.

![](https://cdn-images-1.medium.com/max/800/1*u-GOfu_bzfiqyzzAWARQRQ.jpeg)

This brings us to a whole family of platforms that often don’t look like platforms:  
**Wearables:** Nike’s shoes and fuelband constantly create data, and the underlying platform integrates the user experience across the shoe, the wearable and the mobile apps. Jawbone — and most wearables for that matter — create value through the data platform. The wearable acts as the producer of data. The platform provides value back to the user but also pools the data from many users to create network-level insights.

**Nest Thermostat and the Internet of Things:** When we talk about the internet of things, we are obsessed with the ‘thing’ rather than with the ‘internet’. Nest Thermostat, as an example, uses a platform approach to make sense of all the data being produced by the thermostat. Aggregating all the data from a city’s thermostats, it provides analytics and other services to the city’s utilities board. This is made possible because of the data platform.

**Industrial Internet:** GE’s theme of the industrial internet is another example of data platforms. Machines, enabled with sensors, constantly stream activity data into a platform that helps each machine learn from other machines and provides network-wide intelligence.

**Enterprise 2.0:** Andy McAfee talks about the rise of social software in the enterprise and how it’s replacing traditional enterprise systems. All of this needs an underlying data platform to make sense of the many workflows and many knowledge exchanges within an organization.

**Omnichannel Customer Journeys:** Retailers like Burberry and Target use an underlying data platform to unify customer journeys across the store and other remote touchpoints. Actions that a user takes on an app lead to a change in the in-store experience and vice versa. This is possible because an underlying data platform manages the users’ interactions with the store. Over time, this data can be used to actually create explicit communities by connecting users with similar shopping behavior in the same area with each other.

Data platforms like the above are a unique category where the platform works like a pool into which, different sources bring in data and from which, different participants derive value.

#### CASE STUDIES

Let’s illustrate this with a few case studies.

![](https://cdn-images-1.medium.com/max/800/1*1V2iKJ4DupYSc5J14lpNxg.jpeg)

Let’s visualize the competition between Craigslist and Airbnb using this stack.

![](https://cdn-images-1.medium.com/max/800/1*N_ZV8lb-xgAa12Tk2scjdw.jpeg)

In a well-known move, Airbnb disrupted Craigslist and created a whole new playbook for platform competition. ([Access the playbook here](http://platformed.info/how-to-disrupt-craigslist/).)

If we use the Platform Stack to stack up Craigslist, we see immense network effects because of a strong network/marketplace. However, Craigslist does very little on infrastructure (no handling of payments, no facilitation mechanisms like trust, etc.).

Airbnb started out with poor network effects, but better use of data and a more robust infrastructure to enable interactions between hosts and guests. Over time, it has built out arguably much stronger network effects within the travel/accommodation vertical and has a treasure trove of data which powers the business model.

-----

![](https://cdn-images-1.medium.com/max/800/1*kejqlWDP4fOIV2TALp_sXg.jpeg)

In its early days, YouTube’s hosting and bandwidth infrastructure coupled with its flash-based in-browser, embeddable player formed a compelling value proposition for content creators. As YouTube gained traction, the focus of the platform moved from improving video hosting (technology/infrastructure layer) to improving match-making of videos with consumers (data layer) and increasing viewer engagement (network layer).

![](https://cdn-images-1.medium.com/max/800/1*5g6mtYVMqrrG2g5gg-cSBg.jpeg)

Vimeo decided, instead, to focus its platform on the content creators and provide them with superior video infrastructure (HD player, a netter embeddable player for bloggers). This has helped the two co-exist despite YouTube’s dominance.

-----

![](https://cdn-images-1.medium.com/max/800/1*l97HFQJFfSolH3k5mBADsg.jpeg)

Development platforms, by default, have a strong infrastructure layer. But ever since Apple launched the app store, they’ve come bundled with a strong marketplace layer as well.

![](https://cdn-images-1.medium.com/max/800/1*wLW3-68Ve2sn7Gu36L9rsw.jpeg)

Arguably, through developer ecosystem management, Microsoft did invest in nurturing the ecosystem, but they never internalized the ecosystem interactions. Ever since Apple’s and Android’s app stores, the idea of combining app stores with development platforms has gained a lot of traction among existing and emerging platforms.

-----

![](https://cdn-images-1.medium.com/max/800/1*g-wnavlGIPoMCBl8kr-_XQ.jpeg)

Much like the earlier example, WordPress only provided a technology infrastructure for writers to create blog posts on. Medium is WordPress on steroids and more.

![](https://cdn-images-1.medium.com/max/800/1*Id5GzuHf5y3Lk9--i3mljA.jpeg)

Medium keeps the technology infrastructure simple: easier plug-and-play. But it also leverages data to better help content discover its market. It also allows a community to form on top of Medium and allows writers and curators to build a following. In doing this, Medium has built a much more comprehensive platform stack than any blogging platform before it.

-----

![](https://cdn-images-1.medium.com/max/800/1*Intt4pDN6R3Mftyvvegq5A.jpeg)

Myspace and Facebook are two social networks with vastly different platform stacks. Facebook’s largest draw, arguably, is the News Feed. By focusing on using data better and engaging the community in a much more stronger way, Facebook built out an entirely different business even though the two may appear similar on the face of it.

![](https://cdn-images-1.medium.com/max/800/1*gSY5JOZZLPP1YQEkbmf0zw.jpeg)

When Myspace started feeling the heat from Facebook, it tried to respond with many feature and functionality changes that mimicked Facebook’s infrastructure but couldn’t quite get to building out the rest of the stack quite as effectively. Facebook has done much to strengthen the data layer in creating the Social Graph and the Open Graph. Most social networks of “The Myspace Era” were largely focused on the community and building network effects through connecting people. Facebook, instead, through Connect, has ended up creating a social data layer for the web.

-----

![](https://cdn-images-1.medium.com/max/800/1*PY6SSVuX-lL8pMXCpO4Jug.jpeg)

Quicken isn’t really a platform, but the Quicken vs. Mint illustration using the Platform Stack is a good illustration to demonstrate platform business models beating software product based business models.

![](https://cdn-images-1.medium.com/max/800/1*8FlZ7z9ckGWLWe0V5oF40w.jpeg)

Quicken provides users with the infrastructure to manage finances. In its initial days, Mint did the same but provided it for free. This allowed Mint to gain traction through a superior product. Moving forward, Mint expanded to fill out the rest of the Platform Stack. It creates an implicit network of consumers who benefit from social analytics that benchmarks their spending habits vis-a-vis peers. It also creates a marketplace that allows financial institutions to sell their offerings to these consumers. All of this is powered through a constant stream of data coming in from consumer accounts connected to Mint.

-----

![](https://cdn-images-1.medium.com/max/800/1*h7MRVxVt3dVXrymXly-1Cw.jpeg)

Hipstamatic and Instagram are deceptively similar. Both allow you to take photos and put on cool filters. But here’s the difference. Hipstamatic simply provided the technology to take cool photos using filters. As a result, Hipstamatic based its revenue model on charging for the app and premium filters.

![](https://cdn-images-1.medium.com/max/800/1*O4i4rwjW7EG6jH7HWjB2Cw.jpeg)

On the other hand, even in its early days, Instagram focused on the network through its Facebook integration and, over time, built out the entire platform stack. The core value provided by Instagram — and the reason it succeeded despite a late start — was not the filters, it was the network and community for sharing pictures. Ironically, one of the most popular hashtags on Instagram was #hipstamatic, indicating that while the pictures were taken using Hipstamatic, they were being shared on Instagram.

-----

![](https://cdn-images-1.medium.com/max/800/1*xsYJHpeaFvYhrSerlL5V8g.jpeg)

Despite Flickr’s earlier start, Facebook hosts the largest number of photos online today. Flickr still attracts those who want to use it for its storage infrastructure. Facebook, in contrast, is used to generate conversations around photos which it effectively does through a superior community and data layer.

![](https://cdn-images-1.medium.com/max/800/1*zmp35LqjpjUJH0YntnaiFQ.jpeg)

-----

![](https://cdn-images-1.medium.com/max/800/1*QvqZd2kLOgvMvwmGG_oCrQ.jpeg)

Monster would have never seen LinkedIn as a potential competitor. It was too busy focusing on other job portals. Job portals utilized basic data to help users find jobs and recruiters find resumes.

![](https://cdn-images-1.medium.com/max/800/1*VVz8zIDBUE1o964q6F1xYA.jpeg)

LinkedIn uses more holistic data on the user to match them with jobs. By building out a network of professionals, it helps activate even passive job seekers who wouldn’t visit job portals. LinkedIn has, effectively, eaten Monster by building out an entirely different stack.

#### USING THE STACK

The Platform Stack is a tool to think through platforms and plan them. An example of such an analysis is my recent essay on [the rise of full stack solutions](https://medium.com/@sanguit/the-rise-of-full-stack-solutions-c2f26e3413e4#.dyl9hyg5t).

There are several ways I’ve seen the platform stack being used in companies and by readers of my work over the last year and more:

1.  **Illustrate the strengths of your business model:** Without getting lost in the quagmire of features and functionalities, the stack helps us understand the key drivers of value and helps us benchmark ourselves on those parameters against competition and substitutes.
2.  **Evaluate competitiveness of your business model vs. competing platforms:** As illustrated in the examples above, the stack helps to demonstrate scenarios where competitors will co-exist or Irrespective of what you’re building, the stack helps to figure which layers you differentiate yourself in and how.
3.  **Evaluate past, current, and potential future positions:** It helps understand the key strengths of businesses that are already out there in the market.
4.  **Illustrate progress on your execution roadmap:** Your platform roadmap may be illustrated in terms of the layers of the stack that get impacted as you move forward with implementation.

However, it’s important to bear in mind that the platform stack benefits from clarity and simplicity at the cost of detail. It is best used as an illustrative and evaluative tool rather than one for detailed planning and prediction. The execution of platform business models involves many nuances; the platform stack helps prioritize the right issues depending on which layers are more important for your platform.

#### LEARN MORE

If you’d like to learn more about the architecture and execution of platform business models, you could:

*   Read the books [Platform Scale](http://www.amazon.com/Platform-Scale-emerging-business-investment-ebook/dp/B015FAOKJ6/ref=cm_cr_pr_product_top?ie=UTF8) and [Platform Revolution](http://www.amazon.com/Platform-Revolution-Networked-Transforming-Economy-And/dp/0393249131)
*   [Read the many posts on my blog on this topic](http://platformed.info)
*   [Get access to the platform introductory package](http://platformed.us5.list-manage1.com/subscribe?u=c605e223d65e2fd33e57ba862&id=d67c29e75c)