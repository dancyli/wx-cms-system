-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-04-28 11:25:38
-- 服务器版本： 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- 表的结构 `wp_cms`
--

CREATE TABLE `wp_cms` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `img` int(10) UNSIGNED DEFAULT NULL COMMENT '封面',
  `content` text COMMENT '正文内容',
  `cTime` int(10) DEFAULT NULL COMMENT '发布时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `wp_cms`
--

INSERT INTO `wp_cms` (`id`, `title`, `img`, `content`, `cTime`) VALUES
(1, '识汝不识丁', 1, '丹阳县为天下最有名的两位讼师林正庸和一锤先生的归隐之所，一直吸引来自五湖四海的优秀讼师们聚集在这儿。纨绔公子陶墨看上了丹阳县县官一职，故花费五千两银子捐于大旱之地，换来县令奖赏。陶墨，人非其名，“目不识丁、胸无点墨”。即便如此，但为了告慰其父的在天之灵，陶墨仍然想要做个好官。新官上任三把火，陶墨本该潜心于职务上，却没料到在刚上任之初，自己便遇到一锤先生关门弟子顾射，从此二人平定一方。', 1524895055),
(2, 'HTML5的离线储存怎么使用？', 2, 'HTML5提供了很多新的功能以及相应的接口，离线存储就是其中的一个，离线存储可以将站点的一些文件存储在本地，在没有网络的时候还是可以访问到以缓存的对应的站点页面，其中这些文件可以包括html，js，css，img等等文件，但其实即使在有网络的时候，浏览器也会优先使用已离线存储的文件，返回一个200（from cache）头。这跟HTTP的缓存使用策略是不同的。', 1524896422),
(3, '最快解释 SVM 原理', 3, 'SVM -- 支持向量机 ，从名字就可以看出，跟向量紧密联系。好吧，说白了 SVM 就是将向量进行二分类的算法。\r\nSVM 的核心思想是尽最大的努力使分开的两个类别有最大间隔，这样才使得分割具有更高的可信度。而且对于未知的新样本才有很好的分类预测能力。那么怎么描述这个间隔，并且让它最大呢？SVM 的办法是：让离分隔面最近的数据点具有最大的距离。', 1524896506),
(4, '软件架构：基础概念总结', 4, '软件架构是指：对于软件的各个方面做出的设计决定，包括行为上的和结构上的。架构是设计的一部分，通过抽象突出了一些细节，而忽略了另一些细节。对于一个软件进行架构，架构师通常的做法是折中。\r\n他们除了考虑基本的功能需求和品质需求外，还需要考虑投入的成本（人力、财力、时间等等）。所以架构设计是否最优，没有一个绝对的答案或正确答案。', 1524896671),
(5, '携程个性化推荐算法实践', 5, '携程基础业务研发部-数据产品和服务组，专注于个性化推荐、自然语言处理、图像识别等人工智能领域的先进技术在旅游行业的应用研究并落地产生价值。目前，团队已经为携程提供了通用化的个性化推荐系统、智能客服系统、AI平台等一系列成熟的产品与服务。 ', 1524901993),
(6, '为什么程序员的办公室安静地像自习室？真的是人傻钱多不理人吗', 6, '曾经有一位新入职、活泼外向的妹子，做游戏测试的，入职刚一个星期就苦着脸来找HR要申请辞职。原因是：办公室里没有人说话，她又属于憋不住的那种，感觉很压抑。\r\n难道程序员工作就不需要休息和交流吗？不是的。我曾经问过一位游戏开发人员，他说“我最烦在编代码的时候被外界打断，这样要重新投入，又要梳理一遍。”\r\n所以，他们部门已经潜移默化地形成了一个门规，就是完成任务后移步休息或员工活动区进行交流，以免影响其他同事。', 1524902163),
(7, '身为程序员这些职场黑话你都懂吗？', 7, '晚上有空吗 = 加班吧\r\n产品经理黑话： 打交道最多的需求方，他们其实想说…\r\n你先做着=我不知道要什么，但你做了我就知道自己不要什么了\r\n老板黑话：老板是衣食父母啊，老板的心声是一定要知道地…\r\n你来我办公室一下 = 老子又想到了绝妙的 idea\r\n你身处的行业有什么黑话？发出来一起学习学习吧。', 1524902209),
(8, 'IT工程师的“五个等级”，你处在哪一级？', 8, '第五级：能独立解决问题，完成工程工作。\r\n第四级：能指导和带领其他人一同完成更有影响力的工作。\r\n第三级：能独立设计和实现产品，并且在市场上获得成功。\r\n第二级：能设计和实现别人不能做出的产品，也就是说他的作用很难取代。\r\n第一级：开创一个产业。', 1524906983),
(9, '今天很辛苦，明天很幸运', 9, '在2018年4月进入黑马学习，非常有幸能成为黑马其中的一员。初来乍到一切是那么的陌生，和不习惯，不习惯这里的作息时间，不习惯这里的早上要早读，不习惯还要上晚自习等等。。并且自己在这之前已经离开校园生活很多年了，完全不能和班里有还没有大学毕业的同学比，他们能尽快融合这个集体，而我一直还在适应中，还在懵逼中。不过班上大部分还是工作了以后转行来学习的，这样经过慢慢了解之后，好像突然找到同类人，找到盟友，这样我好像慢慢静下心来，班上同学可以说都是来自五湖四海，为来一个共同的目标－高薪，而走到了一起。一起努力学习，一起进步，一起玩闹，这里将未我们创造出很多回忆，想到以后这里有我们半年辛苦的点点滴滴，我就会很兴奋。毕竟辛苦之后才能有收获。', 1524907035),
(10, '关于HTTP协议，收藏这一篇就够了', 10, 'HTTP协议是Hyper Text Transfer Protocol（超文本传输协议）的缩写,是用于从万维网（WWW:World Wide Web ）服务器传输超文本到本地浏览器的传送协议。\r\nHTTP是一个基于TCP/IP通信协议来传递数据（HTML 文件, 图片文件, 查询结果等）。\r\n\r\nHTTP是一个属于应用层的面向对象的协议，由于其简捷、快速的方式，适用于分布式超媒体信息系统。它于1990年提出，经过几年的使用与发展，得到不断地完善和扩展。目前在WWW中使用的是HTTP/1.0的第六版，HTTP/1.1的规范化工作正在进行之中，而且HTTP-NG(Next Generation of HTTP)的建议已经提出。\r\nHTTP协议工作于客户端-服务端架构为上。浏览器作为HTTP客户端通过URL向HTTP服务端即WEB服务器发送所有请求。Web服务器根据接收到的请求后，向客户端发送响应信息。', 1524907066),
(11, '为什么很多公司都不招大龄码农？', 11, '首先，我们通过你的问题的题目来分析，为什么很多公司都不招大龄码农？或者是说大部分公司不招大龄码农？这就得从公司能力的角度来分析了。\r\n\r\n首先，这个「大部分」指的都是互联网小公司，都是创业型公司，从公司能力上来讲，这些公司养不起大龄码农。30 岁往上的大龄码农，要价都不会很低，最起码都在 25k 及以上，甚至成为技术专家的都是按年薪算的。\r\n\r\n其次，大公司毕竟是少数，大型互联网公司比如：BAT 或者移动互联网界的明星公司 TMD 这种大厂里肯定会有很多大龄码农和技术专家。要想能够进大厂，又得从码农的技术能力上面来分析。\r\n\r\n我们要知道很多大龄码农，只是增长了年龄，而没有增长能力和本事。比如：一年的工作经验重复的用十年，那可不是说明你有十年的工作经验，更别提能力了。这样的大龄码农进 BAT , TMD 这样的公司很容易被面试出来自己的能力的。\r\n\r\n如果都干到 35 岁了，你还没有在这个行业积累点影响力，人脉，甚至成为技术专家，就说明自身有问题了。\r\n\r\n你看看，有能力，有技术，有实力的大龄码农，即使不走管理岗依然可以在 BAT 这样的大型公司上驰骋自由的遨游和游走，成为技术前沿的引领者。关键看自己有没有进取心，保持学习的能力。\r\n\r\n而，只涨年龄不增长能力的大龄码农，唯一可以体现的是那个大龄，别无其他。甚至一些大龄码农混在这个行业许多年，能力虽然没有长进，但是增长了许多不良的习气，如何可以偷懒的应付工作，可以如何推卸责任等一些不负责任的做法，就像这样的，肯定也不会有进取心去提高自己的能力。\r\n\r\n很多人都在说不招大龄码农的原因很多都在于 30 多岁了，是由于结婚有孩子，生活权重高，不爱加班，体力差，所以很多公司都不喜欢要大龄码农，我感觉这并不是本质的原因。如果自己能力超级强，强到公司可以为你这个人才而改变，那才是本事。我不否认，很多企业在招人的时候存在这种年龄歧视。但是我感觉在如今这个老龄化很高的时代，30 多岁是正值一个人奋斗且小有成就的黄金年龄阶段。\r\n\r\n不管如何，如果我们改变不了这个槽糕的就业环境，那就只能努力提高自己，是金子，还怕不发光吗？', 1524907150),
(12, '技术和经验不匹配时怎么办？', 12, '在“面试攻略：何为技术和年龄不匹配”一文中我们讨论的其实是“技术能力”，技术能力是一种“硬技能”，硬技能只是开发者综合能力中的一部分！\r\n\r\n硬技能是指在专业领域、与工作直接相关的技术性技能。比如软件开发领域，“使用C++进行驱动编程”就是一种硬技能。\r\n\r\n硬技能对你做的工作非常重要，但往往受限于工作环境，不大容易迁移，所以某种硬技能往往不是大多数人都会去学的东西。\r\n\r\n与硬技能相对，还有一些技能应用更广泛、普遍，无论你在生活和工作中，它们都可以帮助你，比如写作、游泳、谈判、演讲、反馈、激励等等，这类技能，我们称之为“软技能”。\r\n\r\n实际上，开发者的能力包括三个方面：硬技能、软技能和资源。', 1524907193),
(13, '傲娇码农的自我修养', 13, '我爱这该死的工作，code虐我千百遍，我爱code如初恋。不轻易厌倦，不自我怀疑，垂死病中惊坐起，我还能再撸两行。我们的工作是具有创造性的工作，不是流水线上的工人。永远面临挑战和被挑战，而我心中的炙热不变。从前，和我的同事一起吃饭，最有意见的往往是他们的对象：“你们生活能不能有点其他乐趣？别永远都是代码代码代码…”乐在其中的我们往往忘了吃饭睡觉，仅仅为了脑中蹦出的那一点点灵感而不知疲倦，不分昼夜。', 1524907229),
(14, '如果编程语言是女人', 15, 'PHP是你的豆蔻年华的心上人，她是情窦初开的你今年夏天傻乎乎的追求的目标。玩一玩可以，但千万不要投入过深，因为这个女孩有严重的问题。\r\n\r\nPerl 是PHP的姐姐。她对你来说年龄稍微大了一点，但在90年代，她是相当受欢迎的。她和Larry Wall(译注：Perl语言创始人)长期保持着亲密关系，因此她的审美一落千丈，如今她看起来是丑陋不堪。“无论你们怎么评论，我仍然爱她！”，Larry Wall说。没有第二个人会像他这样。\r\n\r\nRuby是脚本家族中一个非常漂亮的孩子。第一眼看她，你的心魄就会被她的美丽摄走。她还很有有趣。起初她看起来有点慢，不怎么稳定，但近些年来她已经成熟了很多。\r\n\r\nPython 是Ruby的一个更懂事的姐姐。她优雅，新潮，成熟。她也许太过优秀。很多小伙都会说“嘿，兄弟，你怎么可能不爱上Python呢！？”。没错，你喜欢Python。你把她当成了一个脾气和浪漫都退烧了的Ruby。\r\n\r\nJava是一个事业成功的女人。很多在她手下干过的人都感觉她的能力跟她的地位并不般配，她更多的是通过技巧打动了中层管理人员。你也许会认为她是很有智慧的人，你愿意跟随她。但你要准备好在数年里不断的听到“你用错了接口，你遗漏了一个分号”这样的责备。\r\n\r\nC++ 是Java的表姐。她在很多地方跟Java类似，不同的是她成长于一个天真的年代，不认为需要使用“保护措施”。当然，“保护措施”是指自动内存管理。你以为我指的是什么？\r\n\r\nC 是C++的妈妈。对一些头发花白的老程序员说起这个名称，会让他们眼睛一亮，产生无限回忆。\r\n\r\nObjective C C语言家族的另外一个成员。她加入了一个奇怪的教会，不愿意和任何教会之外的人约会。\r\n\r\nHaskell, Clojure, Scheme 以及她们的朋友们都是一些时髦的，附庸风雅的，很聪明的女孩，你也许在多年前和她们曾度过了一个很Happy的暑假。她们是第一次让你感到有压力的女孩。当然，你可能从来没有对她们很认真——尽管你总是在问自己“如果….会如何？“\r\n\r\n也许你会拖延着不去认识C# ，因为她们家族不好的名声。但最近几年他们已经改邪归正了——他们会这样告诉你。一旦你加入我们，你就是我们的人了，你听到了没有？你需要一个数据库？她的哥哥MSSQL会罩着你。需要一个安身的地方？这有何难，她老爸甚至可以在Azure大道你给买一套公寓。什么？你觉得这样的关系过于亲密了？不，你别想离开我们。你已经是我们家族的一员了，现在，听见了没有？\r\n\r\nJavascript —— 嗨，这不是你的初吻的那个女孩吗，她甚至比PHP更早进入你的视线。我不知道她现在在干什么。我听说她的事业近几年来非常成功。旧时的人也可以赶上潮流变得很酷….（你发现她从头到脚穿的都是设计师jQuery的作品）….哇，有人从丑小鸭变成了美丽的天鹅…', 1524907323);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_cms`
--
ALTER TABLE `wp_cms`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `wp_cms`
--
ALTER TABLE `wp_cms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
