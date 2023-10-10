-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 07:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `career_spot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_type` varchar(25) NOT NULL,
  `login_id` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_type`, `login_id`, `password`, `status`) VALUES
(1, 'sudeep', 'Administrator', 'admin', 'adminadminadmin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--

CREATE TABLE `certification` (
  `certification_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `certification_title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `work_duration` varchar(50) NOT NULL,
  `role` varchar(100) NOT NULL,
  `anyother` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certification`
--

INSERT INTO `certification` (`certification_id`, `student_id`, `certification_title`, `description`, `work_duration`, `role`, `anyother`) VALUES
(2, 0, 'aaaaa', '20052', '12', 'manager', '953298'),
(3, 8, 'sfsfs', 'ccvbc', 'sdfsdf', 'wqeqw', 'gmg'),
(4, 22, 'Test record', 'test description', '2-3 years', 'Developer', 'This is test record '),
(6, 22, 'PHPProject', 'Test profie', '6 months', 'developer', 'This is test developer '),
(7, 22, 'Pratcice', 'Helos compress', '1 year', 'developers', 'test record');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(10) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `company_description` text DEFAULT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `logo`, `email_id`, `password`, `address`, `phone_no`, `company_description`, `status`) VALUES
(3, 'Emphasis', '30159emphasis.jpg', 'emphasis@gmil.com', 'emphasis', 'Chennai,MG road', '9740073178', 'Mphasis is an IT services company based in Bangalore, India. The company provides infrastructure technology and applications outsourcing services, as well as architecture guidance, application development and integration, and application management services.', 'Active'),
(4, 'Wipro', '27484wipro.jpg', 'wipro@gmail.com', 'wipro', 'Sanpada,Mumbai', '9740073178', 'Wipro is an Indian multinational corporation that provides information technology, consulting and business process services. It is headquartered in Bangalore, Karnataka, India. In 2013, Wipro separated its non-IT businesses and formed the privately owned Wipro Enterprises', 'Active'),
(5, 'ICICI', '680730581Airline Reservation System in VB.NET.png', 'icici@gmail.com', 'icici', 'Manglore', '9789073178', 'icici bank', 'Active'),
(13, 'Dtech', '319017422142022152_3659391320848309_6255434634938879340_n.jpg', 'techno@gmail.com', 'techno', '3rd floor, city ï¿½light building, mangalore', '9874561231', 'Dtech is software and networking company. Developers are here', 'Active'),
(14, 'Infosys', '24420infosys.png', 'infosys@gmail.com', 'infosys', '', '9874561230', 'Infosys Limited is an Indian multinational corporation that provides business consulting, information technology and outsourcing services. It has its headquarters in Bangalore, Karnataka, India.', 'Active'),
(15, 'Infocom', '10686infocom.png', 'infocom@gmail.com', 'infocom', '', '9874563210', 'Since 2000 Infocom Connect Consulting has supported investors in their strategic development into markets in Asia, the Middle East and Africa.\r\n\r\nInfocom focuses on introducing partners to capital projects, providing support through the financing, planning and implementation phases and ongoing support as required.\r\n\r\nWe would welcome the opportunity to discuss your project with you, so please do not hesitate to contact us.', 'Active'),
(16, 'Bharti Airtel', '27504airtel.jpg', 'career@airtel.com', 'airtel', 'Bharti Crescent, 1, \r\nNelson Mandela Road, \r\nNew Delhi, India', '8887419630', 'Bharti Airtel Limited, also known as Airtel, is an Indian global telecommunications services company based in Delhi, India. It operates in 18 countries across South Asia and Africa, and also in the Channel Islands. Airtel provides GSM, 3G, 4G LTE, 4G+ mobile services, fixed line broadband and voice services depending upon the country of operation. Airtel had also rolled out its VoLTE technology across all Indian telecom circles.[8] It is the third largest mobile network operator in India and the second largest mobile network operator in the world with over 411.42 million subscribers.[3][4][5] Airtel was named India\'s 2nd most valuable brand in the first ever Brandz ranking by Millward Brown and WPP plc.[9]\r\n\r\nAirtel is credited with pioneering the business strategy of outsourcing all of its business operations except marketing, sales and finance and building the \'minutes factory\' model of low cost and high volumes. The strategy has since been adopted by several operators.[10] Airtel\'s equipment is provided and maintained by Ericsson, Huawei, and Nokia Networks[11] whereas IT support is provided by Amdocs. The transmission towers are maintained by subsidiaries and joint venture companies of Bharti including Bharti Infratel and Indus Towers in India.[12] Ericsson agreed for the first time to be paid by the minute for installation and maintenance of their equipment rather than being paid up front, which allowed Airtel to provide low call rates of â‚¹1 (1.4Â¢ US)/minute.', 'Active'),
(17, 'TATA', 'B612_20190111_155048_126.jpg', 'ddfhgfh', '', '', '6789054321', 'tata', 'Active'),
(18, 'Technopulse', '1575709425Beauty Spa Management System.png', 'alok@gmail.com', '123456789', '3rd floor,\r\nbizlite', '7894561230', 'Technopulse software company', 'Active'),
(19, 'Jio', 'blank.gif', 'aravinda@technopulse.in', 'q1w2e3r4', '', '7894561230', 'Hello description', 'Active'),
(20, 'Emphasis', '29903', 'emphasis@gmil.com', 'emphasis', 'MG road,Chennai', '9740073178', '', 'Pending'),
(21, 'APPLE PC', '167781611Blue Modern Our Services Digital Marketing Facebook Cover.png', 'apple@gmail.com', '123456789', 'Bangalore', '78945612360', 'Apple Desktop PCs Price List of different brands and online store ', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `computer_skill`
--

CREATE TABLE `computer_skill` (
  `computerskill_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `basic_known` text NOT NULL,
  `programming` text NOT NULL,
  `database_skill` text NOT NULL,
  `software_skill` text NOT NULL,
  `others` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `computer_skill`
--

INSERT INTO `computer_skill` (`computerskill_id`, `student_id`, `basic_known`, `programming`, `database_skill`, `software_skill`, `others`) VALUES
(1, 0, '', 'abc', '', '', 'aaaa'),
(2, 0, '', 'abc', '', '', 'aaaa'),
(3, 0, '', 'abcd', '', '', 'sdfsdf'),
(4, 0, '', 'sdfsdf', 'cvbcvb', 'sdfsdf', 'sdfsdfsdf'),
(8, 22, 'ms office', 'vb', 'SQL', 'Corel Draw', 'os installation'),
(10, 11, 'Excel', 'c programing', 'MySql', 'Visual Studio,PHP', 'Animation');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(10) NOT NULL,
  `course_title` varchar(25) NOT NULL,
  `course_description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_title`, `course_description`, `status`) VALUES
(4, 'BA', 'vvvv\r\nnnnnn', 'Active'),
(11, 'Bcom', 'bcom project', 'Active'),
(13, 'Bsc', 'Computer Application', 'Active'),
(14, 'BCA', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `education_qualification`
--

CREATE TABLE `education_qualification` (
  `eduqualification_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `qualification` varchar(25) NOT NULL,
  `completion_date` date NOT NULL,
  `college_name` varchar(150) NOT NULL,
  `percentage` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education_qualification`
--

INSERT INTO `education_qualification` (`eduqualification_id`, `student_id`, `qualification`, `completion_date`, `college_name`, `percentage`, `status`) VALUES
(1, 1, '23', '0000-00-00', 'ets', 32.00, 'Active'),
(2, 22, 'BCA', '2017-12-31', 'agnes college', 58.00, ''),
(3, 22, 'mca', '2018-01-25', 'pulse college', 33.00, ''),
(4, 22, 'Puc', '2018-12-31', 'agnes', 83.00, 'Active'),
(5, 11, 'BCA', '2020-03-11', 'St Agnes College Manglore', 85.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `guest_post`
--

CREATE TABLE `guest_post` (
  `guest_post_id` int(11) NOT NULL,
  `applicant_name` varchar(100) DEFAULT NULL,
  `applicant_dob` date DEFAULT NULL,
  `applicant_gender` varchar(20) DEFAULT NULL,
  `applicant_address` text DEFAULT NULL,
  `applicant_mob` varchar(15) DEFAULT NULL,
  `applicant_email` varchar(100) DEFAULT NULL,
  `applicant_qualification` varchar(50) DEFAULT NULL,
  `applicant_qualification_yr` int(11) DEFAULT NULL,
  `applicant_resume` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest_post`
--

INSERT INTO `guest_post` (`guest_post_id`, `applicant_name`, `applicant_dob`, `applicant_gender`, `applicant_address`, `applicant_mob`, `applicant_email`, `applicant_qualification`, `applicant_qualification_yr`, `applicant_resume`) VALUES
(2, 'Akanksha', '1888-05-04', 'Male', '5th floor', '7894561230', 'akanksha@gmail.com', 'BBC', 2011, '2109493352a40fdf79-4ab0-401c-bae1-d0711af6636f.jpg'),
(3, 'Ankesh kumar', '2022-12-28', 'Male', 'Shiva kripa,\r\nVidya nagar', '7894561230', 'ankeshkumar@gmail.com', 'SMB', 2007, '378146526142022152_3659391320848309_6255434634938879340_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `jobcategory_id` int(10) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `job_description` text NOT NULL,
  `location_id` int(10) NOT NULL,
  `publish_date` date NOT NULL,
  `last_date` date NOT NULL,
  `industry_type` varchar(50) NOT NULL,
  `employee_type` varchar(50) NOT NULL,
  `interview_fdate` date NOT NULL,
  `interview_tdate` date NOT NULL,
  `edu_qualification` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `company_id`, `jobcategory_id`, `job_title`, `job_description`, `location_id`, `publish_date`, `last_date`, `industry_type`, `employee_type`, `interview_fdate`, `interview_tdate`, `edu_qualification`, `status`) VALUES
(15, 18, 5, 'Software Programmer/Senior Software Programmer', 'Expert level programming using:- C#, .net framework, MS - SQL server Crystal reports developing windows applications.  Experience using MS-SQL and developing complex SQL queries, views, triggers, procedures and relational database and architecture. Expert level in developing reports and subreports using crystal reports.\r\n  Experience working in an environment using established standards, practices and methodology including local development, version control, issue queues, support ticket systems, quality reviews and project management.', 4, '2020-09-17', '2020-10-17', 'IT Software - System Programming', 'Permanent/Fixed-term', '2020-11-17', '2020-12-17', 'a:2:{i:0;s:2:\"13\";i:1;s:2:\"14\";}', 'Active'),
(21, 16, 3, 'Sales Executive', 'A territory sales manager oversees a specific area (or territory) for an organization and acts as a liaison between company headquarters and the company\'s presence in their respective territory. Often, the territory sales manager\'s primary job is to increase sales volume within their assigned region.', 8, '2020-09-17', '2020-10-31', 'Production / Maintenance / Quality', 'Casual employees', '2020-10-01', '2020-10-31', 'a:2:{i:0;s:1:\"4\";i:1;s:2:\"11\";}', 'Active'),
(25, 15, 2, 'Business Manager - Collection & Retention', 'Ensuring hygiene at contact center (Manpower Forecasting, availability through right hiring, Training and measuring Quality in all aspects). Monitor the center against agreed KPIâ€™s and implement / monitor improvement plan.\r\nÂ·        To ensure timely Response and Resolution along with Quality to drive first time right customer service.\r\nÂ·        To act as point of reference / support for potential product issues, Operational fixes, sensitive and difficult interactions with customers\r\nÂ·        Ability to deep dive on complaint reason to derive root cause analysis and recommending process fix to the teams.\r\nÂ·        Effectively and timely resolution to customer issues.\r\nÂ·        Revenue impact by Retaining potential churn threat customers, and upgrading customers to higher plans', 8, '2020-09-17', '2020-10-07', 'Accounting / Finance / Tax / CS / Audit', 'Permanent/Fixed-term', '2020-10-18', '2020-11-18', 'a:2:{i:0;s:1:\"4\";i:1;s:2:\"11\";}', 'Active'),
(27, 15, 8, 'Hiring For WEB Developer/PHP/HTML', 'Proficiency in front end development web programming languages such as HTML 5, CSS 3, JAVAscript, Bootstrap and another designing platform. Proficiency in visual design tool such as Adobe Photoshop, Adobe XD, CoreldrawX6 and Adode illustrator will be added advantage but not mandatory. Should have knowledge in PHP. Develop illustrations, templates for mailers and websites, and other marketing collaterals using the design software.', 1, '2020-09-17', '2020-10-17', 'IT Software - Other', 'Permanent/Fixed-term', '2020-11-17', '2020-12-30', 'a:2:{i:0;s:2:\"13\";i:1;s:2:\"14\";}', 'Active'),
(28, 3, 7, 'Junior JAVA Programmer', 'Java Developers are computer programmers who are proficient with coding in Java. Their primary responsibilities include designing and implementing java applications, developing and testing software and resolving technical issues that arise.', 9, '2020-09-17', '2020-10-17', 'IT Software - Other', 'Apprentices/trainees', '2020-11-01', '2020-12-30', 'a:2:{i:0;s:2:\"13\";i:1;s:2:\"14\";}', 'Active'),
(30, 3, 5, 'Immediate Requirement in Software Developer & Tester For Freshers', 'We are currently hiring freshers who want to build their career in the IT field.\r\nIf you looking for an Entry in IT Field or People who are working in Non-IT Field also can apply. We are hiring People for Software Developer and Tester.\r\nImmediate joiners are prefered. Freshers and Non-IT experience candidate can apply for this job.', 1, '2020-09-17', '2020-10-17', 'IT Software - Other', 'Employment agency staff', '2020-11-17', '2020-12-17', 'a:2:{i:0;s:2:\"13\";i:1;s:2:\"14\";}', 'Active'),
(31, 3, 2, 'Production Engineer - Manufacturing Unit', 'Manufacturing is the making of goods by hand or by machine that upon completion the business sells to a customer. Items used in manufacture may be raw materials or component parts of a larger product', 3, '2020-09-17', '2020-10-17', 'Production / Maintenance / Quality', 'Permanent/Fixed-term', '2020-10-18', '2020-11-18', 'a:2:{i:0;s:1:\"4\";i:1;s:2:\"11\";}', 'Active'),
(32, 5, 3, 'Sales Executive / Marketing Executive', 'Candidate who can work with full involvement in Sales Both Freshers and Experience Candidates with Good communication skill and able to communicate with people of all levels with good flexibility and initiatives can apply.', 3, '2020-09-17', '2020-10-16', 'Site Engineering / Project Management', 'Contractors/sub-contractors', '2020-10-17', '2020-11-17', 'a:2:{i:0;s:1:\"4\";i:1;s:2:\"11\";}', 'Active'),
(33, 4, 8, 'php', 'A PHP Developer is responsible for creating and implementing an array of Web-based products using PHP, MySQL, Ajax, and JavaScript. You develop back-end components, connect the application with other web services, and assist front-end developers by ensuring their work integrates with the application', 4, '2020-03-11', '2020-03-31', 'Site Engineering / Project Management', 'Contractors/sub-contractors', '2020-04-01', '2020-04-02', 'a:2:{i:0;s:2:\"13\";i:1;s:2:\"14\";}', 'Active'),
(34, 4, 5, 'Computer programmer', 'Computer programming is the process of designing and building an executable computer program to accomplish a specific computing result. Programming ', 3, '2020-03-12', '2020-03-28', 'Site Engineering / Project Management', 'Contractors/sub-contractors', '2020-03-30', '2020-03-31', 'a:1:{i:0;s:2:\"14\";}', 'Active'),
(35, 4, 2, 'Business', 'Manufacturing is the making of goods by hand or by machine that upon completion the business sells to a customer. Items used in manufacture may be raw materials or component parts of a larger product', 8, '2020-03-11', '2020-03-27', 'Top Management', 'Employment agency staff', '2020-03-31', '2020-03-31', 'a:1:{i:0;s:2:\"11\";}', 'Active'),
(36, 14, 5, 'Junior Web Developer Jobs For Female Candidates only', 'Edu Bridge Learning Private Limited is a Training and Placement Company. We act as a bridge between unemployed youth and IT companies. We upskill the unemployed youth by providing training in the Web Developer Course and we assure placement in Top MNC Companies. Currently, we are providing online training for female candidates who are searching for a job in the IT sector. The Web Developer Training Course will be for 3 months online and placement will be arranged after the completion of the course. Candidates will be certified from NSDC. We provide 100% placement assistance.', 1, '2020-09-17', '2020-10-07', 'Web / Graphic Design / Visualiser', 'Others', '2020-10-07', '2020-11-07', 'a:2:{i:0;s:2:\"13\";i:1;s:2:\"14\";}', 'Active'),
(37, 14, 5, 'Software Developer & Web Developer', 'Modifying software to fix errors, adapt it to new hardware, improve its performance, or upgrade interfaces.\r\nDirecting system testing and validation procedures.\r\nDirecting software programming and documentation development.', 4, '2020-09-17', '2020-10-17', 'IT Software - System Programming', 'Casual employees', '2020-10-18', '2020-11-18', 'a:2:{i:0;s:2:\"13\";i:1;s:2:\"14\";}', 'Active'),
(38, 16, 3, 'Hiring Fresher For Service Desk ( Voice Process ) Bangalore', 'We expect resources with excellent communication who are willing to work in a 24*7 environment and basic computer knowledge.\r\n\r\nComplete Voice support ( Its is not semi voice/ desktop demands)\r\n\r\nInterested candidates can share the resume', 9, '2020-09-17', '2020-10-30', 'Agent', 'Contractors/sub-contractors', '2020-11-01', '2020-11-27', 'a:4:{i:0;s:1:\"4\";i:1;s:2:\"11\";i:2;s:2:\"13\";i:3;s:2:\"14\";}', 'Active'),
(39, 16, 3, 'Customer Service / Customer Support / Voice Process / Bpo/ Call center', 'WE HAVE AN EXCELLENT OPENING FOR YOU FROM TOP BPO’S IN BANGALORE.\r\nWalk -in to \" Inspiration Manpower consultancy\" to avail these opportunities\r\n\r\nCustomer Support & Sr Customer Support\r\nTechnical Support & Sr Technical Support\r\nIT Help Desk engineers\r\nServer Support.', 1, '2020-09-17', '2020-10-18', 'IT Software - Mobile', 'Employment agency staff', '2020-03-26', '2020-03-27', 'a:2:{i:0;s:1:\"4\";i:1;s:2:\"11\";}', 'Active'),
(40, 17, 3, 'Sales Executive / Marketing Executive', 'Sales Executives are the persons who are responsible for the overall sales activities of the company. The primary work of the sales executive is to introduce and demonstrate the product to its customers and to maintain the customer satisfaction', 1, '2020-09-17', '2020-10-17', 'Analytics & Business Intelligence', 'Casual employees', '2020-09-17', '2020-10-17', 'a:2:{i:0;s:1:\"4\";i:1;s:2:\"11\";}', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `job_application`
--

CREATE TABLE `job_application` (
  `jobapplication_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `job_id` int(10) NOT NULL,
  `applied_date` date NOT NULL,
  `application_status` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE `job_category` (
  `jobcategory_id` int(10) NOT NULL,
  `job_category` varchar(30) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`jobcategory_id`, `job_category`, `note`, `status`) VALUES
(2, 'Manufacturing', 'Manufacturing is a composite technology revolution', 'Active'),
(3, 'Sales executive', 'Sales executive responsible for planning,implementing ,managing and overseeing company\'s overall sales strategy.', 'Active'),
(5, 'Programmer', 'Software Programmer jobs', 'Active'),
(6, 'Software Developer', 'The programs you create are likely to help business be more efficient and provide a better service.', ''),
(7, 'Java Developer', 'Java developer is responsible for the design,development and management of java ', 'Active'),
(8, 'PHP Developer', 'Php developer are a specific kind of software engineer who can create websites and applications', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(10) NOT NULL,
  `location` varchar(50) NOT NULL,
  `location_description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location`, `location_description`, `status`) VALUES
(1, 'Banglore', 'Mg road,Malleshwara', 'Active'),
(3, 'Chikmagalur', 'Nethravathy complex\r\n', 'Active'),
(4, 'Mumbai', 'Sanpada, ks road', 'Active'),
(8, 'Mangalore', 'Jyothi', 'Active'),
(9, 'Chennai', 'vadacherry', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `other_activities`
--

CREATE TABLE `other_activities` (
  `otheractivity_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `activity_title` varchar(50) NOT NULL,
  `activity_detail` text NOT NULL,
  `completed_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_activities`
--

INSERT INTO `other_activities` (`otheractivity_id`, `student_id`, `activity_title`, `activity_detail`, `completed_date`, `status`) VALUES
(1, 2, 'tets', 'test test', '0000-00-00', 'Active'),
(2, 1, 'test ', 'tes rec', '0000-00-00', 'Active'),
(4, 22, 'hello', 'Hello test record', '2019-11-30', 'Active'),
(5, 22, 'Award in competetion', 'Award in competetion views here rc', '2017-12-31', 'Active'),
(6, 22, 'My best program', 'conducted today', '2018-12-31', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `register_number` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `id_proof` varchar(100) NOT NULL,
  `address_proof` varchar(100) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `religion` varchar(25) NOT NULL,
  `nationality` varchar(25) NOT NULL,
  `marital_status` varchar(25) NOT NULL,
  `languages_known` text NOT NULL,
  `hobbies` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `course_id`, `student_name`, `register_number`, `password`, `address`, `email_id`, `contact_no`, `photo`, `id_proof`, `address_proof`, `father_name`, `mother_name`, `dob`, `gender`, `religion`, `nationality`, `marital_status`, `languages_known`, `hobbies`, `status`) VALUES
(1, 13, 'aishwarya', '801', '801', 'Bikkarnakatte,maglore', 'aishu@gmail.com', '09740073178', '', '', '3rd floor, city light building', 'Venktesh', 'jaya', '2007-01-02', 'Male', 'Hindu', 'Indian', 'Single', 'English\r\nKannada\r\n', 'Singing\r\nPainting', 'Active'),
(2, 14, 'apoorva', '805', '805', 'Kelagur,chickmanglore', 'apoorva@gmail.com', '7899457565', '', '', 'padil,banglore', 'balakrishna', 'veena', '1998-04-14', 'female', 'Hindu', 'Indian', 'Single', 'english\r\nkannada\r\nmalayalam', 'painting\r\nsports\r\nsocial service', 'Active'),
(3, 11, 'Ammu', '803', '803', 'padil,kerala', 'ammu@gmail.com', '7040803045', '', '', 'manglore', 'shankar', 'meena', '1999-10-12', 'female', 'Hindu', 'Indian', 'Single', 'english\r\nkannada', 'reading', 'Active'),
(4, 13, 'Peterson', '804804', '804', 'mg road,kolar', 'studentprojects.live@gmail.com', '9945566335', '', '', 'kelagur,kolar', 'vinod', 'navya', '1998-09-15', 'female', 'Hindu', 'Indian', 'Single', 'english \r\nhindi', 'sining', 'Active'),
(6, 14, 'Anagha', '806', '806', 'mg road,chickmanglore', 'aravinda@technopulse.in', '9740073178', '', '', 'mysore', 'shiva', 'rani', '1998-07-21', 'female', 'Hindu', 'Indian', 'Single', 'english', 'playng', 'Active'),
(9, 13, 'Peter', '123456', 'peter', 'manglore', 'peterson@gmailo.com', '74894561230', '', '', 'pumpwell,manglore', 'murthy', 'koushalya', '2009-01-05', 'female', 'Hindu', 'Indian', 'Single', 'english \r\nkannada\r\nhindi', 'sports', 'Active'),
(10, 13, 'Raj kiran', '456789', 'raj', 'naguri', 'aravinda@technopulse.in', '7894561230', '', '', 'manglore', 'surya', 'chandrakala', '2007-03-12', 'female', 'Hindu', 'Indian', 'Single', 'english \r\nkannada\r\nhindi', 'singing', 'Pending'),
(11, 14, 'Apoorva', '17805', 'Ammu805@', 'Chickmanglore', 'apoorvab1499@gmail.com', '7899457565', '26693IMG_20180822_132751.JPG', '7066id.jpg', '23755id.jpg', 'Balakrishna', 'Veena', '1998-04-14', 'Female', 'Hindu', 'Indian', 'single', 'English\r\nKannada\r\nMalayalam', 'Painting\r\nTravelling', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `training_material`
--

CREATE TABLE `training_material` (
  `trainingmaterial_id` int(10) NOT NULL,
  `material_type` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `banner_img` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `file` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_material`
--

INSERT INTO `training_material` (`trainingmaterial_id`, `material_type`, `title`, `banner_img`, `description`, `file`, `status`) VALUES
(16, 'Photo Slider', 'Training material photo slider', '4576download (2).jpg', '<p><span style=\"color: #212121; font-family: \'PT Serif Regular\', serif; font-size: 18px; background-color: #ffffff;\">Kerala retained its rank as the top state with a score of 70. Chandigarh too maintained its top spot among the UTs with a score of 70.</span></p>', 'a:4:{i:0;s:13:\"25449OK13.jpg\";i:1;s:11:\"494OK14.jpg\";i:2;s:12:\"1679OK15.jpg\";i:3;s:27:\"3356online-registration.jpg\";}', 'Publish'),
(28, 'Others', 'Other training materials', '16184migration-sahel-burning-tire-smoke-landscape.jpg', '<p><span style=\"color: #565656; font-family: Roboto, sans-serif; font-size: 15px; background-color: #ffffff;\">e is a flexible and modern directory theme for WordPress that helps to build a listing website and supports both local as well as global directory websites. The theme comes with attractive blog layouts, a full-width header, monetization options, and additional functionality. The e-commerce features help to sell products and make your site attractive with beautiful layouts and customization tools.</span></p>', 'a:3:{i:0;s:40:\"11025Import Excel using VB .NET 2010.zip\";i:1;s:27:\"13430medprosolutions.co.tar\";i:2;s:19:\"31351MyProgram.xlsx\";}', 'Publish'),
(29, 'Docs', 'Training material', '21405download (1).jpg', '<p>Training materials might include a new employee manual, a handout for a presentation, or a computer module that trainees have to complete. They are a necessary part of any program that involves knowledge acquisition and retention.</p>', 'a:1:{i:0;s:27:\"5671resume-writing-tips.pdf\";}', 'Publish'),
(31, 'Audio', 'Training material audio', '21475download (3).jpg', '<p><span style=\"color: #3c4043; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\">We provide innovative&nbsp;</span><span style=\"font-weight: bold; color: #52565a; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\">training material</span><span style=\"color: #3c4043; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;course packages to deliver professional soft skills, business and workplace skills training courses that you can instantly ..</span></p>\r\n<p>&nbsp;</p>', 'a:1:{i:0;s:101:\"3187How to Introduce Yourself in EnglishTell Me Something About Yourself - Interview TipsChetChat.mp3\";}', 'Publish'),
(35, 'Video', 'Training material video', '5104video.jpg', '<p><span style=\"color: #3c4043; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\">This page lists OCW courses and supplemental&nbsp;</span><span style=\"font-weight: bold; color: #52565a; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\">resources</span><span style=\"color: #3c4043; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;that contain&nbsp;</span><span style=\"font-weight: bold; color: #52565a; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\">video</span><span style=\"color: #3c4043; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;and/</span><wbr style=\"color: #3c4043; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #3c4043; font-family: arial, sans-serif; font-size: 14px; background-color: #ffffff;\">or audio lectures. ...</span></p>\r\n<p>&nbsp;</p>', 'a:1:{i:0;s:72:\"1981708 common Interview question and answers - Job Interview Skills.mp4\";}', 'Publish'),
(37, 'Video', 'Training material video', '8210download.jpg', ' it\'s video-based content that shows someone how to do something.', 'a:1:{i:0;s:98:\"15629Job Interview Question & Answers for freshers - Free Job Interview tips & English Lessons.mp4\";}', 'Publish');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `certification`
--
ALTER TABLE `certification`
  ADD PRIMARY KEY (`certification_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `computer_skill`
--
ALTER TABLE `computer_skill`
  ADD PRIMARY KEY (`computerskill_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `education_qualification`
--
ALTER TABLE `education_qualification`
  ADD PRIMARY KEY (`eduqualification_id`);

--
-- Indexes for table `guest_post`
--
ALTER TABLE `guest_post`
  ADD PRIMARY KEY (`guest_post_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `job_application`
--
ALTER TABLE `job_application`
  ADD PRIMARY KEY (`jobapplication_id`);

--
-- Indexes for table `job_category`
--
ALTER TABLE `job_category`
  ADD PRIMARY KEY (`jobcategory_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `other_activities`
--
ALTER TABLE `other_activities`
  ADD PRIMARY KEY (`otheractivity_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `register_number` (`register_number`);

--
-- Indexes for table `training_material`
--
ALTER TABLE `training_material`
  ADD PRIMARY KEY (`trainingmaterial_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certification`
--
ALTER TABLE `certification`
  MODIFY `certification_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `computer_skill`
--
ALTER TABLE `computer_skill`
  MODIFY `computerskill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `education_qualification`
--
ALTER TABLE `education_qualification`
  MODIFY `eduqualification_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guest_post`
--
ALTER TABLE `guest_post`
  MODIFY `guest_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `job_application`
--
ALTER TABLE `job_application`
  MODIFY `jobapplication_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job_category`
--
ALTER TABLE `job_category`
  MODIFY `jobcategory_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `other_activities`
--
ALTER TABLE `other_activities`
  MODIFY `otheractivity_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `training_material`
--
ALTER TABLE `training_material`
  MODIFY `trainingmaterial_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
