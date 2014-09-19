-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 68.178.136.148
-- Generation Time: Apr 22, 2013 at 10:41 AM
-- Server version: 5.0.96
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `Digeapolis`
--

-- --------------------------------------------------------

--
-- Table structure for table `DA_ContactNote`
--

DROP TABLE IF EXISTS `DA_ContactNote`;
CREATE TABLE `DA_ContactNote` (
  `Seq` int(11) NOT NULL auto_increment,
  `UserId` int(11) NOT NULL,
  `Source` varchar(255) NOT NULL,
  `Context` varchar(800) NOT NULL,
  `CreateDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Seq`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `DA_ContactNote`
--


-- --------------------------------------------------------

--
-- Table structure for table `DA_CSS`
--

DROP TABLE IF EXISTS `DA_CSS`;
CREATE TABLE `DA_CSS` (
  `CssId` int(11) NOT NULL auto_increment,
  `TennantId` int(11) NOT NULL,
  `CSSText` text NOT NULL,
  PRIMARY KEY  (`CssId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `DA_CSS`
--


-- --------------------------------------------------------

--
-- Table structure for table `DA_ElemStyles`
--

DROP TABLE IF EXISTS `DA_ElemStyles`;
CREATE TABLE `DA_ElemStyles` (
  `TennantId` int(11) NOT NULL,
  `ElemType` int(11) NOT NULL,
  `BGColor` varchar(50) NOT NULL,
  `TextColor` varchar(50) NOT NULL,
  `BGImageURL` varchar(255) NOT NULL,
  `BGMode` int(11) default NULL,
  `BGpositionLeft` varchar(50) NOT NULL,
  `BGpositionTop` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DA_ElemStyles`
--


-- --------------------------------------------------------

--
-- Table structure for table `DA_EmailAccounts`
--

DROP TABLE IF EXISTS `DA_EmailAccounts`;
CREATE TABLE `DA_EmailAccounts` (
  `Seq` int(11) NOT NULL auto_increment,
  `UserId` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CreateDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Seq`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `DA_EmailAccounts`
--

INSERT INTO `DA_EmailAccounts` VALUES(43, 66, 'loring.kaveney@live.com', '2013-04-08 08:45:04');
INSERT INTO `DA_EmailAccounts` VALUES(42, 65, 'test@test.com', '2013-04-05 11:10:14');
INSERT INTO `DA_EmailAccounts` VALUES(41, 64, 'Loring.kaveney@digiapolis.com', '2013-03-30 04:07:07');
INSERT INTO `DA_EmailAccounts` VALUES(39, 62, 'eric.lopez@digiapolis.com', '2013-03-24 18:42:12');
INSERT INTO `DA_EmailAccounts` VALUES(40, 63, 'test@test.com', '2013-03-25 16:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `DA_Nav`
--

DROP TABLE IF EXISTS `DA_Nav`;
CREATE TABLE `DA_Nav` (
  `NavId` int(11) NOT NULL auto_increment,
  `PageId` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `BaseFunction` int(11) NOT NULL,
  `Target` int(11) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `UpdateDate` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `UserId` int(11) NOT NULL,
  `Active` bit(1) default b'1',
  PRIMARY KEY  (`NavId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `DA_Nav`
--

INSERT INTO `DA_Nav` VALUES(29, 27, ' Segmentation is still key!', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(30, 28, 'dfgdfgfg', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(31, 29, 'test', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(32, 30, '', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(33, 31, '', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(34, 32, 'Responsive Marketing', 0, 0, '', '2013-04-09 11:10:28', 62, '');
INSERT INTO `DA_Nav` VALUES(35, 33, 'Web/Mobile Development', 0, 0, '', '2013-04-09 14:39:34', 62, '\0');
INSERT INTO `DA_Nav` VALUES(36, 34, 'Social Business', 0, 0, '', '2013-04-09 11:10:28', 62, '');
INSERT INTO `DA_Nav` VALUES(37, 35, 'Skills', 0, 0, '', '2013-04-09 14:39:34', 62, '\0');
INSERT INTO `DA_Nav` VALUES(38, 36, 'About Us', 0, 0, '', '2013-04-09 11:10:28', 62, '');
INSERT INTO `DA_Nav` VALUES(39, 37, 'Eric Lopez', 0, 0, '', '2013-04-09 14:39:34', 62, '\0');
INSERT INTO `DA_Nav` VALUES(40, 38, '', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(60, 63, 'Home', 0, 0, '', '0000-00-00 00:00:00', 62, '');
INSERT INTO `DA_Nav` VALUES(42, 40, 'asdasdd', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(43, 41, 'XPageList', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(44, 42, 'XPageSort', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(45, 43, '', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(46, 44, 'Loring', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(47, 48, 'dsfsdfggd', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(48, 51, 'asdsdfs', 0, 0, '', '2013-04-07 08:24:28', 62, '\0');
INSERT INTO `DA_Nav` VALUES(53, 56, 'iTK', 0, 0, '', '2013-04-09 14:39:34', 62, '\0');
INSERT INTO `DA_Nav` VALUES(52, 55, '', 0, 0, '', '2013-04-18 09:29:54', 66, '\0');
INSERT INTO `DA_Nav` VALUES(54, 57, 'My Story', 0, 0, '', '2013-04-10 14:40:02', 66, '');
INSERT INTO `DA_Nav` VALUES(55, 58, 'Services', 0, 0, '', '2013-04-18 09:29:54', 66, '\0');
INSERT INTO `DA_Nav` VALUES(61, 64, 'Product Test', 0, 0, '', '0000-00-00 00:00:00', 62, '');
INSERT INTO `DA_Nav` VALUES(58, 61, 'Contact Us', 0, 0, '', '2013-04-11 10:27:35', 66, '');

-- --------------------------------------------------------

--
-- Table structure for table `DA_Order`
--

DROP TABLE IF EXISTS `DA_Order`;
CREATE TABLE `DA_Order` (
  `EntityId` int(11) NOT NULL,
  `OrderNum` int(11) NOT NULL,
  `Type` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DA_Order`
--

INSERT INTO `DA_Order` VALUES(56, 8, 0);
INSERT INTO `DA_Order` VALUES(35, 7, 0);
INSERT INTO `DA_Order` VALUES(34, 6, 0);
INSERT INTO `DA_Order` VALUES(32, 5, 0);
INSERT INTO `DA_Order` VALUES(33, 4, 0);
INSERT INTO `DA_Order` VALUES(37, 3, 0);
INSERT INTO `DA_Order` VALUES(36, 2, 0);
INSERT INTO `DA_Order` VALUES(56, 7, 1);
INSERT INTO `DA_Order` VALUES(37, 6, 1);
INSERT INTO `DA_Order` VALUES(35, 5, 1);
INSERT INTO `DA_Order` VALUES(33, 4, 1);
INSERT INTO `DA_Order` VALUES(63, 1, 0);
INSERT INTO `DA_Order` VALUES(61, 4, 0);
INSERT INTO `DA_Order` VALUES(34, 2, 1);
INSERT INTO `DA_Order` VALUES(32, 1, 1);
INSERT INTO `DA_Order` VALUES(64, 0, 0);
INSERT INTO `DA_Order` VALUES(36, 0, 1);
INSERT INTO `DA_Order` VALUES(58, 2, 0);
INSERT INTO `DA_Order` VALUES(57, 1, 0);
INSERT INTO `DA_Order` VALUES(55, 0, 0);
INSERT INTO `DA_Order` VALUES(55, 3, 1);
INSERT INTO `DA_Order` VALUES(58, 2, 1);
INSERT INTO `DA_Order` VALUES(61, 1, 1);
INSERT INTO `DA_Order` VALUES(57, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `DA_Pages`
--

DROP TABLE IF EXISTS `DA_Pages`;
CREATE TABLE `DA_Pages` (
  `PageId` int(11) NOT NULL auto_increment,
  `Title` varchar(255) NOT NULL,
  `PageHTML` text NOT NULL,
  `UpdateDate` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `TennantId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Active` bit(1) default b'1',
  `Type` int(11) NOT NULL default '0',
  `InlineEdit` bit(1) NOT NULL,
  PRIMARY KEY  (`PageId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `DA_Pages`
--

INSERT INTO `DA_Pages` VALUES(32, 'Responsive Marketing', '\r\n&lt;h2&gt;Overview&lt;/h2&gt;        \r\n&lt;p&gt;For many companies, marketing can be a costly proposition \r\nthat represents a lot of energy but does not deliver a lot of light. \r\nFrom not taking advantage of new methods and techniques, to simply not \r\ngetting it right.&lt;/p&gt;        \r\n&lt;p&gt;Responsive Marketing is a term we use that takes into \r\nconsideration the many different elements and channels that are \r\navailable to use. Coupled with key messaging for your business or \r\nproducts you have the beginning of a new level of differentiation from \r\nyour competitors and have more effective access to your prospects and \r\ncustomers mindshare.&lt;/p&gt;        \r\n&lt;p&gt;Let us introduce you to a new service from Digiapolis: "CMO In The Cloudâ€&lt;/p&gt;        \r\n&lt;h2&gt;CMO In The Cloud&lt;/h2&gt;        \r\n&lt;p&gt;You are small to medium size company.  Your company and \r\nproducts are in the market and doing ok, however, you are spending a lot\r\n of money on market activities and possibly personnel that are not \r\ndriving the results you hoped for.  You may be big enough to spend the \r\nmoney on marketing but not big enough to benefit from the best \r\nstrategies or personnel to execute for you.  CMO In The Cloud brings \r\nSenior marketing experience to your team at a fraction of the cost of \r\nhiring your own CMO (Chief Marketing Officer), marketing executive, or \r\nseparate agency.  We couple the service to desired outcomes and a \r\nsubscription model that delivers services from the most basic, to the \r\nmost unique and comprehensive strategies that truly move the needle and \r\ndrive opportunity and closed business.&lt;/p&gt;        \r\n&lt;h2&gt;Services&lt;/h2&gt;        \r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Market Strategy&lt;/span&gt; â€“ We listen, research, and \r\nunderstand your business to work effectively with you and your teams to \r\ndevelop effective marketing plans that drive results. Nothing \r\nintergalactic, rather, straight forward plans with milestones that keep \r\nyour company engaged with tangible results. We believe in simple designs\r\n and maximum results. We focus on hard, tangible leads and awareness \r\nthat supports a perpetual interest in your organization, products, and \r\nservices.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;SEO &lt;/span&gt;â€“ We help you establish your SEO strategy and\r\n work with you to continuously analyze and manage your SEO to drive \r\ninterest to your sites and increase your search ratings. SEO is not \r\nmagic but extremely important to ensure you are coming as close to the \r\ntop of the most important searches. This ensures that people find you. \r\nItâ€™s todayâ€™s best practice.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Social Integrations&lt;/span&gt; â€“ Integrating to popular \r\nsocial sites is important. There are many reasons to integrate and many \r\ncontexts that your brand must support. Itâ€™s quite simple when you \r\nunderstand why these channels are important, how your messages become \r\nbroadcast to large groups of people, how SEO is impacted, and finally, \r\nhow you can step out of the crowd to be heard.\r\n                \r\n		&lt;p&gt;Let us help you define your social strategy, help you implement, and possibly provide ongoing support for your strategies.&lt;/p&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Email Marketing &lt;/span&gt;â€“ With all the changes upon us in\r\n social networking, itâ€™s easy to forget a very effective medium to \r\ncommunicate out to. Email marketing continues to be a low cost, high \r\nvalue, direct communication to people you want to reach. Let us help you\r\n be more effective by integrating these types of activities into your \r\noverall plan while ensuring best practice of your execution.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Marketing Campaigns&lt;/span&gt; â€“ Do you want to rollout a \r\nnew product or service? Let us help you strategize  and get the word out\r\n for you. Once the campaign is designed we can even help you run it \r\nusing your tools or ours.&lt;/li&gt;\r\n&lt;/ul&gt;        \r\n&lt;h2&gt;Bottom Line&lt;/h2&gt;\r\n&lt;p&gt; Itâ€™s April 8, 2013, 8:20 pm ESTâ€¦ do you know where your marketing dollars are right now and how they are working for you?&lt;/p&gt;&lt;br /&gt;\r\n', '2013-04-13 09:03:16', 62, 62, '', 0, '');
INSERT INTO `DA_Pages` VALUES(56, 'iTK', '\r\n&lt;div class="headline_area"&gt;\r\n	&lt;h1&gt;Solutions&lt;/h1&gt;&lt;/div&gt;\r\n&lt;h2&gt;Streamline ERP Support&lt;/h2&gt;\r\n&lt;p&gt;Well-designed&amp;nbsp;ERP systems can be an advantage in the marketplace. \r\n&amp;nbsp;And support for ERP systems is crucial for company operations.&lt;/p&gt;\r\n&lt;p&gt;&lt;span style="font-weight: bold;"&gt;&lt;span style="color: #ff0000;"&gt;i&lt;/span&gt;TKâ€™s&lt;/span&gt;&amp;nbsp;monitoring\r\n and managed services offer capabilities far beyond support. &amp;nbsp;As a \r\ntrusted partner, we function as a one-stop shop for ERP maintenance, \r\ncontinuous improvement, part-time projects, and optimization. &amp;nbsp;Our \r\ndiverse capability not only drives value on its own, but also allows \r\nin-house resources to focus on core competencies, which results in an \r\never-increasingly streamlined ERP solution.&lt;/p&gt;\r\n&lt;p align="center"&gt;&lt;span style="font-weight: bold;"&gt;Cost of Downtime Survey Results&lt;/span&gt;&lt;/p&gt;\r\n&lt;p align="center"&gt;* 46% of companies said each hour of downtime would cost their companies up to $50k&lt;br /&gt;\r\n	* 28% said each hour would cost between $51K and $250K&lt;br /&gt;\r\n	* 18% said each hour would cost between $251K and $1 million&lt;br /&gt;\r\n	* 8% said it would cost their companies more than $1 million per hour&lt;br /&gt;\r\n	&lt;span style="font-style: italic;"&gt;Source: 2001 Cost of Downtime Survey Results&lt;/span&gt;&lt;/p&gt;\r\n&lt;h2&gt;&lt;a href="http://itktechnologies.com/advantages-of-the-cloud" title="Advantages of the Cloud"&gt;Cloud Advantages and Business Continuity&lt;/a&gt;&amp;nbsp;&lt;a href="http://itktechnologies.com/advantages-of-the-cloud" title="Advantages of the Cloud"&gt;(click to learn more)&lt;/a&gt;&lt;/h2&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p align="center"&gt;&lt;span style="font-style: italic;"&gt;"23% of companies are planning and testing Cloud computing.â€&lt;/span&gt;&lt;/p&gt;\r\n&lt;p align="center"&gt;&lt;span style="font-style: italic;"&gt;â€” &lt;span style="font-style: italic;"&gt;Top Technology Predictions for 2010 and Beyond&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;Let &lt;span style="font-weight: bold;"&gt;&lt;span style="color: #ff0000;"&gt;i&lt;/span&gt;TKâ€™s&lt;/span&gt;&amp;nbsp;Business\r\n Continuity and Hosting Services provide failover, backup, and recovery \r\nprocesses that also provide a safe environment for patches, upgrades, \r\ntesting, and training.&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;Are your failover, backup, and recovery procedures adequate to restore data and operations?&lt;/li&gt;\r\n	&lt;li&gt;Do you know how long it will take to resume operations?&lt;/li&gt;\r\n	&lt;li&gt;What is the cost of restoring data that isnâ€™t properly backed up?&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Inadequate backup and recovery procedures can have serious \r\nconsequences.&amp;nbsp; Employees may be unable to work, external and internal \r\ncustomers may not be able to be served, and data may become inaccurate \r\nor incomplete â€“ all of these problems lead to high costs.&lt;/p&gt;\r\n&lt;p&gt;&lt;span style="font-weight: bold;"&gt;Customer Benefits&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;Operational:&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;Updating, patching, migration between onsite and Cloud system.&lt;/li&gt;\r\n	&lt;li&gt;Failover and disaster recovery â€“ backup data is available in 15-minute increments.&lt;/li&gt;\r\n	&lt;li&gt;Backup testing â€“ backup data is tested periodically.&lt;/li&gt;\r\n	&lt;li&gt;Training platform â€“ virtual system is ideal for training.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Financial:&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;Reduced risk of cost overruns â€“ highly scalable infrastructure is used.&lt;/li&gt;\r\n	&lt;li&gt;Conserves cash â€“ no capital cost (CAPEX) for infrastructure, support software, or computer room upgrades.&lt;/li&gt;\r\n	&lt;li&gt;No need to hire additional IT staff to get the expert skills needed \r\nto run and support Dynamics internally. All required operational IT \r\nservices are included.&lt;/li&gt;\r\n	&lt;li&gt;Reduce the cost of ongoing operations as a result of shared data center and shared IT support services.&lt;/li&gt;\r\n	&lt;li&gt;Project deployment speed is improved. Our servers are running and \r\nready now for the next Cloud-based deployment. Partners can get access \r\nto begin setups in days.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;span id="more-4"&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style="font-weight: bold;"&gt;&lt;span style="color: #ff0000;"&gt;i&lt;/span&gt;TKâ€™s &lt;/span&gt;Business \r\nContinuity Service is available for most Microsoft servers and \r\napplications.&amp;nbsp; We specialize in Lawson, Infor, AX, Exchange, and SQL.&amp;nbsp; \r\nLarge storage (in excess of 50GB) can be accommodated at additional \r\nincremental cost.&lt;/p&gt;\r\n&lt;h2&gt;&lt;span style="font-weight: bold;"&gt;&lt;a href="http://itktechnologies.com/erp-solutions-workforce" title="Mobile ERP Solutions &amp;amp; Workforce"&gt;Mobile ERP Solutions&lt;/a&gt;&amp;nbsp;&lt;/span&gt;&lt;a href="http://itktechnologies.com/erp-solutions-workforce" title="Mobile ERP Solutions &amp;amp; Workforce"&gt;(click to learn more)&lt;/a&gt;&lt;/h2&gt;\r\n&lt;p&gt;&lt;span style="font-weight: bold;"&gt;Mobile &lt;/span&gt;strategies are beginning to take form in the \r\nsmall-to-medium business ERP space â€“ devices like laptops, PDAs, and \r\ntablets make it possible to work on the road.&amp;nbsp; And now, workers can use \r\ntheir ERP applications on their mobile devices to take advantage of \r\nbusiness capabilities and insights.&lt;/p&gt;\r\n&lt;p&gt;&lt;span style="color: rgb(255, 0, 0); font-weight: bold;"&gt;i&lt;/span&gt;&lt;span style="font-weight: bold;"&gt;TKâ€™s&amp;nbsp;&lt;span style="font-weight: bold;"&gt;Browser Solutions &lt;/span&gt;&lt;/span&gt;and&lt;span style="font-weight: bold;"&gt;&lt;span style="font-weight: bold;"&gt; Direct Connect&lt;/span&gt;&amp;nbsp;&lt;/span&gt;products provide companies:&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Improved Quality of Service â€“&amp;nbsp;&lt;/span&gt;Mobile ERP systems \r\nallow employees to improve quality of service, to internal and external \r\ncustomers, by giving them greater access to relevant information.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Increased Productivity â€“&amp;nbsp;&lt;/span&gt;Many mobile workers spend \r\ntime driving in cars or sitting in airports. &amp;nbsp;Mobile ERP helps these \r\nemployees use that time productively.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;&lt;span style="font-weight: bold;"&gt;More In-Depth Business Relationships&lt;/span&gt;&amp;nbsp;â€“&amp;nbsp;&lt;/span&gt;Having information at their fingertips helps mobile workers deepen business relationships and response times with customers.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Competitive Advantage â€“&amp;nbsp;&lt;/span&gt;The ability to deliver real-time information on-the-spot to accounts helps organizations improve their competitive advantage.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Accurate Data Capture â€“&amp;nbsp;&lt;/span&gt;Mobile ERP software makes \r\nit easy for workers to enter all relevant data accurately as they gather\r\n it in the field without re-keying the data into back end systems \r\n(potentially making errors along the way).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;h2&gt;&lt;span style="font-weight: bold;"&gt;&lt;a href="http://itktechnologies.com/customize-my-erp" title="Customize My ERP"&gt;Customize My ERP&lt;/a&gt;&amp;nbsp;&lt;/span&gt;&lt;a href="http://itktechnologies.com/customize-my-erp" title="Customize My ERP"&gt;(click to learn more)&lt;/a&gt;&lt;/h2&gt;\r\n&lt;p&gt;&lt;span style="color: rgb(255, 0, 0); font-weight: bold;"&gt;i&lt;/span&gt;&lt;span style="font-weight: bold;"&gt;TKâ€™s Custom ERP group&amp;nbsp;&lt;/span&gt;provides\r\n both functional and technical custom ERP services that are focused on \r\nselection, planning, building, managing, and deploying a Web-enabled \r\nenterprise solution. &amp;nbsp;Our senior consultants provide innovative \r\nbusiness-defined technology ERP services that build upon and extend your\r\n organizationâ€™s business and IT infrastructure thereby enabling business\r\n growth.&lt;/p&gt;\r\n&lt;p&gt;Our business analysis process and project planning help ensure the \r\nalignment of your business, organizational, process, and technology \r\ngoals.&lt;/p&gt;\r\n&lt;p&gt;&lt;span style="font-weight: bold;"&gt;Find out more about &lt;span style="color: #ff0000;"&gt;i&lt;/span&gt;TKâ€™s ERP Management Consulting services:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style="font-weight: bold;"&gt;&lt;span style="color: #ff0000;"&gt;i&lt;/span&gt;TKâ€™s&lt;/span&gt; core \r\nproject methodology incorporates what we have learned through our \r\nextensive experience implementing Microsoft and Lawson Financial, Human \r\nCapital, and Supply Chain applications covering various enterprise \r\nrequirements. &amp;nbsp;Based on our clientsâ€™ needs and timelines, our \r\nmethodology can be very easily adapted. &amp;nbsp;We utilize a comprehensive \r\nrequirements analysis, design, planning, and testing methodology to \r\nensure that project goals are met in the shortest timeframe possible \r\nwith the best results.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	This proven methodology facilitates a quick start-up, an effective \r\nimplementation, and an on-time, on-budget project completion with \r\nexperienced:&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;Business Case/ ROI Analysis&lt;/li&gt;\r\n	&lt;li&gt;Business Process Review&lt;/li&gt;\r\n	&lt;li&gt;Requirements Definition&lt;/li&gt;\r\n	&lt;li&gt;Functional Assessments&lt;/li&gt;\r\n	&lt;li&gt;Knowledge Transfer&lt;/li&gt;\r\n	&lt;li&gt;Gap Analysis&lt;/li&gt;\r\n	&lt;li&gt;Requirements Definition&lt;/li&gt;\r\n	&lt;li&gt;Functional Analysis and Design&lt;/li&gt;\r\n	&lt;li&gt;E-Business/Web Requirements&lt;/li&gt;\r\n	&lt;li&gt;Project Planning and Sizing&lt;/li&gt;\r\n	&lt;li&gt;Project Management&lt;/li&gt;\r\n	&lt;li&gt;Best Practice Alignment&lt;/li&gt;\r\n	&lt;li&gt;Rapid Implementation&lt;/li&gt;\r\n	&lt;li&gt;Data Conversions&lt;/li&gt;\r\n	&lt;li&gt;Customizations&lt;/li&gt;\r\n	&lt;li&gt;Interface Design and Development&lt;/li&gt;\r\n	&lt;li&gt;Testing and Validation&lt;/li&gt;\r\n	&lt;li&gt;Performance Tuning&lt;/li&gt;\r\n	&lt;li&gt;Migrations and Upgrades&lt;/li&gt;\r\n	&lt;li&gt;Architecture and Support&lt;/li&gt;\r\n	&lt;li&gt;Disaster Recovery, Failover, and Cloud-based Business Continuity&lt;/li&gt;\r\n	&lt;li&gt;Project Management and Planning&lt;/li&gt;\r\n	&lt;li&gt;Post-Implementation Maintenance and Support&lt;/li&gt;\r\n	&lt;li&gt;End-User Training&lt;/li&gt;\r\n	&lt;li&gt;Security Design&lt;/li&gt;\r\n	&lt;li&gt;Documentation Services&lt;/li&gt;\r\n&lt;/ul&gt;', '2013-04-13 09:03:16', 62, 62, '\0', 0, '');
INSERT INTO `DA_Pages` VALUES(33, 'Web/Mobile Development', '        \r\n&lt;h2&gt;Overview&lt;/h2&gt;        \r\n&lt;p&gt;Digeapolis provides full service web development designed for\r\n the needs of small to medium sized organizations.  We listen, \r\ncollaborate, and deliver solutions that fit your budget, your \r\noperational needs, and represent scalable functionality that can be \r\neasily managed by your company or ours.&lt;/p&gt;        \r\n&lt;p&gt;We focus on internet development for all web and mobile \r\ndevices.  Our skills represent everything needed to develop solid \r\nsolutions that are elegant in design, forward thinking, and simple.&lt;/p&gt;        \r\n&lt;h3&gt;Site Building&lt;/h3&gt;        \r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Product Strategy&lt;/span&gt; â€“ From whole product solutions \r\nand designs, to technology strategy and acquisition, we can help you \r\ndevelop intellectual property that is strategic to your organization.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Responsive Design&lt;/span&gt; â€“ We approach all new sites \r\nfrom the perspectives of todayâ€™s users.  Our designs display on all \r\ndevices, including tablets, phones, and any web browser and can be \r\ndeveloped on just about any commercially available operating system. &lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Web Standard&lt;/span&gt; â€“ We follow the latest in "Web Standardsâ€ development for all development.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Professional Development&lt;/span&gt; â€“ We bring the processes and skills required to build solid solutions that are architected to scale and engineered to perform&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Mobile&lt;/span&gt; â€“ Based on your requirements, we can build\r\n mobile solutions that fit your needs and how your customers need to \r\ninteract.  Our specialties focus on responsive designs, "web appsâ€ based\r\n on HTML5, and interactive touch functionality.&lt;/li&gt;\r\n&lt;/ul&gt;        \r\n&lt;h3&gt;Custom Development&lt;/h3&gt;        \r\n&lt;p&gt;Digiapolis personnel have worked on some of the largest \r\nbusiness application developments in the country and have many years of \r\nexperience building high-end, custom web platforms and architectures \r\nthat meet the needs of your business, large scale users, and desired \r\nfunctionality.&lt;/p&gt;        \r\n&lt;p&gt;&lt;a href="http://www.digiapolis.com/#Skills"&gt;Learn more about our skills Â»&lt;/a&gt;&lt;/p&gt;        \r\n&lt;h3&gt;Bottom Line&lt;/h3&gt;        \r\n&lt;p&gt;We combine creativity, discipline, and professionalism to \r\nbuild solutions that have no missing pieces and represent your company \r\nas the company you want to be.&lt;/p&gt;', '2013-04-13 09:03:16', 62, 62, '', 0, '');
INSERT INTO `DA_Pages` VALUES(34, 'Social Business', '        \r\n&lt;h2&gt;Overview&lt;/h2&gt;        \r\n&lt;p&gt;Members of Digiapolis have been focused on the concepts of \r\nsocial for the last 10+ years, well before the term was coined.  Only in\r\n the past couple of years has the term been truly understood as a \r\nconcept by the masses.  With consumer level products such as Facebook, \r\nTwitter, LinkedIn, and others, more and more people have come to \r\nunderstand what it is and what the value is.&lt;/p&gt;        \r\n&lt;p&gt;Business has found &quot;Social&acirc;€ to be of great value in the \r\n&quot;broadcasting&acirc;€ of communications for their company &acirc;€“ many are \r\nintegrating their blogs and tweeting their ideas and assertions into the\r\n &quot;socialsphere&acirc;€.  The focus has been outbound communication and \r\ninteraction benefitting web site SEO, awareness of products and \r\nofferings, and hopefully new customers.  But is this enough to \r\ndifferentiate your company?&lt;/p&gt;        \r\n&lt;p&gt;Digiapolis consultants and developers are experts in social. \r\n Not just integrating your messages into standard consumer level tools &acirc;€“\r\n but also in building custom, private communities for your company \r\nintegrated into your web site, customer operations, and just about any \r\nexternal social or operational tool desired. We can help establish you \r\nas a leader in your industry with innovative functions for your \r\ncustomers and prospects that help them do their business better and \r\nultimately consider your company strategic to their goals.&lt;/p&gt;        \r\n&lt;h2&gt;Consulting&lt;/h2&gt;        \r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Education&lt;/span&gt; &acirc;€“ Let us help you understand what social is, what it can be, and where some innovative companies are taking it.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Audit and Assessment&lt;/span&gt; &acirc;€“ We can perform a formal \r\nassessment on your current strategy and execution and provide a \r\ncomparison to the benchmark of other companies that are getting great \r\nresults.&lt;/li&gt;\r\n&lt;/ul&gt;        \r\n&lt;h2&gt;Development&lt;/h2&gt;        \r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Design and Architect&lt;/span&gt; &acirc;€“ Let us help design and \r\narchitect your solution either as an independent design group or as part\r\n of your team.  Benefit from our experience.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Development&lt;/span&gt; &acirc;€“ We have been developing high-end \r\nenterprise software for more than 30 years with the last 10+ years \r\nfocused on commercial grade &acirc;€Social&acirc;€ solutions that have proven that our\r\n ideas work.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Deployment&lt;/span&gt; &acirc;€“ Proper roll out and community management is key to your success and ensuring adoption of your new ideas.&lt;/li&gt;\r\n&lt;/ul&gt;        \r\n&lt;h2&gt;Bottom Line&lt;/h2&gt;        \r\n&lt;p&gt;Ask yourself some basic questions. Do I want more customers? \r\nAm I compelling my customers to consider my company strategic to their \r\norganization? Am I truly helping my customers gain ground and \r\nintroducing them to others like them that extends their value in working\r\n with my company? If you answer &quot;no&quot; to any of these questions, we need \r\nto talk.&lt;/p&gt;', '2013-04-13 09:03:16', 62, 62, '', 0, '');
INSERT INTO `DA_Pages` VALUES(35, 'Skills', '\r\n&lt;p&gt;Knowing how to talk about it is one thing, knowing how to do it and do it right is another. Digiapolis brings incredible real world experience to your efforts and goals.&lt;/p&gt;\r\n&lt;div class=&quot;C1&quot;&gt;\r\n	&lt;h2&gt;Client Side&lt;/h2&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;HTML5&lt;/li&gt;\r\n		&lt;li&gt;CSS3&lt;/li&gt;\r\n		&lt;li&gt;OOCSS&lt;/li&gt;\r\n		&lt;li&gt;Javascript&lt;/li&gt;\r\n		&lt;li&gt;Ajax&lt;/li&gt;\r\n		&lt;li&gt;WordPress&lt;/li&gt;\r\n		&lt;li&gt;Drupal&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;h2&gt;Server Side&lt;/h2&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;PHP&lt;/li&gt;\r\n		&lt;li&gt;.Net&lt;/li&gt;\r\n		&lt;li&gt;C#&lt;/li&gt;\r\n		&lt;li&gt;JAVA&lt;/li&gt;\r\n		&lt;li&gt;C&lt;/li&gt;\r\n		&lt;li&gt;ASP - yes, we still do this :-)&lt;/li&gt;\r\n		&lt;li&gt;IIS&lt;/li&gt;\r\n		&lt;li&gt;Apache&lt;/li&gt;\r\n		&lt;li&gt;Server Side Agents/Scripts&lt;/li&gt;\r\n		&lt;li&gt;SMTP&lt;/li&gt;\r\n		&lt;li&gt;Google Analytics&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;h2&gt;eCommerce&lt;/h2&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;Authorize.net&lt;/li&gt;\r\n		&lt;li&gt;Custom&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;h2&gt;Database&lt;/h2&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;SQL Server&lt;/li&gt;\r\n		&lt;li&gt;MySQL&lt;/li&gt;\r\n		&lt;li&gt;Stored Procedures/Functions&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;h2&gt;Frameworks &amp;amp; Utilities&lt;/h2&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;scriptaculo.us&lt;/li&gt;\r\n		&lt;li&gt;JQuery&lt;/li&gt;\r\n		&lt;li&gt;JQuery Mobile&lt;/li&gt;\r\n		&lt;li&gt;Sencha Mobile (Touch)&lt;/li&gt;\r\n		&lt;li&gt;ImageMagik&lt;/li&gt;\r\n		&lt;li&gt;InnovaStudio&lt;/li&gt;\r\n	&lt;/ul&gt;&lt;/div&gt;\r\n&lt;div class=&quot;C2&quot;&gt;\r\n	&lt;h2&gt;Design&lt;/h2&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;Responsive Design &amp;amp; Development&lt;/li&gt;\r\n		&lt;li&gt;Web design&lt;/li&gt;\r\n		&lt;li&gt;Mobile design&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;h2&gt;Graphics&lt;/h2&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;Photoshop&lt;/li&gt;\r\n		&lt;li&gt;Illustrator&lt;/li&gt;\r\n		&lt;li&gt;Flash&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;h2&gt;Cloud&lt;/h2&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;SaaS - deployments&lt;/li&gt;\r\n		&lt;li&gt;Multi-tenant architectures&lt;/li&gt;\r\n		&lt;li&gt;High-volume user systems&lt;/li&gt;\r\n		&lt;li&gt;Hosting technology (domains, subs, IP, Etc)&lt;/li&gt;\r\n		&lt;li&gt;Acquisition&lt;/li&gt;\r\n	&lt;/ul&gt;&lt;/div&gt;', '2013-04-13 09:03:16', 62, 62, '', 0, '');
INSERT INTO `DA_Pages` VALUES(36, 'About Us', '\r\n&lt;p&gt;Digiapolis is an interactive web development and marketing company \r\nfocused on delivering opportunities to your business by bringing bold \r\nmarketing ideas, an effective use of technology, and a passion for \r\nexecution.&lt;/p&gt;        \r\n&lt;p&gt;We deliver our innovations to your company with services such\r\n as our new "CMO In the cloudâ€ product that helps you improve your \r\nimage, increase your awareness, and ultimately increase your market \r\nshare.  &lt;a href="http://www.digiapolis.com/?p=Home#ResponsiveMarketing"&gt;Learn more Â»&lt;/a&gt;&lt;/p&gt;        \r\n&lt;p&gt;Need some help with your product or IP strategy?  Considering\r\n integrating a social component into your site? Digiapolis has deep \r\nroots spanning over 10 years visioning and developing high-end, \r\ncommercial grade, successful collaboration experiences for some very \r\nlarge organizations.  &lt;a href="http://www.digiapolis.com/?p=Home#Skills"&gt;Check out our skillsÂ»&lt;/a&gt;&lt;/p&gt;        \r\n&lt;h2&gt;Innovative Services&lt;/h2&gt;        \r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;CMO In the cloud&lt;/span&gt; â€“ Delivering marketing results \r\nthat return value and drive opportunity is what this service is all \r\nabout.  Let us show you how CMO In the Cloud can deliver business \r\nresults that make sense.&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style="font-weight: bold;"&gt;Interactive Web/Mobile Development&lt;/span&gt; â€“ We can \r\nperform a formal assessment on your current strategy and execution and \r\nprovide a comparison to the benchmark of other companies that are \r\ngetting great results.&lt;/li&gt;\r\n&lt;/ul&gt;        \r\n&lt;h2&gt;Leadership&lt;/h2&gt;        \r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href="http://www.digiapolis.com/?p=About"&gt;&lt;span style="font-weight: bold;"&gt;Eric Lopez&lt;/span&gt; â€“ CEO &amp;amp; Founder&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href="http://www.digiapolis.com/?p=About%20Us#"&gt;&lt;span style="font-weight: bold;"&gt;Bill Geddy&lt;/span&gt; â€“ Chief Sales Officer&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;', '2013-04-13 09:03:16', 62, 62, '', 0, '');
INSERT INTO `DA_Pages` VALUES(37, 'Eric Lopez', '&lt;img src=&quot;http://www.digiapolis.com/images/me.jpeg&quot; class=&quot;MyPic&quot; /&gt;\r\n&lt;div class=&quot;AboutMe&quot;&gt;    \r\n	&lt;h3&gt;Eric Lopez&lt;/h3&gt;    \r\n	&lt;h3&gt;CEO, Founder&lt;/h3&gt;    \r\n	&lt;p&gt;4330 North Shore Drive&lt;/p&gt;    \r\n	&lt;p&gt;Minneapolis, Minnesota 55364&lt;/p&gt;&lt;/div&gt;\r\n&lt;p&gt;I bring more than 30 years of experience managing, developing and \r\nmarketing high-end enterprise class software solutions in the ERP, \r\nBusiness Intelligence, CRM, Cloud, Social and Collaboration areas. My \r\nexperience includes the development of solutions as well as the \r\ndevelopment and management of people, including budgeting, planning, \r\nstrategic visioning, analyst relations, and successfully working with \r\ninternal and external teams.&lt;/p&gt;\r\n&lt;p&gt;In addition to my ERP, and early pioneering in Business Intelligence,\r\n I am also a proven entrepreneur with early SaaS/Web 2.0, I have \r\ndeveloped a strong track record of visioning and developing high-end \r\ncollaboration/community sites for organizations such as the Mayo Clinic,\r\n Geek Squad, Microsoft, Lawson Software, and Cerner Healthcare. I am the\r\n founder and was President and key engineer/architect for \r\nDigitalConcourse.com; a commercial, web 2.0, digital community platform \r\nthat focuses on private customer based digital communities that drive \r\naffinity and marketing opportunities for organizations. \r\nDigitalConcourse.com was sold to Velocity Technology Solutions in 2008.&lt;/p&gt;\r\n&lt;p&gt;I focus on bringing fresh, innovative ideas, sleeves up execution \r\nexperience, and a positive attitude to the teams I manage and \r\nparticipate in.&lt;/p&gt;', '2013-04-13 09:03:16', 62, 62, '', 0, '');
INSERT INTO `DA_Pages` VALUES(55, 'Sue Page Design', '\r\n&lt;div&gt;Sue Page Design will help you with any creative challenges you may have decorating your home or business outside, inside, and on the table for special occasions.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;div align="center"&gt;\r\n		&lt;h2&gt;&lt;span style="text-decoration: underline;"&gt;Outside ~ Inside ~ On the Table &lt;/span&gt;&lt;/h2&gt;&lt;/div&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;table style="border-collapse:collapse;width:100%;"&gt;\r\n		&lt;tbody&gt;\r\n			&lt;tr&gt;\r\n				&lt;td align="left"&gt;&lt;img width="312" height="253" alt="" title="" src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20Outside.jpg" style="margin: 10px; border: 7px double rgb(134, 216, 0); padding: 10px;" /&gt;&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img width="203" height="254" style="border: 7px double rgb(134, 216, 0); margin: 10px; padding: 10px;" alt="" title="" src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20Outside%2003.jpg" /&gt;&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img width="292" height="251" style="border: 7px double rgb(134, 216, 0); padding: 10px; margin: 10px;" src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20Outside%2001.jpg" title="" alt="" /&gt;&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td align="left"&gt;&lt;img width="315" height="291" src="/Editor/assets/Sue%20Page%20Design%20Inside.jpg" title="" alt="" style="margin: 10px; border: 7px double rgb(134, 216, 0); padding: 10px;" /&gt;&lt;br /&gt;\r\n					&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img width="262" height="322" style="border-width: 7px; border-style: double; border-color: rgb(134, 216, 0); margin: 10px;" alt="" title="" src="/Editor/assets/Sue%20Page%20Design%20Inside%2005.jpg" /&gt;&lt;br /&gt;\r\n					&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img width="262" height="322" src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20Inside%2004.jpg" title="" alt="" style="border-width: 7px; border-style: double; border-color: rgb(134, 216, 0); margin: 10px;" /&gt;&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n			&lt;tr&gt;\r\n				&lt;td align="center"&gt;&lt;img src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20On%20the%20Table%2003.jpg" title="" alt="" style="border: 7px double rgb(134, 216, 0); padding: 10px; margin: 10px; width: 250px; height: 186px;" /&gt;&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img src="http://www.digiapolis.com/Editor/assets/Sue%20Page%20Design%20On%20the%20Table%2002.jpg" title="" alt="" style="border: 7px double rgb(134, 216, 0); padding: 10px; margin: 10px; width: 250px; height: 186px;" /&gt;&lt;br /&gt;\r\n					&lt;/td&gt;\r\n				&lt;td align="center"&gt;&lt;img style="border: 7px double rgb(134, 216, 0); margin: 10px; padding: 10px; width: 250px; height: 186px;" alt="" title="" src="/Editor/assets/Sue%20Page%20Design%20On%20the%20Table%2004.jpg" /&gt;&lt;br /&gt;\r\n					&lt;/td&gt;\r\n			&lt;/tr&gt;\r\n		&lt;/tbody&gt;\r\n	&lt;/table&gt;&lt;br /&gt;\r\n	&lt;/div&gt;&lt;br /&gt;\r\n\r\n&lt;div&gt;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n&lt;ol&gt;\r\n&lt;/ol&gt;', '2013-04-13 09:03:16', 66, 66, '\0', 0, '');
INSERT INTO `DA_Pages` VALUES(57, 'About Sue', '\r\n&lt;h1&gt;&lt;/h1&gt;\r\n&lt;div&gt;For many years Sue Page have been surrounded by creative people that have inspired her to express her passion for color, fabrics, art, and furniture.&amp;nbsp; Creating fun parties for birthdays, baby showers, holidays, and \r\nprofessional company gatherings with unique themes fulled with style.&lt;/div&gt;\r\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;Once the vision is clear on what needs to be accomplished, there is a plan put in place with open communication to make sure everyone is happy with the process of change.&lt;/div&gt;\r\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;Sue Page Design can help and make people happy with ideas and a plan for action.\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;', '2013-04-13 09:03:16', 66, 66, '\0', 0, '');
INSERT INTO `DA_Pages` VALUES(58, 'Services', 'Are you looking for:\r\n&lt;div&gt;\r\n	&lt;ul&gt;\r\n		&lt;li&gt;Outside landscaping? &lt;/li&gt;\r\n		&lt;li&gt;Outside decorating for a gathering or holiday?&lt;br /&gt;\r\n			&lt;/li&gt;\r\n		&lt;li&gt;Inside design?&lt;br /&gt;\r\n			&lt;/li&gt;\r\n		&lt;li&gt;Inside decorating for a gathering or holiday? &lt;br /&gt;\r\n			&lt;/li&gt;\r\n		&lt;li&gt;Or just need help with party ideas to create a unique experience?&lt;br /&gt;\r\n			&lt;/li&gt;\r\n	&lt;/ul&gt;&lt;br /&gt;\r\n	\r\n	&lt;div&gt;Please go to the Contact Sue tab to schedule an evaluation to create a successful&amp;nbsp; experience that everyone will love.&lt;/div&gt;\r\n	&lt;div&gt;&amp;nbsp;&lt;br /&gt;\r\n		\r\n		&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '2013-04-13 09:03:16', 66, 66, '\0', 0, '');
INSERT INTO `DA_Pages` VALUES(61, 'Contact Us', '\r\n&lt;div&gt;Susan Page Designs&lt;/div&gt;\r\n&lt;div&gt;12823 Hideaway Lane&lt;/div&gt;\r\n&lt;div&gt;San Diego, CA&amp;nbsp; 92131&lt;/div&gt;\r\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;Please inform us of your contact information:&lt;/div&gt;\r\n&lt;div&gt;Name:&lt;/div&gt;\r\n&lt;div&gt;Email:&lt;/div&gt;\r\n&lt;div&gt;Phone:&lt;/div&gt;\r\n&lt;div&gt;Purpose for us contacting you:&amp;nbsp; &lt;br /&gt;\r\n	\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;\r\n&lt;div&gt;&amp;nbsp;\r\n	&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;', '2013-04-13 09:03:16', 66, 66, '\0', 0, '');
INSERT INTO `DA_Pages` VALUES(63, 'Home', '\r\n&lt;div id="MainPane"&gt;    \r\n	&lt;div id="BigLogo"&gt;        \r\n		&lt;div&gt;&lt;img src="http://www.digiapolis.com/images/DA_BigLogo.png" id="DigiLogo" /&gt;&lt;/div&gt;        \r\n		&lt;div id="SocialLinks"&gt;            \r\n			&lt;div id="divTwitter"&gt;&lt;a target="_blank" href="http://www.twitter.com/Digiapolis" title="Visit us on Twitter"&gt;&lt;img src="http://www.digiapolis.com/images/DA_Twitter.png" /&gt;&lt;/a&gt;&lt;/div&gt;            \r\n			&lt;div id="divFaceBook"&gt;&lt;a target="_blank" href="http://www.facebook.com/Digiapolis" title="Visit us on FaceBook"&gt;&lt;img src="http://www.digiapolis.com/images/DA_Facebook.png" /&gt;&lt;/a&gt;&lt;/div&gt;            \r\n			&lt;div id="divBlog"&gt;&lt;a target="_blank" href="http://www.ChiefSocialStrategist.com" title="Check out our blog - ChiefSocialStrategist.com"&gt;&lt;img src="http://www.digiapolis.com/images/DA_Blog.png" /&gt;&lt;/a&gt;&lt;/div&gt;            &lt;br class="ClearFloatManual" /&gt;\r\n			        &lt;/div&gt;    &lt;/div&gt;    \r\n	&lt;div id="KeyMessages"&gt;        &lt;a href="http://www.digiapolis.com/#ResponsiveMarketing"&gt;Responsive Marketing&lt;/a&gt;        &lt;a href="http://www.digiapolis.com/#WebDevelopment"&gt;Web/Mobile Development&lt;/a&gt;        &lt;a href="http://www.digiapolis.com/#BusinessSocial"&gt;Social Business&lt;/a&gt;    &lt;/div&gt;&lt;/div&gt;        \r\n&lt;div id="WhatWeDo"&gt;    \r\n	&lt;p&gt;Digiapolis is an interactive marketing and web development \r\ncompany focused on delivering opportunities to your business bringing \r\nbold marketing ideas, \r\n        an effective use of technology, and a passion for execution.&lt;/p&gt;&lt;/div&gt;    \r\n&lt;div class="BasicTiles"&gt;        &lt;a href="http://www.digiapolis.com/#ResponsiveMarketing" class="StdScrollAnchor"&gt;            \r\n		&lt;div class="ServiceTile STOrange STResponsiveMarketing"&gt;                \r\n			&lt;div class="ServiceImage"&gt;&lt;img src="http://www.digiapolis.com/images/DA_ResponsiveMarketing.png" /&gt;&lt;/div&gt;                \r\n			&lt;div class="ServiceText"&gt;Responsive Marketing&lt;/div&gt;            &lt;/div&gt;        &lt;/a&gt;        &lt;a href="http://www.digiapolis.com/#WebDevelopment" class="StdScrollAnchor"&gt;            \r\n		&lt;div class="ServiceTile STBlue STWebDevelopment"&gt;                \r\n			&lt;div class="ServiceImage"&gt;&lt;img src="http://www.digiapolis.com/images/DA_WebDevelopment.png" /&gt;&lt;/div&gt;                \r\n			&lt;div class="ServiceText"&gt;Web/Mobile Development&lt;/div&gt;            &lt;/div&gt;        &lt;/a&gt;        &lt;a href="http://www.digiapolis.com/#BusinessSocial" class="StdScrollAnchor"&gt;            \r\n		&lt;div class="ServiceTile STGreen STBusinessSocial"&gt;                \r\n			&lt;div class="ServiceImage"&gt;&lt;img src="http://www.digiapolis.com/images/DA_BusinessSocial.png" /&gt;&lt;/div&gt;                \r\n			&lt;div class="ServiceText"&gt;Social Business&lt;/div&gt;            &lt;/div&gt;        &lt;/a&gt;        &lt;a href="http://www.digiapolis.com/#Skills" class="StdScrollAnchor"&gt;            \r\n		&lt;div class="ServiceTile STBlue STSkills"&gt;                \r\n			&lt;div class="ServiceImage"&gt;&lt;img src="http://www.digiapolis.com/images/DA_Skills.png" /&gt;&lt;/div&gt;                \r\n			&lt;div class="ServiceText"&gt;Skills&lt;/div&gt;            &lt;/div&gt;        &lt;/a&gt;        &lt;a href="http://www.digiapolis.com/?p=About%20Us" class="StdScrollAnchor Peeps" title="Learn more about us"&gt;            \r\n		&lt;div class="ServiceTile STPeople"&gt;                &lt;img src="http://www.digiapolis.com/images/MarketBold.jpg" /&gt;            &lt;/div&gt;        &lt;/a&gt;        &lt;br class="ClearFloatManual" /&gt;\r\n	    &lt;/div&gt;    \r\n&lt;div id="RSSTileContainer"&gt;        \r\n	&lt;div id="RSSTile"&gt;            \r\n		&lt;h3&gt;@Digiapolis - tweet. tweet.&lt;/h3&gt;            \r\n		&lt;div id="RSSPoll"&gt;\r\n			&lt;div class="RSSRow"&gt;\r\n				&lt;div class="RSSTitle"&gt;&lt;a title="Digiapolis: Love this capability - Upload an image via paste in 3.4 http://t.co/MHwH6X002Y #Development" href="http://twitter.com/Digiapolis/statuses/322779660180148224" target="_blank"&gt;Digiapolis: Love this capability - Upload an image via paste in 3.4 http://t.co/MHwH6X002Y  #Development&lt;/a&gt;&lt;/div&gt;\r\n				&lt;div class="RSSDate"&gt;21 Hours ago&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="RSSRow"&gt;\r\n				&lt;div class="RSSTitle"&gt;&lt;a title="Digiapolis: You might want to make sure it''s all a go next time. #socialbusiness. http://t.co/ro08SJlfIl" href="http://twitter.com/Digiapolis/statuses/322105665730510849" target="_blank"&gt;Digiapolis: You might want to make sure it''s all a go next time.  #socialbusiness. http://t.co/ro08SJlfIl&lt;/a&gt;&lt;/div&gt;\r\n				&lt;div class="RSSDate"&gt;2 Days ago&lt;/div&gt;&lt;/div&gt;\r\n			&lt;div class="RSSRow"&gt;\r\n				&lt;div class="RSSTitle"&gt;&lt;a title="Digiapolis: Great points! #Entrepreneur #Competitor http://t.co/xXWZXpJGOK" href="http://twitter.com/Digiapolis/statuses/321751802884280320" target="_blank"&gt;Digiapolis: Great points!  #Entrepreneur #Competitor\r\nhttp://t.co/xXWZXpJGOK&lt;/a&gt;&lt;/div&gt;\r\n				&lt;div class="RSSDate"&gt;3 Days ago&lt;/div&gt;&lt;/div&gt;\r\n			&lt;p class="More"&gt;&lt;a href="http://www.twitter.com/digiapolis" target="_blank" class="Twitter"&gt;See All Â»&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;        &lt;/div&gt;    &lt;/div&gt;    ', '2013-04-13 09:19:16', 62, 62, '\0', 0, '\0');
INSERT INTO `DA_Pages` VALUES(64, 'Product Test', '\r\n&lt;table width="" align="center" style="width: 100%; border-collapse: collapse;"&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style="width: 30%; letter-spacing: 0px; word-spacing: 0px;"&gt;\r\n				&lt;h2&gt;Heading 1&lt;/h2&gt;\r\n				&lt;p&gt;Place the text for your product here.&lt;/p&gt;&lt;/td&gt;\r\n			&lt;td style="width: 30%; letter-spacing: 0px; word-spacing: 0px;"&gt;\r\n				&lt;h2&gt;Heading 2&lt;/h2&gt;\r\n				&lt;p&gt;Place the text for your product here. &lt;/p&gt;&lt;/td&gt;\r\n			&lt;td style="width: 30%; letter-spacing: 0px; word-spacing: 0px;"&gt;\r\n				&lt;h2&gt;Heading 3&lt;/h2&gt;\r\n				&lt;p&gt;Place the text for your product here. &lt;/p&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;', '0000-00-00 00:00:00', 62, 62, '\0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `DA_Pwd`
--

DROP TABLE IF EXISTS `DA_Pwd`;
CREATE TABLE `DA_Pwd` (
  `PwdId` int(11) NOT NULL auto_increment,
  `UserId` int(11) NOT NULL,
  `PwdHash` varchar(255) NOT NULL,
  `ResetDate` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `Reset` bit(1) default b'0',
  PRIMARY KEY  (`PwdId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `DA_Pwd`
--

INSERT INTO `DA_Pwd` VALUES(11, 66, '3b61f6320cc928b81bd248257e7483291bca529b', '0000-00-00 00:00:00', '\0');
INSERT INTO `DA_Pwd` VALUES(8, 62, '5da04a00e96b014dd257ac3f3b143f4993af354c', '0000-00-00 00:00:00', '\0');

-- --------------------------------------------------------

--
-- Table structure for table `DA_SiteDetails`
--

DROP TABLE IF EXISTS `DA_SiteDetails`;
CREATE TABLE `DA_SiteDetails` (
  `TennantId` int(11) NOT NULL,
  `SiteTitle` varchar(500) NOT NULL,
  `ShortDesc` varchar(500) NOT NULL,
  `TrackingCode` text NOT NULL,
  `Favicon` varchar(255) default NULL,
  `PublicSite` varchar(1) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DA_SiteDetails`
--

INSERT INTO `DA_SiteDetails` VALUES(62, 'Test Site', 'adasdasdasdaddadad', '', '', '1');
INSERT INTO `DA_SiteDetails` VALUES(66, 'Sue Page Design', 'Sue Page Design will help you with any creative challenges you may have decorating your home or business outside, inside, and on the table for special occasions.', '', 'SPDesign', '1');

-- --------------------------------------------------------

--
-- Table structure for table `DA_User`
--

DROP TABLE IF EXISTS `DA_User`;
CREATE TABLE `DA_User` (
  `UserId` int(11) NOT NULL auto_increment,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `CompanyName` varchar(255) default NULL,
  `TimeZone` int(11) default NULL,
  `CreateDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `UpdateDate` datetime default NULL,
  `Permanent` bit(1) default b'0',
  PRIMARY KEY  (`UserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `DA_User`
--

INSERT INTO `DA_User` VALUES(66, 'Kaveney', 'Loring', 'OneXPage, LLC.', NULL, '2013-04-08 08:45:04', NULL, '');
INSERT INTO `DA_User` VALUES(62, 'Lopez', 'Eric', 'Digiapolis', NULL, '2013-03-24 18:42:12', NULL, '');
