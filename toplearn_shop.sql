-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 12:36 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toplearn_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(255) NOT NULL,
  `name` varchar(225) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(225) COLLATE utf8_persian_ci NOT NULL,
  `content` text COLLATE utf8_persian_ci NOT NULL,
  `product_id` int(10) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `name`, `email`, `content`, `product_id`, `parent_id`, `status`, `time`) VALUES
(1, 'علیرضا جهانی', 'ali15@gmail.com', 'به نظرم همه چیز این محصول عالیه فقط از بابت قیمت اگر ارزون تر میشد خیلی بهتر بود', 3, 0, 1, 0),
(2, 'محمدرضا علیزاده', 'mm199@gmail.com', 'اگر مثل من دوست دارید همه چیزتون عالی باشه این محصول رو بهتون پیشنهاد میکنم', 5, 0, 1, 0),
(3, 'محمود ', 'mahi16@hotmail.com', 'این محصول از نظر من اصلا هم خوب نیست', 3, 0, 1, 0),
(4, 'شاهین', 'shahin@gmail.com', 'عالی ممنون ازتون', 3, 0, 0, 0),
(5, 'محمود', 'mahi16@hotmail.com', 'من پولمو میخوام', 3, 0, 1, 0),
(6, 'نرگس', 'narges@gmail.com', 'به همتون پیشنهاد میکنم', 3, 0, 1, 0),
(7, 'علیرضا جهانبخش', 'alirezaK@gmail.com', 'یک محصول کاملا رویایی', 3, 0, 1, 0),
(8, 'نسترن', 'nan@gmail.com', 'آشغال همه چیز جنس چینی آشغاله', 4, 0, 1, 0),
(9, 'کیمیا', 'kimichra@gmail.com', 'منکه خوشم نیومد فقط بلدن الکی جیب مردم رو خالی کنن', 4, 0, 1, 0),
(10, 'عارفه داوری', 'aref@gmail.com', 'خیلی خوب بود پیشنهاد میکنم بخرید', 4, 0, 1, 0),
(11, 'مرجان آقائي', 'mari@yahoo.com', 'خرید خوبی بود', 2, 0, 1, 0),
(12, 'سپهر نعمتی\r\n', 'sepehrNemati@gmail.com', 'بسیار کاربردی', 6, 0, 1, 0),
(13, 'بهروز محمدی', 'beh@gmail.com', 'باهاش کلی طراحی انجام دادم و راضی ام', 2, 0, 1, 0),
(14, 'رحیم پاکدلان فرد', 'rahim@gmail.com', 'سی دیش از همه لحاظ خوب بود', 2, 0, 1, 0),
(15, 'سعید محبی', 'saiied@gmail.com', 'با توجه به قیمت مناسب و بسته بندی خوب و لیست ارایه دروس خوبی که دارد خریدش را پیشنهاد میکنم . البته هنوز استفاده نکردم .', 2, 0, 1, 0),
(16, 'سینا حسینی مقدم', 'sin@gmail.com', 'علاوه بر امکانات خوب نصب نسبتا آسونی داشت..', 2, 0, 1, 0),
(17, 'هادی خرمی', 'hadie@gmail.com', 'عالی بود ر نصب کردنش هم راحت بود مطابق راهنمای نصب داخل نرم افزار', 2, 0, 1, 0),
(18, 'مرتضی چهارمحالی', 'morigher@gmail.com', 'عالی و آموزشی است و ذهن فرزندتان را باز و خلاق میسازد', 2, 0, 1, 0),
(19, 'مهدی جمالی', 'mahdi@gmail.com', 'برای من ۵ یا ۶ تا قطعه کم داشت و کارم گیر افتاد\r\nای کاش یه محصول رو کامل به دستت میرسوندن', 1, 0, 1, 0),
(20, 'جواد مظفرزاده\r\n', 'jevad@gmail.com', 'یه کم پیچیده اس ولی اگر دریت مونتاژ بشه بد نیست', 1, 0, 1, 0),
(21, 'مهدی اصغری', 'mehti@gmail.com', 'سلام\r\nمن خریدم\r\nیک قطعه توش کم بود\r\nای کاش از هر قطعه یه دونه زاپاس تو گذاشته بودند\r\nپیشنهاد می کنم بخرید\r\nچون در کل خوب بود', 5, 0, 1, 0),
(22, 'محمد رعد', 'mohammad@gmail.com', 'حرکت خوبی است ، منتها باید از حالت سنتی فروش کالا یک قدم پا فراتر گذاشته و در مسیر آموزش و هدایت اصولی و دریافت بازخورد آن قدم بگذارد.', 1, 0, 1, 0),
(23, 'امیر علی فتاحی\r\n', 'amiiir@gmail.com', 'باسلام حتما بخوانید\r\nمن الان یک ماه که دارم روش کار میکنم ترانزیستور و یکی از ای سی ها سوخت چرا برای اینکه در در دفترچه ذکر نشده که چه کارهایی باید انجام بدیم تا قطعات سالم بمونن\r\nواما درمورد پشتیبان عالی است تمام سوال ها رو با دقت جواب میده‌', 4, 0, 1, 0),
(24, 'صفدر بربری\r\n', 'barbarSafdar@gmail.com', 'برای من که اولین کیت بود یه کم سخته', 5, 1, 1, 0),
(25, 'امنه رضایی\r\n', 'amene@gmail.com', 'قطعات اصلی کار ناقصه.بنابراین کارمونتاژ ناقص میمونه ....هر قسمت که جلو بری میبینی نقص قطعه داری.از کجا باید تهیه بشه.....سطحش هم برای دبیرستانه', 1, 0, 1, 0),
(26, 'محمد اصل فلاح', 'mohammad@gmail.com', 'من برای دختر هفت ساله ام گرفتم . خیلی راضی ام .\r\nبا سپاس از شما', 1, 0, 1, 0),
(27, 'رضا اسماعیلی', 'reza@gmail.com', 'خیلی خوبه ارزش داره ولی مال من درس کار نمیکنه\r\nخوبیش اینه خیلی راهنما داره و پشتیبانی خوب', 1, 0, 1, 0),
(28, 'بهمن ولی پور', 'tir@gmail.com', 'با سلام\r\nکیت فوق‌العاده آیه.خریدش رو پیشنهاد میدم فقط کاش راهنمای چاپی هم داخل بستش بود\r\n\r\nنقاط قوت\r\nعالی در سطح بالا\r\nوسایل قابل قبول\r\nخوش ساخت\r\nدر سطح دانشگاه\r\nنقاط ضعف\r\nعدم وجود راهنمای چاپی\r\nراهنمایی ناقص\r\nعدم خدمات پس از فروش', 1, 0, 1, 0),
(29, 'مصطفی بهادری', 'faghatbahador@gmail.com', 'خیلی سطح بالا توضیح داده شده است', 1, 0, 1, 0),
(30, 'امیررضا کمالی', 'amirrezaKemal@gmail.com', 'من تا به حال سی دی های آموزشی زیاد خریده بودم ولی این یکی اصلا خوب توضیح نمیده و فرد با حالت توضیحات حوصله شما را سر می برد', 1, 0, 1, 0),
(31, 'رضا صاعدی', 'rez@gmail.com', 'به موقع به دستم رسید .لطفا از اساتیدی اسفاده بشه که قدرت بیانشون مناسب باشه و تن صداشون تحت یک خط صاف نباشه', 1, 0, 1, 0),
(32, 'علی قزلباش', 'ali@gmail.com', 'اگه هیچ اطلاعاتی راجع به بورس ندارید خیلی خوبه\r\nولی اگه مبتدی نیستید زیاد به کارتون نمیاد', 1, 0, 1, 0),
(33, 'متین کمی', 'matinkamikeyfi@gmail.com', 'متاسفانه این نرم افزار رو خریدم که از هرجهت ضعیفه\r\nچه طراحی نرم افزار که فقط یه پاورپوینته و از روی پاورپوینت مطالب رو میخونه تصاویر بسیار نارسا و بی کیفیت مطالب بسیار پراکنده و بدون انسجام و پیش پا افتاده\r\nاصلا جنبه آموزشی نداره و صرفا یه کپی پیست مطالب اینترنت بیشتر نبود', 1, 0, 1, 0),
(34, 'یاسر رضائیان', 'manyaseram@gmail.com', 'میشه گفت یک انتخاب مناسب برای مبتدی هاست ولی خیلی از مطالب ابتر مونده مثل توضیح فیبوناچی و فیلتر ها و ...', 1, 0, 1, 0),
(35, 'محمد ستایش روحی\r\n', 'mohammad@gmail.com', 'همچیزو یاد میده با همه چیز آشنا میشی خیلی خوبه فقط وقت دارید بخرید تو بیکاری آموزش ببیند وقت مرده نداشته باشد من خودم همین کارو کردم پیشنهاد میکنم عالی هستش', 1, 0, 1, 0),
(36, 'فائزه داداشی', 'faeze@gmail.com', 'کتاب خوبیه برای اونایی که هیچ اطلاعاتی راجع به بورس ندارن\r\nتقریبا همه چیو کامل توضیح داده', 1, 0, 1, 0),
(37, 'سروش محمدعلی زاده\r\n', 'soroosh@gmail.com', 'گر هیچ اشنایی با بورس و اصطلاحات معمولی اون ندارین این کتاب شروع خیلی خوبیه', 2, 0, 1, 0),
(38, 'علی رجایی', 'mrrajayi@gmail.com', 'با این قیمت اصلا نمی ارزه خیلی از مطالبش کاربردی نیست و فقط جهت اطلاع و آگاهی هست کتاب کاملی نیست .و نسبت به قیمتش نمی ارزه', 2, 0, 1, 0),
(39, 'مهدی معظمی گودرزی\r\n', 'mehti@gmail.com', 'بسیارعالی ومناسب', 2, 0, 1, 0),
(40, 'سپیده کشاورز', 'sepide@gmail.com', 'برای شروع خوبه اما کافی نیست باید کتاب های دیگر نیز استفاده کنید.', 2, 0, 1, 0),
(41, 'سمانه جباری', 'smjabar@gmail.com', 'خوشحالم از اینکه هر چی میخام با کیفیت میتونم از دیجی کالا تهیه کنم لطفاً محصولات فرهنگی را بیشتر وبا تخفیف ارائه بدید', 2, 0, 1, 0),
(42, 'جواد شعبانی', 'jevad@gmail.com', 'بینید تو این مجموعه 4 تا dvd هستش، یعنی دوتا پک دوتایی، تو هر پک یکی از dvd ها افیس 2019 هستش،یعنی دوتا از ذی دی دی ها فقط نرم افزار افیس هستن، دوتای دیگ هم تقریبا یک پنجم دی وی دی پر شده، بقیه خالیه، به عبارتی میشد چهار تا دی وی دی، بشه دوتا', 2, 0, 1, 0),
(43, 'حامد الماسی\r\n', 'hamed@gmail.com', 'پولتون رو دور نریزین اصلا وقت نذاشتن، یکی برا خودش حرف میزنه انگار ن انگار میخاد آموزش بده\r\nبرا خودش الکی میچرخه میگه اینو بخرین این راحته این سایت قشنگیه اینو ولش کن کلا انگار داره با یکی حرف میزنه ک از خودش بهتر میفهمه و این راه رو کامل رفته.', 2, 0, 1, 0),
(44, 'بهرام خیرنیا\r\n', 'bahram@gmail.com', 'اگه دنبال آموزش بازاریابی دیجیتال و بورس تکنیکال هستید به شدت توصیه می شه', 2, 0, 1, 0),
(45, 'محمد ابراهیم رادمرد', 'mamad@gmail.com', 'خوبه ولی برای من طرح اصلی فوتوشاپ منظم و وسط نیست', 3, 0, 1, 0),
(46, 'اهورا کرمی', 'kerm@gmail.com', 'ps مخفف همون فتوشاپ هستش . این پیکسل طرفدارای خاص خودش رو داره و معمولا گرافیست ها و کسانی که کار تصویر انجام میدن براشون جذابه همچین چیزی .', 3, 0, 1, 0),
(56, 'aaaa', 'aaaaa', 'aaaa', 1, 1, 1, 1618134349),
(57, 'aaaaaa', 'aa', 'aa', 1, 1, 1, 1618134430),
(58, 'asss', 'ssss', 'dddd', 1, 1, 1, 1618134511),
(59, 'aaaa', 'aaaaa', 'aaaaa', 5, 1, 1, 1618135472),
(60, 'sssss', 'sssss', 'sssss', 5, 1, 1, 1618135585),
(61, 'aaa', 'aa', 'aaaa', 1, 1, 1, 1618148014),
(62, 'mehrab ‎bozorgi', 'mehrab.bozorgi@gmail.com', ' برنامه ای خوبی هستش', 3, 1, 1, 1618148881);

-- --------------------------------------------------------

--
-- Table structure for table `imgslide`
--

CREATE TABLE `imgslide` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img_slide` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `imgslide`
--

INSERT INTO `imgslide` (`id`, `product_id`, `img_slide`) VALUES
(6, 1, 'https://toplearn.com/img/course/9b7034b5-2c5c-45db-ae90-80c49ab762b1python%20in%20csharp.png'),
(7, 1, 'https://toplearn.com/img/course/img-course-%D8%B4%D9%86%D8%A8%D9%87-%DB%B1%DB%B5-%D8%A7%D8%B1%D8%AF%DB%8C%D8%A8%D9%87%D8%B4%D8%AA-%DB%B1%DB%B3%DB%B9%DB%B7-61064385-586.jpeg'),
(8, 1, 'https://toplearn.com/img/course/img-course-%DA%86%D9%87%D8%A7%D8%B1-%D8%B4%D9%86%D8%A8%D9%87-%DB%B2%DB%B4-%D9%85%D8%B1%D8%AF%D8%A7%D8%AF-%DB%B1%DB%B3%DB%B9%DB%B7-928928-1287.jpg'),
(9, 1, 'https://toplearn.com/img/post/06-26-20200001.jpg'),
(10, 2, 'https://s16.picofile.com/file/8426264868/ef_core_usderik_blogfa_com.png'),
(11, 2, 'https://blog.faradars.org/wp-content/uploads/2020/07/NET-core.jpg'),
(12, 2, 'http://img.p30download.ir/tutorial/image/2021/02/1612774809_asp.net-core-5-mvc-hands-on-lab-with-practical-projects.jpg'),
(13, 2, 'http://cdn.azarsource.ir/2020/09/5f5f600c38184.jpeg'),
(14, 3, 'https://toplearn.com/img/course/c7c52bcb-5cbc-49a3-9032-035bc8962620Asp.Net%20Core%20Razor%20Pages.png'),
(15, 3, 'http://devtube.ir/Files/devtube.ir/Course_Thumbnail/5/asp-poster.jpg'),
(16, 3, 'https://toplearn.com/img/course/img-course-%D8%B3%D9%87-%D8%B4%D9%86%D8%A8%D9%87-%DB%B2%DB%B3-%D8%A8%D9%87%D9%85%D9%86-%DB%B1%DB%B3%DB%B9%DB%B7-63298208-982.jpg'),
(17, 3, 'https://daneshsara.org/images/courses/6698f90756d243b8bb2d2c9d04f4ff1f.jpg?v=juzUEqiePjQODI9F0Hzm8QgUHSEy8p6PFnVIJ88oQhk'),
(18, 4, 'https://toplearn.com/img/course/488bd69c-205d-49de-a216-c332b7e4dd22vip%20javascript.png'),
(19, 4, 'https://toplearn.com/img/course/c90a3241-f5b0-4908-8cef-580e2b72c132javascript%20(2).png'),
(20, 4, 'https://toplearn.com/img/course/img-course-%D8%AF%D9%88-%D8%B4%D9%86%D8%A8%D9%87-%DB%B1%DB%B5-%D8%A7%D8%B1%D8%AF%DB%8C%D8%A8%D9%87%D8%B4%D8%AA-%DB%B1%DB%B3%DB%B9%DB%B9-68465385-805.jpg'),
(21, 4, 'https://usercode.ir/wp-content/uploads/2020/06/javascript.jpg'),
(22, 5, 'https://mohamadhossein.ir/wp-content/uploads/2020/02/what-is-PHP.jpg'),
(23, 5, 'https://cimagelimoonad.s3.ir-thr-at1.arvanstorage.com/-php-learning.png'),
(24, 5, 'https://replywp.com/wp-content/uploads/2021/03/%DA%A9%D8%A7%D8%B1%D8%A8%D8%B1%D8%AF-%D9%87%D8%A7%DB%8C-%D8%B2%D8%A8%D8%A7%D9%86-php.jpg'),
(25, 5, 'https://toplearn.com/img/course/5ea89655-9922-42d3-ab52-187dc7ce23e5php.png');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img_url` text COLLATE utf8_persian_ci NOT NULL,
  `order_number` int(11) NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `img_url`, `order_number`, `description`) VALUES
(1, 'آموزش پایتون برای برنامه نویسان سی شارپ', 400000, 'https://toplearn.com/img/course/9b7034b5-2c5c-45db-ae90-80c49ab762b1python%20in%20csharp.png', 2, 'آموزش Python برای برنامه نویس های دات نت و سی شارپ    این روز ها بازار کار برنامه نویسی بسیار گرم و داغ هست بخصوص در ایران برای دات نت کارها و همانطور هم که میدانید زبان پایتون سالهاست جزو برترین و محبوبترین زبان های برنامه نویسی دنیا می باشد ، پس برنامه نویس های سی شارپ با دانستن این زبان قدرتمند میتوانند آینده شغلی مناسب و تضمین شده ای را برای خود رقم بزنند .  در این دوره من به شما یاد میدم چطور از پایتون در سی شارپ و Vs Code استفاده کنید '),
(2, 'آموزش جامع EF Core', 350000, 'https://toplearn.com/img/course/19bdb16e-5de8-48d8-b53f-d96f58ae615cef%20core.png', 5, 'Git  یکی از معروف ترین و پرکاربرد ترین ابزار های کنترل ورژن در جهان میباشد . که همانطور که از توضیح  این ابزار مشخص است برای رصد و کنترل ورژن های فایل ها و تفییرات ایجاد شده در آنها میباشد .  قدرت و کارایی بالا به علاوه ویژگی Open Source بودن آن و در نتیجه رایگان بودن آن باعث شده تا این ابزار بسیار پرکاربرد باشد .  گیت قابلیت استفاده بصورت Offline و بصورت لوکال رو دارد و شما میتوانید این ابزار را برروی رایانه شخصی خود نصب و استفاده نمایید.  ابزار های زیادی هستند که از گیت به عنوان پایه و اساس استفاده می نمایند مثل GitHub و GitLab که علاوه بر قابلیت های گیت قابلیت های بیشتری مثل میزبانی وب سایت ها در اختیار کاربران قرار میدهد  در این دوره قصد  داریم به بررسی عملکرد و یادگیری آن و چگونگی کارکرد git بپردازیم و در نهایت کار با ابزار گیت هاب رو مورد بررسی قرار بدیم'),
(3, 'آموزش Asp.Net Core 5 Razor Pages', 260000, 'https://toplearn.com/img/course/c7c52bcb-5cbc-49a3-9032-035bc8962620Asp.Net%20Core%20Razor%20Pages.png', 6, 'در حال حاضر تمامی کسب و کارها برای بقای خود به سمت وبسایت ها گرایش پیدا کردند.  ایجاد یک بستر مناسب جهت ورود به این عرصه و رقابت با سایر کسب و کارها به یکی از مهمترین نیازهای جامعه تبدیل شده است  در این دوره ی آموزشی قصد داریم تا با پیاده سازی یک سایت فروشگاه ساز ( Market Place )، زمینه ی ورود کسب و کارهای مختلف را به راحتی در زمینه ی وب فراهم کنیم'),
(4, 'آموزش جاوا اسکریپت برای برنامه ‌نویسی فرم‌ های وب', 550000, 'https://toplearn.com/img/course/488bd69c-205d-49de-a216-c332b7e4dd22vip%20javascript.png', 8, 'به احتمال زیاد، در بیشتر وب ‌سایت‌ها فرم ‌ها را دیده‌اید. در اغلب موارد فرم‌ ها بخش فعال وب‌ سایت هستند و نقش مهمی در جمع‌آوری اطلاعات کاربر دارند. اگر این فرم‌ ها به درستی طراحی نشوند حس ناخوشایندی را برای کاربر به همراه خواهند داشت.  در این دوره روش‌های ساخت فرم ‌های کاربردی که داده‌ها را به خوبی جمع‌آوری می‌کند را خواهید آموخت. فرم‌ هایی که تجربه کاربری عالی و آسانی را برای کاربران به همراه دارد. همچنین می‌توانید مهارت‌هایی را به دست آورید که به خوبی این فرم‌ها را کنترل کنید، از تکنیک‌های اعتبارسنجی استفاده کنید، فرم‌ها را به طور خودکار پر کنید و غیره.'),
(5, 'آموزش ساخت CMS پیشرفته با PHP', 600000, 'https://toplearn.com/img/course/5ea89655-9922-42d3-ab52-187dc7ce23e5php.png', 5, 'با سلام خدمت همه ی شما عزیزان\r\n\r\nاین دوره بخش پیشرفته ی دوره آموزشی طراحی و برنامه نویسی وب در سایت تاپ لرن هست , در این دوره ما به انجام یک پروژه ی حرفه ای با زبان php میپردازیم که بعد از آن شما میتوانید به صورت کامل با چک و خم کار آشنا بشید و همینطور تجربه ی انجام یک پروژه ی کامل میتواند سطح تسلط شما را به شدت افزایش دهد.\r\n\r\nپیش نیاز این دوره: آموزش طراحی و برنامه نویسی وب');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `img_url` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `img_url`) VALUES
(1, 'https://toplearn.com/img/course/bddc32a9-13fa-47ba-a38e-a9c3d223c030Html5,Css3,FlexBox.png'),
(2, 'https://toplearn.com/img/course/46c710bc-9895-42db-bc84-9a6c41d52c1eadds.png'),
(3, 'https://toplearn.com/img/course/img-course-%DB%8C%DA%A9-%D8%B4%D9%86%D8%A8%D9%87-%DB%B7-%D8%A7%D8%B1%D8%AF%DB%8C%D8%A8%D9%87%D8%B4%D8%AA-%DB%B1%DB%B3%DB%B9%DB%B9-68899166-822.jpg'),
(4, 'https://toplearn.com/img/course/b480ffba-97d2-4441-9d2e-ee89838f6aa5flask.png'),
(5, 'https://toplearn.com/img/course/af068497-8da9-4f3c-ae9b-243597308fb8webdesign.png'),
(6, 'https://toplearn.com/img/course/7ceb6d74-aa9c-4ddc-8dbd-ad9781209f0farduino.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `status` int(1) NOT NULL,
  `active_code` int(10) NOT NULL,
  `password` varchar(100) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imgslide`
--
ALTER TABLE `imgslide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `imgslide`
--
ALTER TABLE `imgslide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
