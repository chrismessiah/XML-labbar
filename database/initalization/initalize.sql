--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: blogposts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE blogposts (
    id integer NOT NULL,
    user_id integer NOT NULL,
    image_name character varying(150) NOT NULL,
    category_id integer NOT NULL,
    title character varying(80) NOT NULL,
    intro character varying(500) NOT NULL,
    body text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE blogposts OWNER TO root;

--
-- Name: blogposts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE blogposts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blogposts_id_seq OWNER TO root;

--
-- Name: blogposts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE blogposts_id_seq OWNED BY blogposts.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying(15) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE categories OWNER TO root;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO root;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE migrations (
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE migrations OWNER TO root;

--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE password_resets OWNER TO root;

--
-- Name: users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE users (
    id integer NOT NULL,
    fb_id bigint,
    email character varying(255) NOT NULL,
    fullname character varying(255) NOT NULL,
    is_admin boolean DEFAULT false NOT NULL,
    password character varying(255),
    about character varying(255) DEFAULT 'I like Turtles!'::character varying NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE users OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY blogposts ALTER COLUMN id SET DEFAULT nextval('blogposts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: blogposts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY blogposts (id, user_id, image_name, category_id, title, intro, body, created_at, updated_at) FROM stdin;
6	1	ceb32430beaf3f8c4d476261a2f96647.jpeg	3	I really Need a shower	Im the intro yes I am!	I'm the body!	2016-10-07 16:30:40	2016-10-07 16:30:40
7	1	ea675c91f5ea5884930c877c1efee271.jpeg	3	Add a title here!	I'm the intro!	I'm the body!	2016-10-07 15:53:03	2016-10-07 15:53:03
5	1	2e08fe82b2cfaa90c88ce817bad48efe.jpeg	3	I'm a really important title	I'm an intro which is very interesting indeed!	I'm the body!	2016-10-07 16:51:51	2016-10-07 16:51:51
4	1	714a56733cb868f3a9164f26996683fe.jpeg	5	Falxcon revolutionizes Time-lapse tech&nbsp;	There are so many fun things to do and so many great landscapes to see on a houseboat vacation!o!	<p>If you really enjoy spending your vacation ‘on water’ or would like to try something new and exciting for the first time, then you can consider a houseboat vacation. But before making further plans, let’s take a look at the options that you have for a low-cost vacation on water: you could rent a houseboat this year and try out an altogether exotic kind of vacation this year, or you could indulge in a houseboat timeshare. What is a houseboat timeshare? Most people who have used a houseboat timeshare say that it is a great way to spend your vacation at a very high-quality resort, in a place where you couldn’t get reservations so easily that too at a very low price! Doesn’t that sound great? But let’s see how and why houseboat timeshares can offer you with such fabulous opportunities of low-cost vacationing on water. </p><h1>Low-cost vacationing on water</h1><p>Initially the concept of timeshare appeared somewhere in the 1960’s in France. The principle of a timeshare actually marketed the concept of ‘buying the hotel’ for vacationing. Indeed, timeshare is a form of real estate ownership, more precisely vacation property ownership. The owners divide the costs of running the resort and also the use of the place between themselves. This timeshare concept was first applied to land-resorts, but nowadays, we have all kinds of vacation properties, including houseboats. Houseboat timeshare works on a very simple principle. All 52 weeks of the year are divided between the owners (usually there are 51, considering that one week should remain for maintenance)! So they can own the resort on a 1/51 basis and can use the resort one week per year. Of course, one can buy as many houseboat timeshares as he/she wants to. But maybe you neither have the budget to do that nor the time. And spending your vacation in the same spot every year doesn’t seem to be such an exciting idea too! Therefore, several companies have been founded who promote the idea of exchanging timeshares. Thus being a timeshare owner helps you avail the opportunity to exchange the existing timeshare with someone else to a more pleasant vacation on a different spot for a very small fee. And so, with the houseboat timeshare you could spend less for a vacation that in other conditions would end up costing you quite a fortune.</p><blockquote>There are many companies out there that deal in timeshare and exchanging.&nbsp;</blockquote><p>Several of them deal with all types of vacation property ownership, like land resorts, houseboat timesharing or even motor homes, yachts and campgrounds.</p><p>If you want to consider houseboat timeshares for a low-cost vacation on water but don’t know if you will really like the concept, then I would recommend that you go to one of the exchange companies and try to get a vacation timeshare for a week. These companies have special offers for non-timeshare-owners. In this way, you can check out what you’ll be ‘owning’ and see if it suits you or not. And of course, you can make a comparison between renting and houseboat timeshare when it comes to the question of your budget. In this way you’ll be able to assess if it is more convenient for you to rent or to pay the company’s fee and the maintenance fee for a houseboat timeshare. Whatever be your choice, don’t forget to enjoy your low-cost vacation on water to the fullest!</p>	2016-10-07 09:34:58	2016-10-07 09:34:58
20	1	5521c769c90c3e6a658c1e979a89a5f0.jpg	1	20 Tips For Offshore Software Development	The further you get in your career, the harder it is to pinpoint — and then do something about — your personal and professional shortcomings.	The Iphone is staggeringly popular, although it hasn’t really come as much of a surprise – you only have to consider the Ipod as proof of Apple’s dominance with such gadgets. If you are lucky enough to be one of the early Iphone owners, check out these resources to help you get some free Iphone games.1-It’s one of the most obvious ways to find anything these days, but a simple google search can yield excellent results when you are looking for places to get your downloads. The downside of this is that after a little while you begin to realise that many of these sites have a few things in common. The trouble is that the sites that make themselves the most accessible in this way are the ones that are simply looking to make money with their advertising. They get paid for you to click on their ads, so it’s in their interest to drag as many visitors as possible into their site, and for this reason you’ll find that many of them offer no real downloads at all.<h1>The shortcomings you can’t see</h1>2-There is a slight variation on the sites above, in that they will offer a couple of Iphone downloads, whether they be games or movies or wallpapers or whatever, but they will be very old and dated, and in many cases once you complete the download you’ll find it doesn’t work anyway. The point of this is, you guessed it, just to attract visitors who may then click on the advertising and make some money. Not exactly a noble business model, but I guess it works as there seem to be enough sites like that around!<blockquote>If you think, “Sure, but that’s just who I am” — that’s a derailer too.</blockquote>3-The most obvious place for you to look when downloading just about anything these days is the torrent sites, peer to peer sites, or file sharing sites, or whatever they are called this week. I’m sure you know the ones-huge download collections, completely illegal to use, and yet it seems like everyone knows someone who has gone download crazy and downloaded huge amounts of things from there. Avoid these sites like the plague. It’s illegal to use them in most places, and also there are usually a fair amount of viruses etc to be found within their databases. Not cool!	2016-09-08 15:39:08	2016-10-07 10:54:17
38	1	ea675c91f5ea5884930c877c1efee271.jpeg	3	Add a title here!	I'm the intro!	I'm the body!	2016-10-08 15:53:03	2016-10-08 15:53:03
39	1	ceb32430beaf3f8c4d476261a2f96647.jpeg	3	I really Need a shower	Im the intro yes I am!	I'm the body!	2016-10-08 16:30:40	2016-10-08 16:30:40
24	1	69969303234c9583a4a001b6981b2ab7.jpeg	1	24 Tips For Offshore Software Development	The further you get in your career, the harder it is to pinpoint — and then do something about — your personal and professional shortcomings.	<p>The Iphone is staggeringly popular, although it hasn’t really come as much of a surprise – you only have to co</p><p></p><pre>dsfsdfsdfsdfsdfff</pre><p>sdf</p><h1>sdfs</h1><pre>df</pre><p>sdfs</p><p>df</p><p>sdf</p><p>sdf</p><p>sdf</p><p>sd</p><p>fsdfnsider the Ipod as proof of Apple’s dominance with such gadgets. If you are lucky enough to be one of the early Iphone owners, check out these resources to help you get some free Iphone games.</p><p>1-It’s one of the most obvious ways to find anything these days, but a simple google search can yield excellent results when you are looking for places to get your downloads. The downside of this is that after a little while you begin to realise that many of these sites have a few things in common. The trouble is that the sites that make themselves the most accessible in this way are the ones that are simply looking to make money with their advertising. They get paid for you to click on their ads, so it’s in their interest to drag as many visitors as possible into their site, and for this reason you’ll find that many of them offer no real downloads at all.</p><h1>The shortcomings you can’t see</h1>\r\n<pre>2-There is a slight&nbsp;</pre><p>variation on the sites above, in that they will offer a couple of Iphone downloads, whether they be games or movies or wallpapers or whatever, but they will be very old and dated, and in many cases once you complete the download you’ll find it doesn’t work anyway. The point of this is, you guessed it, just to attract visitors who may then click on the advertising and make some money. Not exactly a noble business model, but I guess it works as there seem to be enough sites like that around!</p><blockquote>If you think, “Sure, but that’s just who I am” — that’s a derailer too.</blockquote><p>3-The most obvious place for you to look when downloading just about anything these days is the torrent sites, peer to peer sites, or file sharing sites, or whatever they are called this week. I’m sure you know the ones-huge download collections, completely illegal to use, and yet it seems like everyone knows someone who has gone download crazy and downloaded huge amounts of things from there. Avoid these sites like the plague. It’s illegal to use them in most places, and also there are usually a fair amount of viruses etc to be found within their databases. Not cool!</p>	2016-09-08 15:39:12	2016-10-08 16:31:58
40	1	2e08fe82b2cfaa90c88ce817bad48efe.jpeg	3	I'm a really important title	I'm an intro which is very interesting indeed!	I'm the body!	2016-10-08 16:51:51	2016-10-08 16:51:51
43	1	8896e8a79e9b7911ad76c92d8ec1a1de.jpeg	2	The Meat market is seriously damaging the planet	Cataract surgery involves the surgical removal of the lens of an eye that has formed a cataract.	<p>Cataract extraction is the one of the most common eye surgeries performed and is widely regarded as being one of the safest procedures in the medical community. A cataract occurs when the crystalline lens of the eye becomes cloudy or opaque as a result of age, illness, or trauma. This cloudiness can interfere with the eye’s natural ability to direct light and focus an image on the retina. As a result, individuals with cataracts frequently experience a loss of vision. There is no known way to reverse the damage caused by cataracts, although the complete removal and replacement of the affected lens with an artificial lens can restore an individual’s vision.&nbsp;</p><p>The two most common procedures for cataract extraction are called ICCE (intracapsular cataract extraction) and ECCE (extracapsular cataract extraction). Both of these procedures are typically done under a local anesthetic on an out-patient basis, so cataract surgery patients are free to go home the same day.</p><blockquote>Extra-capsular surgery involves the removal of the affected lens while leaving the majority of the elastic lens capsule intact.&nbsp;</blockquote><p>This allows for the direct implantation of an intraocular lens into the lens capsule. Extracapsular surgery may be performed using one of two methods: conventional ECCE or phacoemulsification. Conventional ECCE involves making a small incision into the cornea or the sclera of the eye. The cataract is then manually removed through the incision so that a replacement intraocular lens can be inserted. Conventional ECCE is best suited for those patients who suffer from very hard cataracts or who have a weak or thin epithelium covering the cornea. The second method, phacoemulsification, makes use of an ultrasonic handpiece. Ultrasound waves vibrate the cataract, causing it to shatter and break up into a number of small pieces. These pieces are then removed through aspiration via a small incision in the cornea, after which a replacement intraocular lens can be inserted.</p><p>Phacoemulsification uses a much smaller incision and may not even require stitches, with the result that this procedure often affords patients a shorter recovery period. Intra-capsular surgery involves the removal of the entire lens of the eye including the lens capsule. This procedure was commonplace up until the 1980’s in the United States, but is rarely performed today due to medical advances in cataract surgery. To extract the lens the surgeon makes a large incision in the cornea and injects medicine into the eye. This causes the zonular fibers that hold the lens in position to break apart and dissolve. A small probe is inserted into the incision and placed on the lens so that it may be frozen via a cryogenic solution, such as liquid nitrogen.&nbsp;</p><p>The probe is then withdrawn from the eye, pulling with it the frozen lens. Once the affected lens has been removed, an intraocular lens implant may be inserted in front of the iris as a replacement. Finally the incision is stitched up. Intra-capsular surgery has a high risk of complications due to the pressure that is placed on the vitreous body of the eye during the procedure. Patients have a prolonged period of healing (up to 6 weeks), and are at a high risk for retinal detachment and swelling of the eye. It is for this reason that nearly all modern cataract extractions are performed via the extracapsular surgery method.</p>	2016-10-09 09:50:22	2016-10-09 09:50:22
45	1	fe83f99694b27858689c4730ce7ff150.jpeg	2	Typewriters inspires new methods in neural networks&nbsp;	There are several distinct categories for people that cause cybercrimes, and they are refereed as hacker, cracker, cyberterrorist, cyberextortionist, unethical employee, script kiddie and corporate spy.	<p>Today, many people rely on computers to do homework, work, and create or store useful information. Therefore, it is important for the information on the computer to be stored and kept properly. It is also extremely important for people on computers to protect their computer from data loss, misuse, and abuse. For example, it is crucial for businesses to keep information they have secure so that hackers can’t access the information.&nbsp;</p><p>Home users also need to take means to make sure that their credit card numbers are secure when they are participating in online transactions. A computer security risk is any action that could cause lost of information, software, data, processing incompatibilities, or cause damage to computer hardware,  a lot of these are planned to do damage. An intentional breach in computer security is known as a computer crime which is slightly different from a cypercrime. A cybercrime is known as illegal acts based on the internet and is one of the FBI’s top priorities. There are several distinct categories for people that cause cybercrimes, and they are refereed as hacker, cracker, cyberterrorist, cyberextortionist, unethical employee, script kiddie and corporate spy.&nbsp;</p><p>The term hacker was actually known as a good word but now it has a very negative view. A hacker is defined as someone who accesses a computer or computer network unlawfully. They often claim that they do this to find leaks in the security of a network. The term cracker has never been associated with something positive this refers to someone how intentionally access a computer or computer network for evil reasons. It’s basically an evil hacker. They access it with the intent of destroying, or stealing information. Both crackers and hackers are very advanced with network skills.&nbsp;</p><blockquote>A cyberterrorist is someone who uses a computer network or the internet to destroy computers for political reasons.&nbsp;</blockquote><p>It’s just like a regular terrorist attack because it requires highly skilled individuals, millions of dollars to implement, and years of planning. The term cyperextortionist is someone who uses emails as an offensive force. They would usually send a company a very threatening email stating that they will release some confidential information, exploit a security leak, or launch an attack that will harm a company’s network.</p><p>They will request a paid amount to not proceed sort of like black mailing in a since. An unethical employee is an employee that illegally accesses their company’s network for numerous reasons. One could be the money they can get from selling top secret information, or some may be bitter and want revenge. A script kiddie is someone who is like a cracker because they may have the intentions of doing harm, but they usually lack the technical skills. They are usually silly teenagers that use prewritten hacking and cracking programs. A corporate spy has extremely high computer and network skills and is hired to break into a specific computer or computer network to steal or delete data and information. Shady companies hire these type people in a practice known as corporate espionage.</p><p>They do this to gain an advantage over their competition an illegal practice. Business and home users must do their best to protect or safeguard their computers from security risks. The next part of this article will give some pointers to help protect your computer. However, one must remember that there is no one hundred percent guarantee way to protect your computer so becoming more knowledgeable about them is a must during these days. When you transfer information over a network it has a high security risk compared to information transmitted in a business network because the administrators usually take some extreme measures to help protect against security risks.</p><h1>Administrator hijack</h1><p>Over the internet there is no powerful administrator which makes the risk a lot higher. If your not sure if your computer is vulnerable to a computer risk than you can always use some-type of online security service which is a website that checks your computer for email and Internet vulnerabilities. The company will then give some pointers on how to correct these vulnerabilities. The Computer Emergency Response Team Coordination Center is a place that can do this. The typical network attacks that puts computers at risk includes viruses, worms, spoofing, Trojan horses, and denial of service attacks.&nbsp;</p><p>Every unprotected computer is vulnerable to a computer virus which is a potentially harming computer program that infects a computer negatively and altering the way the computer operates without the user’s consent. Once the virus is in the computer it can spread throughout infecting other files and potentially damaging the operating system itself. It’s similar to a bacteria virus that infects humans because it gets into the body through small openings and can spread to other parts of the body and can cause some damage. The similarity is, the best way to avoid is preparation. A computer worm is a program that repeatedly copies itself and is very similar to a computer virus. However the difference is that a virus needs o attach itself to an executable file and become a part of it. A computer worm doesn’t need to do that I seems copies to itself and to other networks and eats up a lot of bandwidth. A Trojan Horse named after the famous Greek myth and is used to describe a program that secretly hides and actually looks like a legitimate program but is a fake. A certain action usually triggers the Trojan horse, and unlike viruses and worms they don’t replicate itself. Computer viruses, worms, and Trojan horses are all classifies as malicious-logic programs which are just programs that deliberately harms a computer. Although these are the common three there are many more variations and it would be almost impossible to list them. You know when a computer is infected by a virus, worm, or Trojan horse.</p><h1>Trojan horses 2020</h1><p>Computer viruses, worms, and Trojan horses deliver their payload or instructions through four common ways. One, when an individual runs an infected program so if you download a lot of things you should always scan the files before executing, especially executable files. Second, is when an individual runs an infected program.&nbsp;</p><p>Third, is when an individual bots a computer with an infected drive, so that’s why it’s important to not leave media files in your computer when you shut it down. Fourth is when it connects an unprotected computer to a network. Today, a very common way that people get a computer virus, worm, or Trojan horse is when they open up an infected file through an email attachment. There are literally thousands of computer malicious logic programs and new one comes out by the numbers so that’s why it’s important to keep up to date with new ones that come out each day. Many websites keep track of this. There is no known method for completely protecting a computer or computer network from computer viruses, worms, and Trojan horses, but people can take several precautions to significantly reduce their chances of being infected by one of those malicious programs. Whenever you start a computer you should have no removable media in he drives. This goes for CD, DVD, and floppy disks. When the computer starts up it tries to execute a bot sector on the drives and even if it’s unsuccessful any given various on the bot sector can infect the computer’s hard disk. If you must start the computer for a particular reason, such as the hard disk fails and you are trying to reformat the drive make sure that the disk is not infected.</p>	2016-10-09 10:04:57	2016-10-09 10:04:57
42	1	714a56733cb868f3a9164f26996683fe.jpeg	5	Falxcon revolutionizes Time-lapse tech&nbsp;	There are so many fun things to do and so many great landscapes to see on a houseboat vacation!o!	<p>If you really enjoy spending your vacation ‘on water’ or would like to try something new and exciting for the first time, then you can consider a houseboat vacation. But before making further plans, let’s take a look at the options that you have for a low-cost vacation on water: you could rent a houseboat this year and try out an altogether exotic kind of vacation this year, or you could indulge in a houseboat timeshare. What is a houseboat timeshare? Most people who have used a houseboat timeshare say that it is a great way to spend your vacation at a very high-quality resort, in a place where you couldn’t get reservations so easily that too at a very low price! Doesn’t that sound great? But let’s see how and why houseboat timeshares can offer you with such fabulous opportunities of low-cost vacationing on water. </p><h1>Low-cost vacationing on water</h1><p>Initially the concept of timeshare appeared somewhere in the 1960’s in France. The principle of a timeshare actually marketed the concept of ‘buying the hotel’ for vacationing. Indeed, timeshare is a form of real estate ownership, more precisely vacation property ownership. The owners divide the costs of running the resort and also the use of the place between themselves. This timeshare concept was first applied to land-resorts, but nowadays, we have all kinds of vacation properties, including houseboats. Houseboat timeshare works on a very simple principle. All 52 weeks of the year are divided between the owners (usually there are 51, considering that one week should remain for maintenance)! So they can own the resort on a 1/51 basis and can use the resort one week per year. Of course, one can buy as many houseboat timeshares as he/she wants to. But maybe you neither have the budget to do that nor the time. And spending your vacation in the same spot every year doesn’t seem to be such an exciting idea too! Therefore, several companies have been founded who promote the idea of exchanging timeshares. Thus being a timeshare owner helps you avail the opportunity to exchange the existing timeshare with someone else to a more pleasant vacation on a different spot for a very small fee. And so, with the houseboat timeshare you could spend less for a vacation that in other conditions would end up costing you quite a fortune.</p><blockquote>There are many companies out there that deal in timeshare and exchanging.&nbsp;</blockquote><p>Several of them deal with all types of vacation property ownership, like land resorts, houseboat timesharing or even motor homes, yachts and campgrounds.</p><p>If you want to consider houseboat timeshares for a low-cost vacation on water but don’t know if you will really like the concept, then I would recommend that you go to one of the exchange companies and try to get a vacation timeshare for a week. These companies have special offers for non-timeshare-owners. In this way, you can check out what you’ll be ‘owning’ and see if it suits you or not. And of course, you can make a comparison between renting and houseboat timeshare when it comes to the question of your budget. In this way you’ll be able to assess if it is more convenient for you to rent or to pay the company’s fee and the maintenance fee for a houseboat timeshare. Whatever be your choice, don’t forget to enjoy your low-cost vacation on water to the fullest!</p>	2016-10-09 09:34:58	2016-10-09 09:34:58
46	1	2280f02064ae79b865a690849a0e2f07.jpeg	1	Apple revenues surge after exploding Samsung watches	Every product that is labeled as a Pocket PC must be accompanied with specific software to operate the unit and must feature a touchscreen and touchpad.	<p>A Pocket PC is a handheld computer, which features many of the same capabilities as a modern PC. These handy little devices allow individuals to retrieve and store e-mail messages, create a contact file, coordinate appointments, surf the internet, exchange text messages and more.</p><p>Pocket PC products are created by some of the world’s top computer manufacturers, including HP, Toshiba and Gateway. As is the case with any new technology product, the cost of a Pocket PC was substantial during it’s early release. For approximately $700.00, consumers could purchase one of top-of-the-line Pocket PCs in 2003. These days, customers are finding that prices have become much more reasonable now that the newness is wearing off. For approximately $350.00, a new Pocket PC can now be purchased.</p><h1>Pocket PCs unbounded</h1><p>Even years after their release, Pocket PCs are a staple in the world of travelers, college students and business leaders. The need to stay in constant communication with family and/or colleagues has kept the portability factor one that remains popular today. When traveling for business or other reason, individuals often need a way to stay in touch. A desktop computer is simply not a feasible accompaniment and notebooks are at a constant risk for being stolen or damaged. A Pocket PC can obviously fit inside of a pocket, but may also find a safe haven in a purse, duffle bag, tote or other small compartment.</p><p>Purchasing a Pocket PC can be a difficult choice because of the various models and manufacturers available. When considering the options, consumers must look at any available warranty, included software and capabilities.&nbsp;</p><blockquote>Much like in the world of traditional desktop and notebook computers, manufacturers are always looking for a way to outdo the competition.</blockquote><p>Like any other computer, a Pocket PC must be cared for in such a way that it is not exposed to extreme heat or cold for prolonged periods of time, is not shuffled around carelessly and is carefully packed for safety during travel. Owning a Pocket PC means having access to an address book, your e-mail account, the world wide web and your appointment calendar all in the comfort of your own pocket. Carrying the internet in your pocket? Now that is portability at it’s best.</p>	2016-10-09 10:13:13	2016-10-09 10:13:13
44	1	fbb018ec2924b946b93003a5757bd828.jpeg	5	This leica will kill the mirrorless DSLRs&nbsp;	There are several ways people can make money online. From selling products to advertising. In this article I am going to explain the concept of contextual advertising.	<p>First I will explain what contextual advertising is.&nbsp;</p><h2>Advertising 2016</h2><p>Contextual advertising means the advertising of products on a website according to the content the page is displaying. For example if the content of a website was information on a Ford truck then the advertisements would be for Ford trucks for sale, or Ford servicing etc. It picks up the words on the page and displays ads that are similar to those words. Then when someone either performs an action or clicks on your page you will get paid.</p><blockquote>Who can use contextual advertising on their website? Any one with content. Real content.</blockquote><p>Meaning not links or pictures but word content. There are several companies out there that offer contextual advertising programs. Some of the big ones include Yahoo and Google. Although Yahoo contextual advertising is currently only open to US publishers.</p><p>Contextual advertising programs sometimes have strict policies that need to be adhered too. Let’s take Google as an example. As mentioned above Google ads can only be placed on pages that have content on them. The most important rule when using contextual advertising is <b>DO NOT</b> click on your own ads. Google has terminated many publishers accounts due to this rule not being followed and have gone to court several times regarding this “<i>click fraud</i>”.</p><p>Contextual advertising can be profitable. It can either pay for your hosting and maintenance costs for your website or it can pay for a lot more. There are several people that are making thousands a month from contextual advertising. It all depends on the amount of traffic your website has and the manner in which you place the ads on your page. If you place them in prominent places on your pages then you can expect to earn more.</p>	2016-10-09 09:53:56	2016-10-09 09:53:56
3	1	8896e8a79e9b7911ad76c92d8ec1a1de.jpeg	2	The Meat market is seriously damaging the planet	Cataract surgery involves the surgical removal of the lens of an eye that has formed a cataract.	<p>Cataract extraction is the one of the most common eye surgeries performed and is widely regarded as being one of the safest procedures in the medical community. A cataract occurs when the crystalline lens of the eye becomes cloudy or opaque as a result of age, illness, or trauma. This cloudiness can interfere with the eye’s natural ability to direct light and focus an image on the retina. As a result, individuals with cataracts frequently experience a loss of vision. There is no known way to reverse the damage caused by cataracts, although the complete removal and replacement of the affected lens with an artificial lens can restore an individual’s vision.&nbsp;</p><p>The two most common procedures for cataract extraction are called ICCE (intracapsular cataract extraction) and ECCE (extracapsular cataract extraction). Both of these procedures are typically done under a local anesthetic on an out-patient basis, so cataract surgery patients are free to go home the same day.</p><blockquote>Extra-capsular surgery involves the removal of the affected lens while leaving the majority of the elastic lens capsule intact.&nbsp;</blockquote><p>This allows for the direct implantation of an intraocular lens into the lens capsule. Extracapsular surgery may be performed using one of two methods: conventional ECCE or phacoemulsification. Conventional ECCE involves making a small incision into the cornea or the sclera of the eye. The cataract is then manually removed through the incision so that a replacement intraocular lens can be inserted. Conventional ECCE is best suited for those patients who suffer from very hard cataracts or who have a weak or thin epithelium covering the cornea. The second method, phacoemulsification, makes use of an ultrasonic handpiece. Ultrasound waves vibrate the cataract, causing it to shatter and break up into a number of small pieces. These pieces are then removed through aspiration via a small incision in the cornea, after which a replacement intraocular lens can be inserted.</p><p>Phacoemulsification uses a much smaller incision and may not even require stitches, with the result that this procedure often affords patients a shorter recovery period. Intra-capsular surgery involves the removal of the entire lens of the eye including the lens capsule. This procedure was commonplace up until the 1980’s in the United States, but is rarely performed today due to medical advances in cataract surgery. To extract the lens the surgeon makes a large incision in the cornea and injects medicine into the eye. This causes the zonular fibers that hold the lens in position to break apart and dissolve. A small probe is inserted into the incision and placed on the lens so that it may be frozen via a cryogenic solution, such as liquid nitrogen.&nbsp;</p><p>The probe is then withdrawn from the eye, pulling with it the frozen lens. Once the affected lens has been removed, an intraocular lens implant may be inserted in front of the iris as a replacement. Finally the incision is stitched up. Intra-capsular surgery has a high risk of complications due to the pressure that is placed on the vitreous body of the eye during the procedure. Patients have a prolonged period of healing (up to 6 weeks), and are at a high risk for retinal detachment and swelling of the eye. It is for this reason that nearly all modern cataract extractions are performed via the extracapsular surgery method.</p>	2016-10-07 09:50:22	2016-10-07 09:50:22
2	1	fbb018ec2924b946b93003a5757bd828.jpeg	5	This leica will kill the mirrorless DSLRs&nbsp;	There are several ways people can make money online. From selling products to advertising. In this article I am going to explain the concept of contextual advertising.	<p>First I will explain what contextual advertising is.&nbsp;</p><h2>Advertising 2016</h2><p>Contextual advertising means the advertising of products on a website according to the content the page is displaying. For example if the content of a website was information on a Ford truck then the advertisements would be for Ford trucks for sale, or Ford servicing etc. It picks up the words on the page and displays ads that are similar to those words. Then when someone either performs an action or clicks on your page you will get paid.</p><blockquote>Who can use contextual advertising on their website? Any one with content. Real content.</blockquote><p>Meaning not links or pictures but word content. There are several companies out there that offer contextual advertising programs. Some of the big ones include Yahoo and Google. Although Yahoo contextual advertising is currently only open to US publishers.</p><p>Contextual advertising programs sometimes have strict policies that need to be adhered too. Let’s take Google as an example. As mentioned above Google ads can only be placed on pages that have content on them. The most important rule when using contextual advertising is <b>DO NOT</b> click on your own ads. Google has terminated many publishers accounts due to this rule not being followed and have gone to court several times regarding this “<i>click fraud</i>”.</p><p>Contextual advertising can be profitable. It can either pay for your hosting and maintenance costs for your website or it can pay for a lot more. There are several people that are making thousands a month from contextual advertising. It all depends on the amount of traffic your website has and the manner in which you place the ads on your page. If you place them in prominent places on your pages then you can expect to earn more.</p>	2016-10-07 09:53:56	2016-10-07 09:53:56
1	1	fe83f99694b27858689c4730ce7ff150.jpeg	2	Typewriters inspires new methods in neural networks&nbsp;	There are several distinct categories for people that cause cybercrimes, and they are refereed as hacker, cracker, cyberterrorist, cyberextortionist, unethical employee, script kiddie and corporate spy.	<p>Today, many people rely on computers to do homework, work, and create or store useful information. Therefore, it is important for the information on the computer to be stored and kept properly. It is also extremely important for people on computers to protect their computer from data loss, misuse, and abuse. For example, it is crucial for businesses to keep information they have secure so that hackers can’t access the information.&nbsp;</p><p>Home users also need to take means to make sure that their credit card numbers are secure when they are participating in online transactions. A computer security risk is any action that could cause lost of information, software, data, processing incompatibilities, or cause damage to computer hardware,  a lot of these are planned to do damage. An intentional breach in computer security is known as a computer crime which is slightly different from a cypercrime. A cybercrime is known as illegal acts based on the internet and is one of the FBI’s top priorities. There are several distinct categories for people that cause cybercrimes, and they are refereed as hacker, cracker, cyberterrorist, cyberextortionist, unethical employee, script kiddie and corporate spy.&nbsp;</p><p>The term hacker was actually known as a good word but now it has a very negative view. A hacker is defined as someone who accesses a computer or computer network unlawfully. They often claim that they do this to find leaks in the security of a network. The term cracker has never been associated with something positive this refers to someone how intentionally access a computer or computer network for evil reasons. It’s basically an evil hacker. They access it with the intent of destroying, or stealing information. Both crackers and hackers are very advanced with network skills.&nbsp;</p><blockquote>A cyberterrorist is someone who uses a computer network or the internet to destroy computers for political reasons.&nbsp;</blockquote><p>It’s just like a regular terrorist attack because it requires highly skilled individuals, millions of dollars to implement, and years of planning. The term cyperextortionist is someone who uses emails as an offensive force. They would usually send a company a very threatening email stating that they will release some confidential information, exploit a security leak, or launch an attack that will harm a company’s network.</p><p>They will request a paid amount to not proceed sort of like black mailing in a since. An unethical employee is an employee that illegally accesses their company’s network for numerous reasons. One could be the money they can get from selling top secret information, or some may be bitter and want revenge. A script kiddie is someone who is like a cracker because they may have the intentions of doing harm, but they usually lack the technical skills. They are usually silly teenagers that use prewritten hacking and cracking programs. A corporate spy has extremely high computer and network skills and is hired to break into a specific computer or computer network to steal or delete data and information. Shady companies hire these type people in a practice known as corporate espionage.</p><p>They do this to gain an advantage over their competition an illegal practice. Business and home users must do their best to protect or safeguard their computers from security risks. The next part of this article will give some pointers to help protect your computer. However, one must remember that there is no one hundred percent guarantee way to protect your computer so becoming more knowledgeable about them is a must during these days. When you transfer information over a network it has a high security risk compared to information transmitted in a business network because the administrators usually take some extreme measures to help protect against security risks.</p><h1>Administrator hijack</h1><p>Over the internet there is no powerful administrator which makes the risk a lot higher. If your not sure if your computer is vulnerable to a computer risk than you can always use some-type of online security service which is a website that checks your computer for email and Internet vulnerabilities. The company will then give some pointers on how to correct these vulnerabilities. The Computer Emergency Response Team Coordination Center is a place that can do this. The typical network attacks that puts computers at risk includes viruses, worms, spoofing, Trojan horses, and denial of service attacks.&nbsp;</p><p>Every unprotected computer is vulnerable to a computer virus which is a potentially harming computer program that infects a computer negatively and altering the way the computer operates without the user’s consent. Once the virus is in the computer it can spread throughout infecting other files and potentially damaging the operating system itself. It’s similar to a bacteria virus that infects humans because it gets into the body through small openings and can spread to other parts of the body and can cause some damage. The similarity is, the best way to avoid is preparation. A computer worm is a program that repeatedly copies itself and is very similar to a computer virus. However the difference is that a virus needs o attach itself to an executable file and become a part of it. A computer worm doesn’t need to do that I seems copies to itself and to other networks and eats up a lot of bandwidth. A Trojan Horse named after the famous Greek myth and is used to describe a program that secretly hides and actually looks like a legitimate program but is a fake. A certain action usually triggers the Trojan horse, and unlike viruses and worms they don’t replicate itself. Computer viruses, worms, and Trojan horses are all classifies as malicious-logic programs which are just programs that deliberately harms a computer. Although these are the common three there are many more variations and it would be almost impossible to list them. You know when a computer is infected by a virus, worm, or Trojan horse.</p><h1>Trojan horses 2020</h1><p>Computer viruses, worms, and Trojan horses deliver their payload or instructions through four common ways. One, when an individual runs an infected program so if you download a lot of things you should always scan the files before executing, especially executable files. Second, is when an individual runs an infected program.&nbsp;</p><p>Third, is when an individual bots a computer with an infected drive, so that’s why it’s important to not leave media files in your computer when you shut it down. Fourth is when it connects an unprotected computer to a network. Today, a very common way that people get a computer virus, worm, or Trojan horse is when they open up an infected file through an email attachment. There are literally thousands of computer malicious logic programs and new one comes out by the numbers so that’s why it’s important to keep up to date with new ones that come out each day. Many websites keep track of this. There is no known method for completely protecting a computer or computer network from computer viruses, worms, and Trojan horses, but people can take several precautions to significantly reduce their chances of being infected by one of those malicious programs. Whenever you start a computer you should have no removable media in he drives. This goes for CD, DVD, and floppy disks. When the computer starts up it tries to execute a bot sector on the drives and even if it’s unsuccessful any given various on the bot sector can infect the computer’s hard disk. If you must start the computer for a particular reason, such as the hard disk fails and you are trying to reformat the drive make sure that the disk is not infected.</p>	2016-10-07 10:04:57	2016-10-07 10:04:57
9	1	5521c769c90c3e6a658c1e979a89a5f0.jpg	1	20 Tips For Offshore Software Development	The further you get in your career, the harder it is to pinpoint — and then do something about — your personal and professional shortcomings.	The Iphone is staggeringly popular, although it hasn’t really come as much of a surprise – you only have to consider the Ipod as proof of Apple’s dominance with such gadgets. If you are lucky enough to be one of the early Iphone owners, check out these resources to help you get some free Iphone games.1-It’s one of the most obvious ways to find anything these days, but a simple google search can yield excellent results when you are looking for places to get your downloads. The downside of this is that after a little while you begin to realise that many of these sites have a few things in common. The trouble is that the sites that make themselves the most accessible in this way are the ones that are simply looking to make money with their advertising. They get paid for you to click on their ads, so it’s in their interest to drag as many visitors as possible into their site, and for this reason you’ll find that many of them offer no real downloads at all.<h1>The shortcomings you can’t see</h1>2-There is a slight variation on the sites above, in that they will offer a couple of Iphone downloads, whether they be games or movies or wallpapers or whatever, but they will be very old and dated, and in many cases once you complete the download you’ll find it doesn’t work anyway. The point of this is, you guessed it, just to attract visitors who may then click on the advertising and make some money. Not exactly a noble business model, but I guess it works as there seem to be enough sites like that around!<blockquote>If you think, “Sure, but that’s just who I am” — that’s a derailer too.</blockquote>3-The most obvious place for you to look when downloading just about anything these days is the torrent sites, peer to peer sites, or file sharing sites, or whatever they are called this week. I’m sure you know the ones-huge download collections, completely illegal to use, and yet it seems like everyone knows someone who has gone download crazy and downloaded huge amounts of things from there. Avoid these sites like the plague. It’s illegal to use them in most places, and also there are usually a fair amount of viruses etc to be found within their databases. Not cool!	2016-09-07 15:39:08	2016-10-07 10:54:17
8	1	69969303234c9583a4a001b6981b2ab7.jpeg	1	24 Tips For Offshore Software Development	The further you get in your career, the harder it is to pinpoint — and then do something about — your personal and professional shortcomings.	<p>The Iphone is staggeringly popular, although it hasn’t really come as much of a surprise – you only have to co</p><p></p><pre>dsfsdfsdfsdfsdfff</pre><p>sdf</p><h1>sdfs</h1><pre>df</pre><p>sdfs</p><p>df</p><p>sdf</p><p>sdf</p><p>sdf</p><p>sd</p><p>fsdfnsider the Ipod as proof of Apple’s dominance with such gadgets. If you are lucky enough to be one of the early Iphone owners, check out these resources to help you get some free Iphone games.</p><p>1-It’s one of the most obvious ways to find anything these days, but a simple google search can yield excellent results when you are looking for places to get your downloads. The downside of this is that after a little while you begin to realise that many of these sites have a few things in common. The trouble is that the sites that make themselves the most accessible in this way are the ones that are simply looking to make money with their advertising. They get paid for you to click on their ads, so it’s in their interest to drag as many visitors as possible into their site, and for this reason you’ll find that many of them offer no real downloads at all.</p><h1>The shortcomings you can’t see</h1>\n<pre>2-There is a slight&nbsp;</pre><p>variation on the sites above, in that they will offer a couple of Iphone downloads, whether they be games or movies or wallpapers or whatever, but they will be very old and dated, and in many cases once you complete the download you’ll find it doesn’t work anyway. The point of this is, you guessed it, just to attract visitors who may then click on the advertising and make some money. Not exactly a noble business model, but I guess it works as there seem to be enough sites like that around!</p><blockquote>If you think, “Sure, but that’s just who I am” — that’s a derailer too.</blockquote><p>3-The most obvious place for you to look when downloading just about anything these days is the torrent sites, peer to peer sites, or file sharing sites, or whatever they are called this week. I’m sure you know the ones-huge download collections, completely illegal to use, and yet it seems like everyone knows someone who has gone download crazy and downloaded huge amounts of things from there. Avoid these sites like the plague. It’s illegal to use them in most places, and also there are usually a fair amount of viruses etc to be found within their databases. Not cool!</p>	2016-09-07 15:39:12	2016-10-07 16:31:58
\.


--
-- Name: blogposts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('blogposts_id_seq', 49, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: root
--

COPY categories (id, name, created_at, updated_at) FROM stdin;
2	science	2016-09-08 15:38:49	2016-09-08 15:38:49
4	economics	2016-09-08 15:38:49	2016-09-08 15:38:49
3	wild media	2016-09-08 15:38:49	2016-09-08 15:38:49
6	business	2016-09-08 15:38:49	2016-09-08 15:38:49
5	gear	2016-09-08 15:38:49	2016-09-08 15:38:49
1	tech	2016-09-08 15:38:49	2016-09-08 15:38:49
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('categories_id_seq', 5, true);


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY migrations (migration, batch) FROM stdin;
2014_10_12_000000_create_users_table	1
2014_10_12_100000_create_password_resets_table	1
2016_08_26_111957_create_categories_table	1
2016_08_26_111959_create_blogpost_table	1
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: root
--

COPY password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY users (id, fb_id, email, fullname, is_admin, password, about, remember_token, created_at, updated_at) FROM stdin;
3	10154296549384761	christianabdelmassih@gmail.com	Christian Abdelmassih	f	\N	I like Turtles!	08cv9Jvd7phUUZkRWP5eMF3ZOrSy3Pfe25BmXTM05JCftenF9zs33mAvUztC	2016-09-09 20:54:15	2016-10-07 07:32:48
2	\N	chrabd@kth.se	Christian Abdel	f	$2y$10$N1KnUXUUmg0HDWGv4i0voO35vYbwTrEFIWQQEmpP0zhEcNjzBfvPu	Copywriter who covers design news. Find out more about him at www.website.com	sbfsXY3zAHBfZHZIVydfzSc7p0GDOIjYPsmYiZCWDW4TyNhWcyoYdm6Aixz3	2016-09-08 15:38:48	2016-10-08 17:53:53
1	\N	superuser@superuser.com	superuser superuser	t	$2y$10$Ac9SitW1rA041PZTEw4SDu41zNhEk1MmdX9XDcWjx9WiITPmL269y	In reality Christian, the dev of this site! :D	M5C9Q7H9zvsiynhLOZB3yO35tOpeI5FMduXGGEPZQ8oyPaOpulXT7jRtfpKx	2016-09-08 15:38:48	2016-09-08 15:38:48
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('users_id_seq', 3, true);


--
-- Name: blogposts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY blogposts
    ADD CONSTRAINT blogposts_pkey PRIMARY KEY (id);


--
-- Name: categories_name_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_name_unique UNIQUE (name);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: users_email_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users_fb_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_fb_id_unique UNIQUE (fb_id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX password_resets_email_index ON password_resets USING btree (email);


--
-- Name: password_resets_token_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX password_resets_token_index ON password_resets USING btree (token);


--
-- Name: blogposts_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY blogposts
    ADD CONSTRAINT blogposts_category_id_foreign FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: blogposts_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY blogposts
    ADD CONSTRAINT blogposts_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

