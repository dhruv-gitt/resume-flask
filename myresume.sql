-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2023 at 10:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myresume`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `sno` int(111) NOT NULL,
  `tittle` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `img` varchar(50) NOT NULL,
  `sno2` int(111) NOT NULL,
  `tittle2` text NOT NULL,
  `content2` text NOT NULL,
  `slug2` varchar(20) NOT NULL,
  `img2` varchar(30) NOT NULL,
  `Date2` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`sno`, `tittle`, `slug`, `content`, `Date`, `img`, `sno2`, `tittle2`, `content2`, `slug2`, `img2`, `Date2`) VALUES
(1, '8 tools every platform engineer should know about', 'blog-page1', 'You can’t be a platform engineer without knowing the latest tools. In this article, we’re going to look at some of the common tools that are utilized as a part of platform engineering toolchains. \r\nMany of these tools may be familiar to you, such as Docker and Kubernetes. Others may be quite new, such as Backstage and Humanitec. These new tools are software specifically designed for Internal Developer Platforms (IDP) such as portals for accessing Platform Engineering offerings. All of these are applications and frameworks that platform engineers can use to automate, orchestrate, monitor, and secure the platforms they create.', '2023-10-25', 'tools.jpg', 2, 'The Ray-Ban Meta smart glasses actually make the future look cool', 'I\'m a smart glasses skeptic. Not because the technology is impossible but because I’ve tested several pairs and even dove deep into the category for a two-part mini-documentary a while back. So when I say I was impressed by the $299 Ray-Ban Meta smart glasses, it’s not just that mine came with rose-colored lenses.\r\n\r\nTo be clear, nothing about the Ray-Ban Meta smart glasses is revolutionary. The Google Glass Explorer Edition first introduced us to modern-day smart glasses in 2013. Several other companies, big and small, have since jumped on the bandwagon, including Snap, Bose, Razer, Epson, Amazon, and the now-defunct Focals by North. Most were underwhelming, with potato cameras, washed-out displays, useless voice assistants, and middling mics. I had a hard time imagining the average person liking them enough to own a pair.', 'blog-page2', 'glasses.jpg', '2023-10-25'),
(3, 'Don’t believe everything you see and hear about Israel and Palestine', 'blog-page3', 'After Hamas militants launched a surprise attack on Israel on October 7, killing at least 1,000 and taking at least 150 hostages, and Israel declared war against Hamas and retaliated, photographs and videos of violence flooded out of the region and onto social media. Some of the images were posted by victims on the ground at the attacks. Some were reportedly seeded by Hamas, but others were years old, taken from conflict zones in other parts of the world, or even from a fictional video game. For the average internet user, knowing what information to trust online has never been more challenging.', '2023-10-25', 'dont.jpg', 4, 'Net neutrality is back, but it’s not what you think', 'Five years after net neutrality’s (temporary) demise, the Federal Communications Commission (FCC) is set to fulfill the Biden administration’s vision of re-implementing the Obama-era policy. That means the effort to reclassify broadband internet from an information service to a common carrier, subject to increased oversight and regulations just like phone companies, is back, too.\r\n\r\nThe agency just got its third Democratic commissioner, Anna Gomez, after waiting nearly two years for the Senate to confirm a Biden appointment (a previous Biden nominee, Gigi Sohn, withdrew in March). The 2–2 deadlock that prevented the agency from making any politicized changes has now been broken, and FCC chair Jessica Rosenworcel clearly doesn’t want to waste any more time. Net neutrality, which she’s a longtime proponent of, is first on the agenda.\r\n\r\nSign up for the newsletter', 'blog-page4', 'netneutral.jpg', '2023-10-25'),
(5, 'Gen Z workers are changing what it means to network', 'gen-z', 'Gen Z is networking more than any other generation on LinkedIn—and they’re networking in new ways. \r\n\r\nHistorically, young people would create LinkedIn accounts because their schools told them it was a good idea for their careers. They would check their feed periodically, post the cliché “I’m happy to announce” post when they landed a job, and put on an insincere corporate persona. I know, because I’m a member of Gen Z myself, and because I have interviewed countless fellow members of my generation on the subjects of networking, job seeking, and interviewing. \r\n\r\nBut now, Gen Z is changing what it means to network—especially on LinkedIn. \r\n\r\n“Gen Z is networking the most on the platform, making the most connections month-over-month,” says Suzi Owens, senior director of corporate communications at LinkedIn. “Younger generations in the U.S. are growing their network at a faster rate than older generations, including 28.7% more monthly connections than millennials, 54.7% more than Gen X, and 143.5% (over twice as many) than boomers.”\r\n\r\nAnd the networks that Gen Z is building are more diverse and community-oriented than past generations. Owens says they are using “internet sleuthing” skills to research, find, and connect with people who have similar backgrounds and journeys, emphasizing the importance of peer-to-peer networking rather than just top-down networking. And they are leading with authenticity, being open about their values, and even breaking the ice with a joke. \r\n\r\nI interviewed 10 Gen Z thought leaders to ask them how they network differently on LinkedIn, and here’s what I found.\r\n\r\nREDEFINING WHAT NETWORKING MEANS\r\nMillions have seen the Duolingo Owl on TikTok. Duolingo’s account, which is one of the most successful company accounts on the platform, is run by Gen Z marketing leader Zaria Parvez, who says it’s important to redefine networking. “There’s been a shift from traditional networking, such as specialized events and conferences, to the era of the ‘internet friend,’” she says. For her, “networking is always an opportunity to learn. No matter how cliché that sounds, I try to find someone whose path seems interesting.”\r\n\r\nBut Gen Z networkers aren’t waiting to garner giant followings before starting to develop digital relationships either. Arin Goldsmith, senior talent marketing specialist at Blizzard Entertainment, says it is a common fallacy that you “have to be a mega-popular influencer who posts cringey inspirational quotes.” He recalls: “I had 300 connections and LinkedIn posts with 15 likes each when I got my job offer at Blizzard Entertainment, and it was all through networking and content creation. Networking as a concept was highly intimidating to me, until I reframed it in my mind as ‘making friends’ instead of the traditional meaning which made me feel like I was using people as stepping stones.”\r\n\r\nIndeed, many Gen Z workers feel the modern job landscape requires “a different approach to networking,” as Jenk Oz, the 18-year-old founder and CEO of Thred Media, puts it.\r\n\r\n“Typically, young people thought about [networking] as competitive and transactional. Instead, they are now being guided by curiosity and exploration,” says Oz. “This is why LinkedIn stands alone as the best platform for non-transactional community building and learning for Gen Z. LinkedIn allows us to approach it differently, turning the old process on its head.”\r\n\r\nGen Z is networking their way into a range of industries, not just social media. Take Meagan Loyst, Founder and CEO of Gen Z VCs. “Our generation shies away from the word ‘networking’ as it feels too transactional,” she says. “We have a very high bullshit radar, and can tell when people just want something from you, versus being interested in building a relationship.” \r\n\r\nMany Gen Z workers see networking is an investment in their careers or, as Travis Chen, an account executive at Amazon Web Services, LinkedIn Top Voice, and Forbes 30 Under 30 member calls it, “planting a digital seed.” “Once you engage with people’s content or [direct message] someone, that’s just the beginning,” he says. “The key is how you’re able to maintain and grow that relationship to something meaningful.”\r\n\r\nGen Z is changing how they think about and define networking—and now they are making it more of a priority.', '2023-10-26', 'genz.jpg', 6, 'TikTok partners with Tickets.com to sell tickets for its first live music event', 'A few months ago, TikTok launched its subscription-only music streaming service to compete with major players Spotify, Apple and Amazon. Now, the company appears to be throwing its hat in the ticketing ring with its latest announcement. TikTok announced today its first live global music event, “In The Mix,” marking the first time the short-form video app maker will sell event tickets to its users.\r\n\r\nTikTok partnered with ticketing technology company Tickets.com to help with ticket sales for its event, a company spokesperson told TechCrunch. “In The Mix” tickets will be available through TikTok’s new website, TikTokInTheMix.com, with pre-sale starting on October 27 and general sale beginning on November 2. Prices range from $25 to $60.\r\n\r\nTikTok’s new ticketing initiative comes a year after Spotify rolled out a website to sell tickets directly from its platform.\r\n\r\nWhile TikTok has yet to launch ticketing capabilities within its app, the company experimented with it four years ago. In 2019, TikTok tested a program called “TikTok Tickets” that was only available in Thailand and sold tickets for 500 films and concerts.\r\n\r\nTikTok also partnered with Ticketmaster last year to introduce an in-app discovery feature for events, allowing users to buy Ticketmaster tickets directly through TikTok.', 'tik-tok', 'tiktok.jpg', '2023-10-26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `Sno` int(111) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Subject` text NOT NULL,
  `Message` text NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`Sno`, `Name`, `Email`, `Subject`, `Message`, `Date`) VALUES
(1, 'dummy', 'dummyyy', 'dummmyyyyy', 'lalalala', '2023-10-21 06:24:17'),
(2, 'Prashant Yaduvanshi', 'pyaduvanshi.1@gmail.com', 'Morning ', 'Radhe radhe', '2023-10-24 12:02:27'),
(43, 'admin', 'admin@gmail.com', 'Testing ', 'This is test message for the database', '2023-10-25 00:22:52'),
(44, 'Sushma', 'sushma@gmail.com', 'Hello', 'Kya haal', '2023-10-25 15:55:10'),
(45, 'Tester', 'Tester@test.com', 'Testing Subject', 'TEsting Message is This is a test message.', '2023-10-25 22:25:20'),
(46, 'Prashant Yaduvanshi', 'pyaduvanshi.1@gmail.com', 'Answer these questions', 'Section 1: Cultural Diversity Awareness\r\nQ1- How would you define cultural diversity in the workplace?\r\nQ2- What is the purpose of employee resource groups (ERGs)?\r\nSection 2: Perceptions and Experiences\r\nQ3- In your opinion, how does cultural diversity contribute to the overall \r\norganizational culture and dynamics?\r\nSection 3: Impact on Workplace Dynamics\r\nQ4- How does cultural diversity affect communication and collaboration within \r\nyour organization?\r\nQ5- How your organization incorporate cultural diversity into performance \r\nevaluation?\r\nSection 4: Inclusion and Belonging\r\nQ6- How does your organization foster a sense of inclusion and belonging \r\namong employees from diverse cultural backgrounds?\r\nSection 5: Leadership and Cultural Diversity\r\nQ7- How do leaders in your organization promote cultural diversity and \r\ninclusion?\r\nQ8- Is cultural diversity present at every hierarchal level in your organisation?\r\nSection 6: Employee Development and Training\r\nQ9- Does your organization provide training or development programs related \r\nto cultural diversity and inclusion?\r\nQ10- In your opinion, how effective are these training programs in enhancing \r\ncultural diversity awareness and fostering inclusion?\r\nSection 7: Challenges and Conflicts\r\nQ11- In your opinion, what can be a potential gap in promoting cultural \r\ndiversity?\r\nSection 8: Organizational Culture\r\nQ12- How would you describe your organization\'s culture in terms of its \r\nopenness to cultural diversity?\r\nSection 9: Employee Engagement \r\nQ13- Do you believe that cultural diversity positively or negatively impacts \r\nemployee engagement and satisfaction? Why?\r\nSection 10: Recommendations \r\nQ14- What recommendations or suggestions do you have for organizations \r\naiming to enhance cultural diversity and inclusion in their workplaces?\r\nSection 11: Additional Comments \r\nQ15- Is there anything else you would like to share or comment on regarding \r\ncultural diversity in the workplace', '2023-10-25 22:30:10'),
(47, 'Dimpi', 'himanshi9913@gmail.com', 'test', 'i love you', '2023-10-26 02:12:42'),
(48, 'admin', 'Aloo@gmail.com', 'Pramtha', 'adssd', '2023-10-26 02:14:51'),
(49, 'admin', 'Aloo@gmail.com', 'Pramtha', 'adssd', '2023-10-26 02:16:45'),
(50, 'admin', 'Aloo@gmail.com', 'test', 'fdds', '2023-10-26 02:17:01'),
(51, 'admin', 'Aloo@gmail.com', 'lolipop', 'sadda sad', '2023-10-26 02:18:02'),
(52, 'admin', 'Aloo@gmail.com', 'ABC', 'ed ff', '2023-10-26 02:19:35'),
(53, 'admin', 'Aloo@gmail.com', 'ABC', 'hello', '2023-10-26 02:21:01'),
(54, 'admin', 'Aloo@gmail.com', 'DHruv', 'nvnxjj hg jh', '2023-10-26 02:22:56'),
(55, 'admin', 'Aloo@gmail.com', 'DHruv', 'nvnxjj hg jh', '2023-10-26 02:23:36'),
(56, 'admin', 'Aloo@gmail.com', 'mail', 'hfh gj j kjh', '2023-10-26 02:24:06'),
(57, 'admin', 'Aloo@gmail.com', 'Pramtha', 'fd hjg hj gj', '2023-10-26 02:25:42'),
(58, 'admin', 'Aloo@gmail.com', 'Pramtha', 'this will definately work', '2023-10-26 02:28:38'),
(59, 'Dimpi', 'htuteja13@gmail.com', 'I Love you', 'Dimpi tu cutest h', '2023-10-26 02:30:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`Sno`),
  ADD KEY `Sno` (`Sno`),
  ADD KEY `Sno_2` (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `sno` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `Sno` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
