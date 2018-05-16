-- MySQL dump 10.13  Distrib 5.7.19, for linux-glibc2.12 (i686)
--
-- Host: localhost    Database: db_kslive
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog_inf`
--

DROP TABLE IF EXISTS `blog_inf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_inf` (
  `bID` int(11) NOT NULL AUTO_INCREMENT,
  `bTitle` varchar(255) DEFAULT NULL,
  `bType` varchar(255) DEFAULT NULL,
  `bSrc` varchar(255) DEFAULT NULL,
  `bInfo` varchar(255) DEFAULT NULL,
  `bCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_inf`
--

LOCK TABLES `blog_inf` WRITE;
/*!40000 ALTER TABLE `blog_inf` DISABLE KEYS */;
INSERT INTO `blog_inf` VALUES (1,'Java环境变量','Java基础','blogs/jconfig.docx','这是我的第一篇博客，简单讲解一下：JAVA环境变量配置（windows系统）1.JAVA_HOME：   jdk安装jdk目录  (如：c:\\java\\jdk_1.8 )',676),(2,'回调函数','Java基础','blogs/others.docx','说明：在java中回调函数是通过对象作为参数传递回调函数的\r\n一般是在需要对某一特定的数据或信息作不同处理时则会用到回调。',223),(3,'native关键字','Java基础','blogs/others.docx','下面我们就来看看这个native的用处吧：\r\nJava不是完美的，Java的不足除了体现在运行速度上要比传统的C++慢许多之外，Java无法直接访问到操作系统底层（如系统硬件等)，为此Java使用native方法来扩展Java程序的功能。',706),(4,'基本数据类型','Java基础','blogs/others.docx','各位同学，还记得在我们Java中的八大基本数据类型吗？\r\n他们分别是：byte int short long float double boolean char\r\n下面时候他们之间的转换：',738),(5,'代码块','Java基础','blogs/others.docx','在java中的代码块有三种不同类型，其中的static静态代码块有着比较大的作用',16),(6,'Exception与error','Java异常','blogs/others.docx','Error（错误）表示系统级的错误和程序不必处理的异常，是java运行环境中的内部错误或者硬件问题。比如：内存资源不足等。对于这种错误，程序基本无能为力，除了退出运行外别无选择，它是由Java虚拟机抛出的。\r\n\r\nException（违例）表示需要捕捉或者需要程序进行处理的异常，它处理的是因为程序设计的瑕疵而引起的问题或者在外的输入等引起的一般性问题，是程序必须处理的。',22),(7,'常见的异常','Java异常','blogs/others.docx','Exception又分为运行时异常，受检查异常。\r\n       运行时异常，表示无法让程序恢复的异常，导致的原因通常是因为执行了错误的操作，建议终止程序，因此，编译器不检查这些异常。\r\n       受检查异常，是表示程序可以处理的异常，也即表示程序可以修复（由程序自己接受异常并且做出处理）， 所以称之为受检查异常。',34),(8,'finally关键字','Java异常','blogs/others.docx','SQLException\r\nClassNotFoundException\r\n\r\nFinally的奇特之处：\r\n猜猜这段代码的输出是啥哦',20),(9,'线程阻塞','Java线程','blogs/others.docx','线程在运行的过程中因为某些原因而发生阻塞，阻塞状态的线程的特点是：\r\n\r\n该线程放弃CPU的使用，暂停运行\r\n\r\n只有等到导致阻塞的原因消除之后才恢复运行。或者是被其他的线程中断，该线程也会退出阻塞状态，同时抛出 InterruptedException。\r\n\r\n        导致阻塞的原因有很多种，大致分为三种来讨论，分别是一般线程中的阻塞，Socket客户端的阻塞，Socket服务器端的阻塞。',32),(10,'lock与synchronize比较','Java线程','blogs/others.docx','一个 Lock 对象和一个 synchronized 代码块之间的主要不同点是：\r\n\r\n•	synchronized 代码块不能够保证进入访问等待的线程的先后顺序。\r\n•	你不能够传递任何参数给一个 synchronized 代码块的入口。因此，对于 synchronized 代码块的访问等待设置超时时间是不可能的事情。\r\n•	synchronized 块必须被完整地包含在单',4),(11,'.进程与线程','Java线程','blogs/others.docx','进程\r\n       是一个“执行中的程序”。程序是一个没有生命的实体，只有处理器赋予程序生命时，它才能成为一个活动的实体，我们称其为进程。  \r\n 线程\r\n      通常在一个进',32),(12,'后台线程与守护线程','Java线程','blogs/others.docx','4. 后台线程与守护线程\r\n后台线程与守护线程的基本概念和关系如下：\r\n4. 后台线程与守护线程\r\n后台线程与守护线程的基本概念和关系如下：',32),(13,'线程生命周期','Java线程','blogs/others.docx','public enum State {\r\n    \r\n        NEW,\r\n        RUNNABLE,\r\n        BLOCKED,\r\n        WAITING, \r\n        TIMED_WAITING,\r\n        TERMINATED',8),(14,'Jsp基础知识','JavaWeb','blogs/others.docx','1..Jsp相关知识点概括如下：\r\n一、   Jsp9大内置对象\r\n1 request\r\n2 reponse          \r\n3 session           HttpSession\r\n4 application',28),(15,'Javaweb的xml配置','JavaWeb','blogs/xmlconfig.docx','1.	web.xml的配置\r\n这个配置其实在tomcat更目录下的conf/web.xml文件中即可拷贝，无需刻意去记忆的\r\n咱们只要会用就行！\r\n<?xml version=\"1.0\" encoding=\"utf8\"?>',28),(16,'mybatis配置','JDBC知识','blogs/xmlconfig.docx','核心配置\r\n在这里咱们需要配置数据源以及相关的映射文件的地址\r\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE configuration PUBLIC \"-//mybatis.org//DTD Config 3.0//EN\"\r\n\"http://mybatis.org/dtd/mybatis-3-config.dtd\">\r\n<configuration>',34),(17,'springmvc的相关配置','spring学习','blogs/xmlconfig.docx','在springmvc中有几个重要的控制器需要在这里提前介绍一下\r\n1.前端控制器（DispatcherServlet）\r\n2.处理器映射器(SimpleUrlHandlerMapping / BeanNameUrlHandlerMapping)\r\n3.处理器适配器(SimpleControllerHandlerAdapter / HttpRequestHandlerAdapter)\r\n4.处理器(controller 需要实现相关适配器定义的接口已达到适配的效果)',60),(18,'spring中bean的创建方式','spring学习','blogs/spring-bean.docx','JavaBean 是一种JAVA语言写成的可重用组件。为写成JavaBean，类必须是具体的和公共的，并且具有无参数的构造器。JavaBean 通过提供符合一致性设计模式的公共方法将内部域暴露成员属性，long和class方法获取。众所周知，属性名称符合这种模式，其他Java 类可以通过自省机制发现和操作这些JavaBean 的属性。',85),(19,'Ioc注解实例','spring学习','blogs/spring-bean.docx','IOC（DI）：其实这个Spring架构核心的概念没有这么复杂，更不像有些书上描述的那样晦涩。Java程序员都知道：java程序中的每个业务逻辑至少需要两个或以上的对象来协作完成，通常，每个对象在使用他的合作对象时，自己均要使用像new object（） 这样的语法来完成合作对象的申请工作。你会发现：对象间的耦合度高了。而IOC的思想是：Spring容器来实现这些相互依赖对象的创建、协调工作。对象只需要关系业务逻辑本身就可以了。从这方面来说，对象如何得到他的协作对象的责任被反转了（IOC、DI）。',93),(20,'使用扫描器管理bean','spring学习','blogs/spring-bean.docx','注解（Annotation），也叫元数据。一种代码级别的说明。它是JDK1.5及以后版本引入的一个特性，与类、接口、枚举是在同一个层次。它可以声明在包、类、字段、方法、局部变量、方法参数等的前面，用来对这些元素进行说明，注释。\r\n作用分类：\r\n①编写文档：通过代码里标识的元数据生成文档【生成文档doc文档】\r\n② 代码分析：通过代码里标识的元数据对代码进行分析【使用反射】\r\n③编译检查：通过代码里标识的元数据让编译器能够实现基本的编译检查【Override】',24),(21,'aop开发第一篇','spring学习','blogs/spring-aop.docx','AOP(Aspect Oriented Programming)，面向切面编程。通过预编译的方式在运行期通过动态代理实现的一种的技术。AOP是OOP的延续，利用AOP可以实现业务和切面的逻辑分离，降低耦合度，程序的重用性提高。',25),(22,'aop开发第二篇','spring学习','blogs/spring-aop.docx','AOP学习第二篇@AfterReturning此注解标注的方法执行时期为目标方法得到返回值之后，亦在后置通知之后执行，目的在于对返回值进行修改封装\r\n@AfterReturning(pointcut=\"targetMethod()\",returning=\"user\")',18),(23,'java内省机制','Java基础','blogs/java内省机制.docx','内省(Introspector) 是Java 语言对 JavaBean 类属性、事件的一种缺省处理方法。\r\nJavaBean是一种特殊的类，主要用于传递数据信息，这种类中的方法主要用于访问私有的字段，且方法名符合某种命名规则。如果在两个模块之间传递信息，可以将信息封装进JavaBean中，这种对象称为“值对象”(Value Object)，或“VO”。方法比较少。这些信息储存在类的私有变量中，通过set()、get()获得。',43),(24,'static关键字（java）','Java基础','blogs/static关键字.docx','static表示“全局”或者“静态”的意思，用来修饰成员变量和成员方法，也可以形成静态static代码块，但是Java语言中没有全局变量的概念。 \r\n\r\n　被static修饰的成员变量和成员方法独立于该类的任何对象。也就是说，它不依赖类特定的实例，被类的所有实例共享。只要这个类被加载，Java虚拟机就能根据类名在运行时数据区的方法区内定找到他们。因此，static对象可以在它的任何对象创建之前访问，无需引用任何对象。',44),(25,'sql学习join连接','sql知识点','blogs/sql知识点.docx','SQL 是用于访问和处理数据库的标准的计算机语言。SQL 指结构化查询语言,SQL 使我们有能力访问数据库,SQL 是一种 ANSI 的标准计算机语言',11),(26,'hibernate性能优化','hibernate','blogs/hibernate.docx','Hibernate是一个开放源代码的对象关系映射框架，它对JDBC进行了非常轻量级的对象封装，它将POJO与数据库表建立映射关系，是一个全自动的orm框架，hibernate可以自动生成SQL语句，自动执行，使得Java程序员可以随心所欲的使用对象编程思维来操纵数据库。 Hibernate可以应用在任何使用JDBC的场合，既可以在Java的客户端程序使用，也可以在Servlet/JSP的Web应用中使用，最具革命意义的是，Hibernate可以在应用EJB的J2EE架构中取代CMP，完成数据持久化的重任。',42),(27,'hibernate查询','hibernate','blogs/hibernate.docx','HQL（Hibernate Query Language）提供更加丰富灵活、更为强大的查询能力；\r\nHQL更接近SQL语句查询语法；\r\n[select/delete/update…][from…][where…][group by…][having…][order by…]',37),(28,'hibernate关联关系','hibernate','blogs/hibernate.docx','两个数据库及其（数据）表之间的数据的相互依赖和影响关系。比如现有某学校三个数据表：学生（学号，姓名），课程（课程名，课程编号），选课（学号，课程号，成绩）。选课表中的“学号”，“课程号”必须是另外两个表中存在的数据，才有意义；而且一旦另外两表中的某一学生或课程被删除，选课表中的相应学号或课程号必须自动删除。这就是一种关联关系。它实际上是保证数据完整性的一种做法。',33),(29,'hibernate核心API','hibernate','blogs/hibernate.docx','Configuration类:\r\nConfiguration对象用于配置和启动hibernate。Hibernate应用通过Configuration实例来指定对象-关系映射文件的位置或者动态配置Hibernate的属性，然后创建SessionFactory实例。\r\nSessionFactory接口：\r\n一个SessionFactory实例对应一个数据存储源。应用从SessionFactory中获取Session实例。Session接口：\r\n是Hibernate应用最广泛的接口。它提供了和持久化相关的操作',36),(30,'spring包中的jdbc','spring学习','blogs/spring-jdbc.docx','JdbcTemplate类 \r\n\r\nJdbcTemplate是core包的核心类。它替我们完成了资源的创建以及释放工作，从而简化了我们对JDBC的使用。它还可以帮助我们避免一些常见的错误，比如忘记关闭数据库连接。JdbcTemplate将完成JDBC核心处理流程，比如SQL语句的创建、执行，而把SQL语句的生成以及查询结果的提取工作留给我们的应用代码。它可以完成SQL查询、更新以及调用存储过程，可以对ResultSet进行遍历并加以提取。它还可以捕获JDBC异常并将其转换成org.springframew',34),(31,'spring事务管理一','spring学习','blogs/事务管理.docx','Spring并不直接管理事务，而是提供了多种事务管理器，他们将事务管理的职责委托给Hibernate或者JTA等持久化机制所提供的相关平台框架的事务来实现。 \r\nSpring事务管理器的接口是org.springframework.transaction.PlatformTransactionManager，通过这个接口，Spring为各个平台如JDBC、Hibernate等都提供了对应的事务管理器，但是具体的实现就是各个平台自己的事情了。',25),(32,'spring事务管理二','spring学习','blogs/事务管理第二篇','数据库的并发性是用来解决多个用户对同一数据进行操作时的问题。\r\n特别是对于网络数据库来说，这个特点更加突出。\r\n提高数据库的处理速度，单单依靠提高计算机的物理速度是不够的，还必须充分考虑数据库的并发性问题，提高数据并发性的效率。',46),(33,'linux基础命令','linux',NULL,'玩过Linux的人都会知道，Linux中的命令的确是非常多，但是玩过Linux的人也从来不会因为Linux的命令如此之多而烦恼，因为我们只需要掌握我们最常用的命令就可以了。当然你也可以在使用时去找一下man，他会帮你解决不少的问题。',16),(34,'linux基础命令（第二篇）','linux',NULL,'本篇是接前一篇，继续介绍linux的基本常用命令',10),(35,'Java四大特性','Java',NULL,'Java具有四大基本特性，即抽象、封装、继承和多态',32),(36,'方法重写和重载','Java基础',NULL,'最近看了一下关于java的基础知识，对此作了一下搜集整理: java中的继承，方法覆盖（重写）override与方法的重载overload的区别 方法的重写(Overriding)和重载(Overloading)是Java多态性的不同表现。',35),(37,'关于String','Java基础',NULL,'相信String这个类是Java中使用得最频繁的类之一，并且又是各大公司面试喜欢问到的地方，今天就来和大家一起学习一下String、StringBuilder和StringBuffer这几个类，分析它们的异同点以及了解各个类适用的场景。',36);
/*!40000 ALTER TABLE `blog_inf` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 trigger after_insert_article
 
after insert on blog_inf
 
for each row
 
begin
 
update site_statistics set articleCount = (select a.count from(select articleCount count from site_statistics where id = 1)a)+1;
 
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `hqq_hj_qy`
--

DROP TABLE IF EXISTS `hqq_hj_qy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hqq_hj_qy` (
  `hash_unique` varchar(255) NOT NULL,
  `qyname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`hash_unique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hqq_hj_qy`
--

LOCK TABLES `hqq_hj_qy` WRITE;
/*!40000 ALTER TABLE `hqq_hj_qy` DISABLE KEYS */;
INSERT INTO `hqq_hj_qy` VALUES ('1111aaaa','qqqq','aaaa','1','2017-11-25'),('2222bbbb','wwww','ssss','0','2017-11-24'),('3333cccc','eeee','dddd','1','2017-11-26');
/*!40000 ALTER TABLE `hqq_hj_qy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg`
--

DROP TABLE IF EXISTS `msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg` (
  `mID` int(11) NOT NULL AUTO_INCREMENT,
  `mContent` varchar(2550) DEFAULT NULL,
  `mName` varchar(2550) DEFAULT NULL,
  `mTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg`
--

LOCK TABLES `msg` WRITE;
/*!40000 ALTER TABLE `msg` DISABLE KEYS */;
INSERT INTO `msg` VALUES (1,'MyBatis将数据缓存设计成两级结构，分为一级缓存、二级缓存，具体不太清楚哎','Java低级码农','2017-08-29 17:36:50'),(2,'求问下大佬springboot如何获取静态文件的路径啊','Java低级码农','2017-08-29 20:02:15'),(3,'\r\nresultMap需要将实体类的全部字段都映射吗？','Java低级码农','2017-08-29 17:36:41'),(5,'我想知道啥是spring boot呢？<img src=\"img/face/yw_thumb.gif\" title=\"[疑问]\">','麻瓜家族丶族长','2017-08-29 20:00:00');
/*!40000 ALTER TABLE `msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qq_hj_qy`
--

DROP TABLE IF EXISTS `qq_hj_qy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qq_hj_qy` (
  `hash_unique` varchar(255) NOT NULL,
  `tongid` bigint(20) DEFAULT NULL,
  `qyname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`hash_unique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qq_hj_qy`
--

LOCK TABLES `qq_hj_qy` WRITE;
/*!40000 ALTER TABLE `qq_hj_qy` DISABLE KEYS */;
/*!40000 ALTER TABLE `qq_hj_qy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_statistics`
--

DROP TABLE IF EXISTS `site_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitorCount` int(11) DEFAULT NULL,
  `articleCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_statistics`
--

LOCK TABLES `site_statistics` WRITE;
/*!40000 ALTER TABLE `site_statistics` DISABLE KEYS */;
INSERT INTO `site_statistics` VALUES (1,626,37);
/*!40000 ALTER TABLE `site_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_photo`
--

DROP TABLE IF EXISTS `tb_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_photo` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `url` varchar(21) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_photo`
--

LOCK TABLES `tb_photo` WRITE;
/*!40000 ALTER TABLE `tb_photo` DISABLE KEYS */;
INSERT INTO `tb_photo` VALUES (1,'images/photos/1.jpg','秋收冬藏'),(2,'images/photos/2.jpg','唇色满园'),(3,'images/photos/3.jpg','春雨如油'),(4,'images/photos/4.jpg','春蚓秋蛇'),(5,'images/photos/5.jpg','春深似海'),(6,'images/photos/6.jpg','春意盎然'),(7,'images/photos/7.jpg','秋兰飘香'),(8,'images/photos/8.jpg','铁树开花'),(9,'images/photos/9.jpg','屈指可数'),(10,'images/photos/10.jpg','寥若星辰'),(11,'images/photos/11.jpg','秋风送爽'),(12,'images/photos/12.jpg','枯枝败叶'),(13,'images/photos/13.jpg','春色撩人'),(14,'images/photos/14.jpg','满山红叶'),(15,'images/photos/15.jpg','万紫千红'),(16,'images/photos/16.jpg','五彩缤纷 '),(17,'images/photos/17.jpg','灯红酒绿'),(18,'images/photos/18.jpg','水流湍急'),(19,'images/photos/19.jpg','一泻千里'),(20,'images/photos/20.jpg','波澜壮阔'),(21,'images/photos/21.jpg','水滴石穿'),(22,'images/photos/22.jpg','流水无情'),(23,'images/photos/23.jpeg','杯水车薪'),(24,'images/photos/24.jpeg','姹紫嫣红'),(25,'images/photos/25.jpeg','秋风瑟瑟 '),(26,'images/photos/26.jpg','绿水青山'),(27,'images/photos/27.jpg','春雨绵绵'),(28,'images/photos/28.jpg',' 郁郁葱葱'),(29,'images/photos/29.jpg','秋月春风'),(30,'images/photos/30.jpg','虎尾春冰'),(31,'images/photos/31.jpg','春葩丽藻'),(32,'images/photos/32.jpg','春笋怒发'),(33,'images/photos/33.jpg','唇色满园'),(34,'images/photos/34.jpg','凤毛麟角'),(35,'images/photos/35.jpg','峰峦雄伟'),(36,'images/photos/36.jpg','空前绝后'),(37,'images/photos/37.jpg','春深似海'),(38,'images/photos/38.jpg','别有洞天'),(39,'images/photos/39.jpg','霜叶知秋'),(40,'images/photos/40.jpg','黄叶纷飞'),(41,'images/photos/41.jpg','独占鳌头'),(42,'images/photos/42.jpg','光彩夺目'),(43,'images/photos/43.jpeg','翠色欲流'),(44,'images/photos/44.jpeg','古色古香'),(45,'images/photos/45.jpeg','漫山遍野'),(46,'images/photos/46.jpeg','崇山峻岭'),(47,'images/photos/47.jpeg','秋月如镜'),(48,'images/photos/48.jpeg','水平如镜'),(49,'images/photos/49.jpg','锦绣河山'),(50,'images/photos/50.jpg','江山如画'),(51,'images/photos/51.jpg','还我河山'),(52,'images/photos/52.jpg','大好河山'),(53,'images/photos/53.jpg','山穷水尽'),(54,'images/photos/54.jpg','重峦叠嶂'),(55,'images/photos/55.jpg','银装素裹'),(56,'images/photos/56.jpg','独树一帜'),(57,'images/photos/57.jpg','秋水盈盈'),(58,'images/photos/58.jpg','春华秋实'),(59,'images/photos/59.jpg','丹桂飘香'),(60,'images/photos/60.jpg','漫江碧透');
/*!40000 ALTER TABLE `tb_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_reply`
--

DROP TABLE IF EXISTS `tb_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_reply` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) DEFAULT NULL,
  `rcontent` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `rtime` datetime DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `m_r` (`mid`),
  CONSTRAINT `m_r` FOREIGN KEY (`mid`) REFERENCES `msg` (`mID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_reply`
--

LOCK TABLES `tb_reply` WRITE;
/*!40000 ALTER TABLE `tb_reply` DISABLE KEYS */;
INSERT INTO `tb_reply` VALUES (12,'Java低级码农','用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。<img title=\"[酷]\" src=\"img/face/cool_thumb.gif\"><img title=\"[酷]\" src=\"img/face/cool_thumb.gif\"><img title=\"[酷]\" src=\"img/face/cool_thumb.gif\">',5,'2017-08-29 20:43:00');
/*!40000 ALTER TABLE `tb_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_base`
--

DROP TABLE IF EXISTS `user_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_base` (
  `uID` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(255) DEFAULT NULL,
  `uPassword` varchar(255) DEFAULT NULL,
  `dID` int(11) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  KEY `U_D` (`dID`),
  CONSTRAINT `U_D` FOREIGN KEY (`dID`) REFERENCES `user_detail` (`dID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_base`
--

LOCK TABLES `user_base` WRITE;
/*!40000 ALTER TABLE `user_base` DISABLE KEYS */;
INSERT INTO `user_base` VALUES (1,'BryanSun','yhysjks.',1),(2,'麻瓜家族丶族长','yhysjks.',2),(3,'第三人称','admin123',3),(4,'第四人称','admin123',4),(5,'本一','wxy515922',5);
/*!40000 ALTER TABLE `user_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_detail` (
  `dID` int(11) NOT NULL AUTO_INCREMENT,
  `uEmail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
INSERT INTO `user_detail` VALUES (1,'kslive@yeah.net'),(2,'kslive@yeah.net'),(3,'12345@163.com'),(4,'123456@163.com'),(5,'48788697@qq.com');
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `vID` int(11) NOT NULL AUTO_INCREMENT,
  `vName` varchar(255) DEFAULT NULL,
  `vUrl` varchar(255) DEFAULT NULL,
  `vImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'行尸走肉(The walking dead)','xz_views/walking_seson8.html','images/walkingdead/walkingdead.jpg'),(2,'明日传奇（The green arrow）','xz_views/arrow_seson5.html','images/legends/legends.jpg'),(3,'神盾局特工(Agents Of SHIELD)','xz_views/shield_seson5.html','images/shield/shield.jpg'),(4,'闪 电 侠（The Flash）第五季','xz_views/flash_seson4.html','images/flash/flash.jpg'),(5,'国土安全(HomeLand)','xz_views/homeland_seson1.html','images/homeland/homeland.jpg'),(6,'吸血鬼日记(The Vampire daries)','xz_views/vampire_season6.html','images/vampire/vampire.jpg');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_detail`
--

DROP TABLE IF EXISTS `video_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_detail` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `season` tinyint(4) DEFAULT NULL,
  `episode` int(2) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_detail`
--

LOCK TABLES `video_detail` WRITE;
/*!40000 ALTER TABLE `video_detail` DISABLE KEYS */;
INSERT INTO `video_detail` VALUES (1,8,1,'行尸走肉.The.Walking.Dead.S08E01.中英字幕..mp4','ed2k://|file|%E8%A1%8C%E5%B0%B8%E8%B5%B0%E8%82%89.The.Walking.Dead.S08E01.%E4%B8%AD%E8%8B%B1%E5%AD%97%E5%B9%95.HDTVrip.720P-%E4%BA%BA%E4%BA%BA%E5%BD%B1%E8%A7%86.mp4|569775247|4c3c869d672b058c33ce322d1a34282f|h=75idaskmvwwngs6vjr37dsrursihz5sz|/',1),(2,8,2,'行尸走肉.The.Walking.Dead.S08E02.中英字幕..mp4','ed2k://|file|%E8%A1%8C%E5%B0%B8%E8%B5%B0%E8%82%89.The.Walking.Dead.S08E02.%E4%B8%AD%E8%8B%B1%E5%AD%97%E5%B9%95.HDTVrip.720P-%E4%BA%BA%E4%BA%BA%E5%BD%B1%E8%A7%86.mp4|507404601|f8c9d945fcb4db4b553f4193870855ed|h=jqrkxgp4f4l6hjiagaumobzkmne744ae|/',1),(3,8,3,'行尸走肉.The.Walking.Dead.S08E03.中英字幕..mp4','ed2k://|file|%E8%A1%8C%E5%B0%B8%E8%B5%B0%E8%82%89.The.Walking.Dead.S08E03.%E4%B8%AD%E8%8B%B1%E5%AD%97%E5%B9%95.HDTVrip.720P-%E4%BA%BA%E4%BA%BA%E5%BD%B1%E8%A7%86.mp4|499037783|4d0df84c78c02588e412d26d2d1a0830|h=j6cxzpqkselq3igls4xdh7vi6kubbjt7|/',1);
/*!40000 ALTER TABLE `video_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-26 22:19:51
