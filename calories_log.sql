-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2022 at 02:06 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calories_log`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminName`, `email`, `password`) VALUES
(1, 'Ario Syahputra', 'ariooo1234@gmail.com', 'ario'),
(2, 'Ronaldus Priambudi', 'ronaldus1234@gmail.com', 'ronald');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `articleId` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `datePost` date NOT NULL,
  `author` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`articleId`, `adminId`, `title`, `datePost`, `author`, `description`) VALUES
(1, 1, '6 Jenis Makanan Kaya akan Vitamin untuk Mata', '2022-03-16', 'Martinus Andika', 'Tak hanya wortel, ada beragam pilihan makanan yang mengandung vitamin untuk mata. Selain vitamin A, jenis makanan ini juga diketahui tinggi kandungan zinc, lutein, dan asam lemak omega-3, yang tentunya baik untuk kesehatan mata.\n\nMata memiliki fungsi yang begitu penting bagi manusia. Oleh karena itu, kesehatannya harus selalu dijaga dan salah satunya adalah dengan mengonsumsi makanan kaya akan vitamin untuk mata.\n\nDengan memenuhi asupan vitaminnya, mata dapat menjalankan fungsinya secara optimal serta terlindungi dari berbagai kerusakan dan risiko penyakit mata terkait usia, seperti katarak, degenerasi makula, dan glaukoma.\n\nBeragam Makanan yang Mengandung Vitamin untuk Mata\nAda beberapa jenis makanan yang mengandung beragam nutrisi dan vitamin untuk mata, di antaranya:\n\n1. Ubi jalar\nSama seperti wortel, sayur dan buah yang berwarna jingga atau kuning seperti ubi jalar, juga memiliki banyak kandungan beta karoten. Senyawa alami ini bermanfaat untuk mendukung kemampuan melihat di malam hari dan saat pencahayaan redup.\n\nSelain itu, ubi jalar juga mengandung vitamin C yang dibutuhkan tubuh setiap harinya. Anda bisa mengonsumsi ubi jalar dengan cara direbus atau dipanggang sebagai camilan sehat.\n\n2. Sayuran hijau\nBerbagai jenis sayuran hijau, seperti bayam, brokoli, sawi, dan kale, mengandung vitamin C dan vitamin E yang baik untuk mata. Sayuran tersebut juga diketahui mengandung lutein dan zeaxanthin yang berperan sebagai antioksidan.\n\nBeberapa studi mengungkapkan bahwa nutrisi tersebut penting untuk melindungi sel-sel mata dari paparan radikal bebas penyebab berbagai penyakit mata, seperti degenerasi makula.\n\n3. Ikan\nBeragam jenis ikan laut, seperti ikan tuna, salmon, dan tongkol, juga termasuk makanan yang kaya akan vitamin untuk mata. Ikan ini mengandung asam lemak omega-3 yang berperan dalam meningkatkan fungsi penglihatan dan kesehatan retina mata serta mencegah mata kering.\n\n4. Jeruk dan stroberi\nJeruk dan stroberi kaya akan kandungan vitam'),
(2, 2, '8 Cara Mudah Menurunkan Berat Badan', '2022-05-12', 'Faris Adillah', 'Banyak orang yang mengalami kesulitan menurunkan berat badan, padahal sebenarnya ada berbagai cara mudah menurunkan berat badan. Selama dilakukan dengan bertahap dan konsisten, cara-cara ini tidak akan membuatmu merasa tersiksa.\r\n\r\nTidak perlu menerapkan diet yang terlalu ketat atau berlebihan, karena nyatanya cara seperti itu tidak efektif. Ada beberapa cara mudah menurunkan berat badan yang tidak menyiksa, namun justru lebih efektif. Yang pasti, kamu butuh komitmen dan disiplin dalam menjalaninya, agar berat badanmu dapat turun dan mencapai berat badan ideal.\r\n\r\nBeragam Cara Mudah Menurunkan Berat Badan\r\nBerikut ini adalah beberapa cara mudah menurunkan berat badan yang bisa kamu terapkan:\r\n\r\n1. Minum air sebelum makan\r\nMenurut penelitian, minum air sebelum makan bisa membantu menurunkan berat badan. Minum air sebelum makan dapat membuatmu lebih cepat merasa kenyang, sehingga keinginan untuk melahap makanan dalam jumlah banyak dapat berkurang.\r\n\r\nSelain itu, perlu kamu sadari bahwa rasa haus terkadang muncul menyerupai rasa lapar. Jadi saat mulai merasa lapar, coba atasi dengan minum air putih terlebih dahulu, dan hanya makan pada waktunya. Dengan menerapkan cara ini, jumlah kalori yang kamu konsumsi juga dapat berkurang.\r\n\r\n2. Jangan lupa sarapan\r\nTahukah kamu, sarapan adalah bagian penting dari penurunan berat badan? Dengan sarapan rutin, keinginan untuk mengonsumsi makanan atau camilan yang tidak sehat jadi berkurang.\r\n\r\nMembiasakan diri sarapan juga akan membuat rasa lapar di siang hari berkurang. Efeknya, keinginan untuk mengonsumsi makanan dalam jumlah berlebihan pada jam makan siang akan turut berkurang.\r\n\r\n3. Konsumsi makanan yang tepat\r\nKamu yang sedang menjalani program penurunan berat badan, disarankan untuk mengonsumsi makanan berprotein dan berserat. Makanan berprotein bisa membantu tubuh membakar lemak dan menjadi sumber energi. Pilih sumber protein yang sehat untuk tubuh, seperti putih telur, yoghurt, daging tanpa lemak, makanan laut, kedelai, kacang-kacangan atau keju.\r\n\r\nSelain makanan yang tinggi protein, perbanyak pula konsumsi makanan berserat. Makanan berserat dapat membuatmu merasa kenyang lebih lama, namun rendah kandungan kalori. Makanan berserat yang bisa kamu konsumsi di antaranya adalah sayur, buah, makanan yang terbuat dari biji-bijian utuh, kacang-kacangan, dan gandum. Buah yang mengandung lemak sehat, seperti alpukat, juga baik dikonsumsi untuk diet.\r\n\r\n4. Makan dalam porsi kecil\r\nKamu bisa menyiasatinya dengan memakai piring atau mangkuk yang lebih kecil saat mengambil makanan. Menurut penelitian, makan dengan piring atau mangkuk kecil dapat membuat kamu terbiasa makan dengan porsi yang sedikit, sehingga jumlah asupan kalori yang masuk ke dalam tubuh juga akan berkurang.\r\n\r\nMakan dengan porsi kecil namun sering, yaitu 4-5 kali sehari, lebih baik dalam membantu menurunkan berat badan ketimbang makan dalam porsi besar sebanyak 3 kali sehari.\r\n\r\n5. Makan secara perlahan\r\nSelain makan dalam porsi kecil, makan secara perlahan dan santai juga dapat mendukung penurunan berat badan. Dengan kebiasaan makan seperti ini, tubuh dapat mengirim sinyal kenyang ke otak sebelum kamu menghabiskan terlalu banyak makanan.\r\n\r\n6. Tidak perlu menghindari makanan tertentu\r\nTidak perlu menghindari makanan yang kamu suka. Jika kamu menjauhi makanan tersebut, keinginanmu untuk mengonsumsinya malah akan jadi lebih kuat. Jadi kuncinya bukan menjauhi, tapi membatasinya. Sebagai contoh, kamu bisa membeli kue kering satuan, ketimbang membelinya dalam kotak atau stoples.\r\n\r\n7. Tidur cukup\r\nSelain menjaga pola makan, pastikan waktu tidurmu tercukupi dengan baik. Sebab, saat kamu kurang tidur, produksi hormon ghrelin yang merangsang nafsu makan dapat meningkat. Efeknya, kamu akan mengonsumsi makanan berkalori tinggi dalam jumlah banyak. Tentunya hal ini akan membuat diet penurunan berat badanmu jadi berantakan.\r\n\r\n8. Bergerak aktif\r\nSudah bukan rahasia umum lagi bahwa olahraga selalu dikaitkan dengan penurunan berat badan. Olahraga yang dilakukan secara rutin akan membantu membakar kelebihan kalori yang tidak bisa dipangkas hanya dengan menjalani diet.\r\n\r\nKamu dapat mempraktikkan cara mudah menurunkan berat badan di atas sebagai bagian dari pola hidup sehat. Jangan tergoda oleh berbagai diet menurunkan berat badan dengan cepat, seperti diet jus buah dan sayur, diet ekstrim VLCD, karena berisiko mengganggu kesehatan dan membuat berat badan mudah untuk naik kembali.\r\n\r\nJika perlu, kamu dapat berkonsultasi dengan dokter gizi untuk program penurunan berat badan. Dokter gizi akan memberikan rencana diet yang sesuai kondisi kesehatanmu.'),
(3, 2, 'Inilah 6 Manfaat Air Kelapa untuk Kesehatan', '2022-03-22', 'Mutawali Mahasin', 'Manfaat air kelapa tidak hanya sekadar untuk menghilangkan rasa haus, tetapi juga baik untuk kesehatan tubuh. Selain bisa mengatasi gejala dehidrasi ringan, konsumsi air kelapa juga dapat menurunkan risiko terjadinya penyakit jantung.\r\n\r\nAir kelapa kerap menjadi pilihan minuman yang dikonsumsi saat cuaca panas untuk melepas dahaga. Selain rasanya yang menyegarkan, air kelapa juga memiliki beragam manfaat yang baik untuk kesehatan.\r\n\r\nRagam Manfaat Air Kelapa untuk Kesehatan\r\nSelain menghilangkan dahaga, air kelapa juga dapat memberikan beragam manfaat bagi tubuh. Berikut ini adalah beberapa manfaat air kelapa yang dapat Anda peroleh:\r\n\r\n1. Meningkatkan stamina tubuh\r\nTak hanya memberikan efek menyegarkan, air kelapa juga dapat meningkatkan stamina tubuh. Hal ini berkat kandungan karbohidrat di dalam air kelapa yang dapat digunakan tubuh untuk menghasilkan energi, sehingga Anda pun bisa lebih bersemangat dalam menjalani aktivitas.\r\n\r\n2. Mencegah dehidrasi\r\nAir kelapa juga kerap digunakan untuk memenuhi kebutuhan cairan tubuh dan mengatasi dehidrasi ringan. Meski demikian, Anda tetap dianjurkan untuk minum air putih setidaknya 8 gelas setiap harinya untuk mencegah dehidrasi.\r\n\r\n3. Menjaga daya tahan tubuh\r\nAir kelapa mengandung beragam antioksidan yang dapat melindungi tubuh dari paparan radikal bebas penyebab berbagai penyakit. Bahkan air kelapa ditambah dengan perasan jeruk nipis dipercaya sebagai minuman untuk menyembuhkan COVID-19. Meski demikian, manfaat air kelapa ini masih perlu dikaji lebih lanjut.\r\n\r\n4. Menurunkan risiko terjadinya penyakit jantung\r\nAir kelapa dipercaya memiliki efek yang dapat menurunkan kadar kolesterol jahat (LDL) dalam darah, sehingga dapat mengurangi penumpukan lemak yang menjadi salah satu faktor risiko penyakit jantung dan serangan jantung.\r\n\r\n5. Mencegah penyakit batu ginjal\r\nSebuah studi menyebutkan bahwa air kelapa dapat mencegah penumpukan kristal yang menempel pada ginjal dan bagian lain dari saluran kemih. Hal ini menjadikan air kelapa diyakini efektif untuk mencegah batu ginjal.\r\n\r\n6. Menurunkan tekanan darah\r\nManfaat air kelapa diduga baik untuk menurunkan dan mengontrol tekanan darah. Hal ini karena air kelapa memiliki kandungan kalium yang terbukti dapat menurunkan tekanan darah pada penderita darah tinggi.\r\n\r\nMeski demikian, manfaat air kelapa untuk menurunkan tekanan darah ini masih memerlukan penelitian lebih lanjut.\r\n\r\nSelain beragam manfaat air kelapa di atas, minuman ini juga dipercaya bisa menjaga kesehatan saluran pencernaan. Salah satu khasiat air kelapa bagi pencernaan yaitu meredakan gejala asam lambung naik atau penyakit asam lambung.');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `recipeId` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `method` varchar(10000) NOT NULL,
  `ingredients` varchar(2000) NOT NULL,
  `calorie` double NOT NULL,
  `sugar` double NOT NULL,
  `fiber` double NOT NULL,
  `protein` double NOT NULL,
  `salt` double NOT NULL,
  `fat` double NOT NULL,
  `saturate` double NOT NULL,
  `carbs` double NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipeId`, `adminId`, `title`, `method`, `ingredients`, `calorie`, `sugar`, `fiber`, `protein`, `salt`, `fat`, `saturate`, `carbs`, `category`) VALUES
(1, 2, 'Wild salmon veggie bowl', 'LANGKAH 1\r\nHancurkan wortel dan cukini menjadi potongan spaghetti panjang dengan pengupas batang korek api atau spiralizer, dan tumpuk di dua piring.\r\n\r\nLANGKAH 2\r\nAduk bit, cuka balsamic, cincang dill dan bawang merah bersama-sama dalam mangkuk kecil, lalu sendok di atas sayuran. Serpih di atas potongan salmon dan taburkan dengan caper dan dill ekstra, jika Anda suka.', '2 wortel\n1 buah labu besar\n2 buah bit matang, potong dadu\n2 sdm cuka balsamic\nbungkus dill kecil, cincang, ditambah beberapa bagian depan tambahan (opsional)\n1 bawang merah kecil, cincang halus\n280g salmon liar rebus atau kalengan\n2 sdm caper dalam cuka, bilas', 395, 16, 7, 39, 1, 17, 4, 18, 'main course'),
(2, 1, 'Spinach, sweet potato & lentil dhal popeye', 'LANGKAH 1\r\nPanaskan 1 sdm minyak wijen dalam wajan lebar dengan tutup yang rapat.\r\n\r\nLANGKAH 2\r\nTambahkan 1 bawang merah cincang halus dan masak dengan api kecil selama 10 menit, aduk sesekali, sampai melunak.\r\n\r\nLANGKAH 3\r\nTambahkan 1 siung bawang putih yang dihancurkan, jahe seukuran ibu jari yang dicincang halus dan 1 cabai merah yang dicincang halus, masak selama 1 menit, lalu tambahkan 1 sdt kunyit bubuk dan 1 sdt jintan halus dan masak selama 1 menit lagi.\r\n\r\nLANGKAH 4\r\nNyalakan api sampai sedang, tambahkan 2 buah ubi jalar, potong-potong, dan aduk semuanya hingga kentang terlapisi campuran bumbu.\r\n\r\nLANGKAH 5\r\nMasukkan 250g lentil merah, 600ml kaldu sayur dan sedikit bumbu.\r\n\r\nLANGKAH 6\r\nDidihkan cairan, lalu kecilkan api, tutup dan masak selama 20 menit sampai lentil empuk dan kentang hanya mempertahankan bentuknya.\r\n\r\nLANGKAH 7\r\nCicipi dan sesuaikan bumbu, lalu aduk perlahan 80g bayam. Setelah layu, taburi dengan 4 daun bawang yang diiris secara diagonal dan bungkus kecil daun kemangi robek untuk disajikan.\r\n\r\nLANGKAH 8\r\nAtau, biarkan dingin sepenuhnya, lalu bagi di antara wadah kedap udara dan simpan di lemari es untuk kotak makan siang yang sehat.', '1 sdm minyak wijen\r\n1 bawang merah, cincang halus\r\n1 siung bawang putih, geprek\r\njahe seukuran ibu jari, kupas dan cincang halus\r\n1 cabai merah, cincang halus\r\n1½ sdt kunyit bubuk\r\n1½ sdt jinten tanah\r\n2 ubi jalar (sekitar 400g/14oz), potong-potong rata\r\n250 gr lentil merah belah\r\n600 ml kaldu sayuran\r\n80g kantong bayam\r\n4 daun bawang, iris diagonal, untuk disajikan\r\nbungkus kecil kemangi Thailand, sobek daunnya, untuk disajikan', 397, 19, 11, 18, 0.6, 5, 1, 65, 'main course'),
(3, 1, 'Sweet potato & peanut curry', 'LANGKAH 1\r\nLelehkan 1 sdm minyak kelapa dalam panci di atas api sedang dan lunakkan 1 bawang bombay cincang selama 5 menit. Tambahkan 2 siung bawang putih parut dan parutan jahe seukuran ibu jari, dan masak selama 1 menit hingga harum.\r\n\r\nLANGKAH 2\r\nMasukkan 3 sdm pasta kari merah Thailand, 1 sdm selai kacang halus dan 500g ubi jalar, kupas dan potong-potong, lalu tambahkan 400ml santan dan 200ml air.\r\n\r\nLANGKAH 3\r\nDidihkan, kecilkan api dan didihkan, buka tutupnya, selama 25-30 menit atau sampai ubi jalar lunak.\r\n\r\nLANGKAH 4\r\nAduk melalui 200g bayam dan jus 1 jeruk nipis, dan bumbui dengan baik. Sajikan dengan nasi matang, dan jika Anda ingin sedikit renyah, taburi beberapa kacang panggang kering.', '1 sdm minyak kelapa\r\n1 bawang bombay, cincang\r\n2 siung bawang putih, parut\r\njahe seukuran ibu jari, parut\r\n3 sdm pasta kari merah Thailand (periksa label untuk memastikan itu vegetarian/vegan)\r\n1 sdm selai kacang halus\r\n500 gram ubi jalar, kupas dan potong dadu\r\n400ml santan kaleng\r\n200g kantong bayam\r\n1 jeruk nipis, peras airnya\r\nnasi matang, untuk disajikan (opsional)\r\nkacang panggang kering, untuk disajikan (opsional)', 387, 15, 7, 6, 0.6, 25, 18, 32, 'main course'),
(4, 1, 'Family meals: Easy fish pie recipe', 'LANGKAH 1\r\nPanaskan oven hingga 200C.\r\n\r\nLANGKAH 2\r\nMasukkan 1kg kentang, kupas dan belah dua, ke dalam panci dan tuangkan air yang cukup untuk menutupinya. Masak hingga mendidih lalu masak hingga empuk.\r\n\r\nLANGKAH 3\r\nSetelah matang, tiriskan dan haluskan dengan sedikit susu dan kenop mentega. Bumbui dengan lada hitam bubuk.\r\n\r\nLANGKAH 4\r\nMasukkan 25g mentega, 25g tepung terigu dan 4 daun bawang iris halus ke dalam panci lain dan panaskan perlahan sampai mentega meleleh, aduk secara teratur. Masak selama 1-2 menit.\r\n\r\nLANGKAH 5\r\nKocok 400ml susu secara bertahap menggunakan pengocok balon jika ada. Didihkan, aduk agar tidak menggumpal dan lengket di dasar panci. Masak selama 3-4 menit sampai mengental.\r\n\r\nLANGKAH 6\r\nMatikan api dan masukkan 320g-400g campuran ikan, 1 sdt Dijon atau mustard Inggris, seikat kecil daun bawang, segenggam jagung manis dan segenggam petits pois. Sendokkan ke dalam piring tahan oven atau 6-8 ramekin.\r\n\r\nLANGKAH 7\r\nSendok kentang di atasnya dan taburi dengan segenggam keju cheddar parut.\r\n\r\nLANGKAH 8\r\nMasukkan ke dalam oven selama 20-25 menit atau sampai berwarna keemasan dan menggelembung di tepinya. Atau, tutup dan bekukan pai atau pai mini untuk lain waktu.', '1kg kentang Maris Piper, kupas dan belah dua\r\n400ml susu, ditambah percikan\r\n25g mentega, ditambah kenop\r\n25 gr tepung terigu\r\n4 batang daun bawang, iris halus\r\n1 x bungkus campuran pai ikan (cod, salmon, smoked haddock dll, berat sekitar 320g-400g tergantung ukuran kemasan)\r\n1 sdt Dijon atau mustard Inggris\r\nbungkus 25g atau seikat kecil daun bawang, iris halus\r\nsegenggam jagung manis beku\r\nsegenggam petits beku pois\r\nsegenggam cheddar parut', 455, 7, 5.7, 27.1, 1, 15.7, 7.5, 50.5, 'main course'),
(5, 1, 'New York cheesecake', 'LANGKAH 1\r\nTempatkan rak oven di tengah oven. Panaskan oven dengan suhu 180C/160C fan/gas4.\r\n\r\nLANGKAH 2\r\nLapisi dasar loyang kue springform 23 cm dengan meletakkan selembar kertas roti atau kertas timah persegi di atas alas loyang, lalu gunting sisinya sehingga kertas atau kertas timah itu terperangkap dan sisa-sisanya menempel di bagian bawah.\r\n\r\nLANGKAH 3\r\nUntuk kulitnya, lelehkan 85g mentega dalam panci sedang. Masukkan 140g remah biskuit digestif dan 1 sdm golden caster atau gula pasir agar adonan tercampur rata.\r\n\r\nLANGKAH 4\r\nTekan campuran ke bagian bawah panci dan panggang selama 10 menit. Dinginkan di rak kawat sambil menyiapkan isian.\r\n\r\nLANGKAH 5\r\nUntuk isian, naikkan suhu oven ke kipas 220C/ kipas 200C/ gas 7. Di atas meja mixer yang dilengkapi dengan paddle attachment, kocok 900g keju lunak penuh lemak dengan kecepatan sedang-rendah hingga lembut, sekitar 2 menit.\r\n\r\nLANGKAH 6\r\nDengan mixer rendah, secara bertahap tambahkan 250g gula kastor emas, lalu 3 sdm tepung terigu dan sedikit garam, gosok sisi mangkuk dan dayung dua kali.\r\n\r\nLANGKAH 7\r\nTukar lampiran dayung untuk pengocok. Lanjutkan dengan menambahkan 1½ sdt ekstrak vanila, 2 sdt kulit lemon, dan 1½ sdt jus lemon. Pukul dalam 3 telur besar dan 1 kuning telur, satu per satu, mengikis mangkuk dan mengocok setidaknya dua kali.\r\n\r\nLANGKAH 8\r\nAduk sekotak 284ml krim asam sampai halus, lalu takar 200ml (lebih dari karton). Lanjutkan dengan kecepatan rendah saat Anda menambahkan krim asam yang diukur (sisakan sisanya). Kocok untuk berbaur, tapi jangan over-beat. Adonan harus halus, ringan dan agak lapang.\r\n\r\nLANGKAH 9\r\nOlesi sisi loyang springform dengan mentega cair dan taruh di atas loyang. Tuang isian - jika ada gumpalan, tenggelamkan dengan pisau - bagian atasnya harus sehalus mungkin. Panggang selama 10 menit.\r\n\r\nLANGKAH 10\r\nKurangi suhu oven menjadi 110C/ 90C fan/ gas dan panggang selama 45 menit lagi. Jika Anda mengocok kaleng dengan lembut, isiannya akan sedikit bergoyang.\r\n\r\nLANGKAH 11\r\nMatikan oven dan buka pintu oven untuk kue keju yang lembut di tengahnya, atau biarkan tertutup jika Anda lebih suka tekstur yang lebih kering. Biarkan dingin dalam oven selama 2 jam. Cheesecake mungkin sedikit retak di atasnya saat dingin.\r\n\r\nLANGKAH 12\r\nCampurkan krim asam yang dipesan dengan krim asam karton 142ml, 1 sdm gula kastor emas dan 2 sdt jus lemon untuk topping. Oleskan di atas kue keju tepat di tepinya. Tutup longgar dengan foil dan dinginkan selama minimal 8 jam atau semalam.\r\n\r\nLANGKAH 13\r\nJalankan pisau berbilah bundar di sekitar sisi kaleng untuk melonggarkan tepi yang tersangkut. Buka kunci samping, geser kue keju dari dasar kaleng ke piring, lalu geser kertas perkamen keluar dari bawahnya.', 'Untuk pinggiran:\r\n85g mentega, ditambah ekstra untuk timah\r\n140g biskuit pencernaan, dibuat menjadi remah-remah halus (tambahkan 2 biskuit ekstra jika Anda suka dasar yang lebih tebal)\r\n1 sdm gula pasir, butiran atau kastor emas\r\n\r\nUntuk isian kue keju:\r\n900g keju Philadelphia, atau keju lunak penuh lemak lainnya\r\n250 gr gula kastor emas\r\n3 sdm tepung terigu\r\n1 sdt ekstrak vanila\r\nparutan halus dari 1 lemon (sekitar 2 sdt)\r\n1 sdt jus lemon\r\n3 telur besar, ditambah 1 kuning telur\r\n284ml karton krim asam\r\nUntuk topping krim asam\r\n142ml karton krim asam\r\n1 sdm gula kastor emas\r\n2 sdt air jeruk lemon', 549, 25, 1, 1, 1.04, 41, 24, 37, 'dessert'),
(6, 2, 'Easy chocolate molten cakes', 'LANGKAH 1\r\nPanaskan oven hingga 200C/180C. Mentega 6 cetakan dariole atau baskom dengan baik dan letakkan di atas loyang.\r\n\r\nLANGKAH 2\r\nMasukkan 100g mentega dan 100g cokelat hitam cincang ke dalam mangkuk tahan panas dan taruh di atas panci berisi air panas (atau masukkan ke dalam microwave dan lelehkan dalam waktu 30 detik dengan pengaturan rendah) dan aduk hingga rata. Sisihkan hingga agak dingin selama 15 menit.\r\n\r\nLANGKAH 3\r\nMenggunakan pengocok tangan elektrik, campurkan 150g gula halus berwarna cokelat muda, lalu 3 butir telur besar, satu per satu, diikuti dengan sdt ekstrak vanila dan terakhir 50g tepung biasa. Bagi campuran di antara darioles atau baskom.\r\n\r\nLANGKAH 4\r\nAnda sekarang dapat memasukkan campuran ke dalam lemari es, atau freezer sampai Anda siap untuk memanggangnya. Dapat dimasak langsung dari beku selama 16 menit, atau panggang sekarang selama 10-12 menit sampai bagian atasnya keras saat disentuh tetapi bagian tengahnya masih terasa squidgy.\r\n\r\nLANGKAH 5\r\nJalankan pisau dengan hati-hati di sekitar tepi setiap puding, lalu pindahkan ke piring saji dan sajikan dengan krim tunggal.', '100g mentega, ditambah ekstra untuk mengoles\r\n100 gram dark chocolate, potong-potong\r\n150 gr gula halus coklat muda\r\n3 butir telur besar\r\nsdt ekstrak vanila\r\n50 gram tepung terigu\r\nkrim tunggal, untuk disajikan', 391, 28, 2, 6, 0.5, 24, 14, 36, 'dessert'),
(7, 1, 'Strawberry pavlova', 'LANGKAH 1\r\nPanaskan oven hingga 150C/130C.\r\n\r\nLANGKAH 2\r\nDengan menggunakan pensil, tandai keliling piring makan di atas perkamen kue.\r\n\r\nLANGKAH 3\r\nKocok 4 putih telur dengan mixer tangan sampai membentuk puncak yang kaku, lalu masukkan 250g gula kastor, 1 sdm sekaligus, sampai meringue terlihat mengkilap.\r\n\r\nLANGKAH 4\r\nPukul dalam 1 sdt cuka anggur putih, 1 sdt tepung jagung dan 1 sdt ekstrak vanila.\r\n\r\nLANGKAH 5\r\nSebarkan meringue di dalam lingkaran, buat kawah dengan membuat sisinya sedikit lebih tinggi dari tengahnya.\r\n\r\nLANGKAH 6\r\nPanggang selama 1 jam, lalu matikan api dan biarkan Pavlova benar-benar dingin di dalam oven.\r\n\r\nLANGKAH 7\r\nSaat meringue dingin, potong 100g stroberi yang sudah dikupas. Campurkan dengan 100g kismis merah dan 2 sdm gula icing.\r\n\r\nLANGKAH 8\r\nTempatkan dalam food processor, blitz sampai halus, lalu dorong campuran buah melalui saringan.\r\n\r\nLANGKAH 9\r\nKocok 350ml double cream dengan sisa 1 sdm gula icing dan oleskan di atas meringue. Letakkan sisa 400g stroberi yang sudah dikupas dan dibelah dua serta 100g kismis merah di atas krim dan terakhir tuangkan saus di atasnya.', 'Untuk meringue-nya:\r\n4 putih telur\r\n250 gram gula kastor\r\n1 sdt cuka anggur putih\r\n1 sdt tepung maizena\r\n1 sdt ekstrak vanila\r\n\r\nUntuk toppingnya:\r\n500g stroberi, dikupas dan dibelah dua\r\n200 gr kismis, buang tangkainya\r\n3 sdm gula icing\r\n350ml krim ganda', 525, 59, 2, 4, 0.17, 31, 18, 60, 'dessert'),
(8, 2, 'Thai chicken and sweet potato soup', 'LANGKAH 1\r\nPanaskan minyak dalam panci besar. Tambahkan bawang putih, cabai, jahe, serai, batang ketumbar dan pasta kari dan masak selama 2 - 3 menit sampai aromanya keluar.\r\n\r\nLANGKAH 2\r\nTambahkan kaldu ayam, krim kelapa dan ubi jalar dan masak selama 15 menit atau sampai kentang lunak. Buang serai dan buang. Pindahkan dengan hati-hati ke blender dan blitz sampai halus. Jika membeku, untuk hasil terbaik bekukan pada titik ini, jika tidak, sebagai pilihan yang lebih mudah, bekukan resep lengkap.\r\n\r\nLANGKAH 3\r\nKembali ke panci, tambahkan ayam dan masak perlahan selama 5 - 10 menit atau sampai ayam matang. Aduk melalui air jeruk nipis, gula dan kecap ikan, taburi dengan daun ketumbar dan sajikan.', '1 sdt minyak zaitun atau minyak lobak\r\n2 siung bawang putih, cincang\r\n1 cabai merah, buang bijinya dan cincang\r\n2 cm bonggol jahe, cincang\r\n1 batang serai, geprek\r\n1 x 25g bungkus ketumbar, daun dan batang dicincang secara terpisah\r\n2 sdm pasta kari merah Thailand\r\n750ml kaldu ayam (dibuat dengan 2 kubus kaldu)\r\n1 kaleng kecil (160ml) krim kelapa\r\n500 gram ubi jalar, kupas dan cincang kasar\r\n2 dada ayam tanpa kulit, iris\r\n1 jeruk nipis, air perasannya saja\r\n1 sdt gula\r\nsdt kecap ikan\r\nroti kering, untuk disajikan (opsional)', 360, 10.8, 3.2, 19.2, 2.1, 18.1, 12.4, 30, 'appetizer'),
(9, 2, 'Rice paper wraps', 'LANGKAH 1\r\nMasukkan mie ke dalam panci berisi air dan didihkan, didihkan selama 3 menit, lalu dinginkan di bawah air mengalir. Tiriskan secara menyeluruh.\r\n\r\nLANGKAH 2\r\nPotong wortel menjadi korek api menggunakan pisau atau mandolin. Potong alpukat menjadi potongan-potongan dan mentimun menjadi batang tipis. Rendam 2 bungkus kertas nasi dalam air dingin selama 1-2 menit sampai floppy.\r\n\r\nLANGKAH 3\r\nAngkat 1 lembar kertas nasi dari air, kocok perlahan, lalu letakkan dengan hati-hati di atas papan. Tempatkan 2 udang di tengahnya, dengan daun mint di antaranya. Tambahkan potongan alpukat, tumpuk beberapa mie di atasnya, lalu tambahkan lapisan wortel dan mentimun. Lipat bagian bawah kertas nasi, lalu lipat sisi-sisinya dan gulung dengan rapat. Ulangi menggunakan pembungkus kedua dan rendam 2 lagi untuk membuat 2 gulungan lagi.\r\n\r\nLANGKAH 4\r\nBuat sisa gulungan menggunakan sisa 4 bungkus dan ayam suwir sebagai pengganti udang. Sajikan gulungan dengan saus cabai manis untuk dicelupkan.', '50 gr mie bihun beras\r\n1 wortel, kupas\r\n1 buah alpukat, kupas dan buang batunya\r\nmentimun\r\n8 bungkus kertas nasi\r\n8 raja udang, dikupas dan dimasak\r\n8 lembar daun mint\r\ndada ayam rebus, suwir\r\nsaus cabai manis, untuk disajikan', 125, 1, 2, 5, 0.2, 5, 1, 15, 'snack'),
(10, 2, 'Double salmon roll', 'LANGKAH 1\r\nSerpih salmon asap panas ke dalam mangkuk, buang kulitnya. Tambahkan lobak, jus lemon, keju lunak, daun bawang yang dipotong halus dan beberapa bumbu, lalu kocok hingga tercampur dengan tekstur mousse yang kasar.\r\n\r\nLANGKAH 2\r\nLetakkan 2 lembar cling film di atas permukaan kerja Anda, lalu letakkan irisan salmon asap untuk membuat persegi panjang sekitar 20 x 50cm. Tuang campuran salmon asap panas dan ratakan dengan lembut. Gunakan tepi cling film untuk menggulung sisi panjang persegi panjang ke dalam dirinya sendiri, lalu menggulung seperti gulungan Swiss. Bungkus dalam film, putar ujungnya seperti kerupuk untuk mengamankan dan menahan bentuknya. Bekukan hingga satu bulan.\r\n\r\nLANGKAH 3\r\nPindahkan gulungan dari freezer ke lemari es sehari sebelum Anda ingin menyajikannya. Saat masih setengah beku, potong menjadi irisan tebal, taruh di atas nampan, lalu biarkan mencair sepenuhnya di lemari es. Sajikan dengan daun bawang yang dicampur dengan daun bawang dan sedikit saus, dan beberapa roti panggang melba.', '160g bungkus salmon asap panas\r\n2 sdt lobak pedas\r\njus setengah lemon\r\n200g tub keju lunak penuh lemak\r\nsetengah 30g/1oz bungkus kucai, potong halus\r\n400 gram salmon asap iris\r\n200g tas campuran daun\r\nsetengah kantong kucai 30g/1oz, potong tebal\r\npakaian favoritmu\r\nroti panggang melba, untuk disajikan', 327, 0, 0, 24, 4.07, 26, 13, 10, 'appetizer'),
(11, 2, 'Tomato & feta pesto bites', 'LANGKAH 1\r\nGulung kue di atas permukaan yang ditaburi sedikit dengan Parmesan hingga setebal potongan sepuluh sen. Cetak 12 putaran dengan menggunakan pemotong polos 6 cm dan atur loyang dengan lubang 12 lubang. Dinginkan selama 20 menit. Panaskan oven dengan kipas 180C/konvensional 200C/gas 6.\r\n\r\nLANGKAH 2\r\nTusuk setiap alas kue dengan garpu dan panggang selama 15-20 menit sampai berwarna keemasan. Keluarkan dari loyang dan biarkan dingin di rak kawat. Sementara itu, sobek daun dari tangkai peterseli dan masukkan semua kecuali 12 tangkai kecil ke dalam food processor dengan kacang pinus, lalu giling sampai dicincang kasar. Kemudian tambahkan feta, bawang putih dan minyak dan jagoan untuk membuat pasta kental. Simpan tangkai yang sudah dipesan dalam semangkuk air di lemari es. Basis kue akan disimpan dalam kaleng hingga 2 hari dan pesto akan disimpan di lemari es semalaman.\r\n\r\nLANGKAH 3\r\nUntuk menyajikannya, tuangkan sesendok feta pesto ke atas kue tar dan taburi masing-masing dengan dua bagian tomat ceri. Hiasi dengan tangkai peterseli yang sudah dipesan. Atur di atas piring dan bulatkan tangan dengan semangkuk buah zaitun hitam dan mint berkilau & julep lemon.', 'setengah bungkus 350g (bekukan sisanya untuk digunakan lain waktu) puff pastry\r\n25g parmesan parut halus (atau alternatif vegetarian)\r\n20g pak peterseli daun datar segar\r\n2 sdm kacang pinus\r\n100 gr keju feta, hancurkan\r\n1 siung bawang putih, geprek\r\n4 sdm minyak zaitun\r\n12 tomat ceri kecil, dibelah dua\r\nzaitun hitam, untuk disajikan', 271, 0, 0, 7, 1, 22, 8, 11, 'appetizer'),
(12, 2, 'Nutty chicken satay strips', 'LANGKAH 1\r\nPanaskan oven dengan kipas/gas 200C/180C 4 dan lapisi loyang dengan kertas antilengket.\r\n\r\nLANGKAH 2\r\nCampurkan 2 sdm selai kacang chunky dengan 1 siung bawang putih parut halus, 1 sdt bubuk kari Madras, beberapa kecap asin, dan 2 sdt air jeruk nipis dalam mangkuk. Beberapa mentega kacang lebih kental dari yang lain, jadi jika perlu, tambahkan sedikit air mendidih untuk mendapatkan konsistensi lapisan.\r\n\r\nLANGKAH 3\r\nTambahkan 2 fillet dada ayam tanpa kulit, potong-potong, dan aduk rata. Susun di atas loyang, beri jarak, dan panggang dalam oven selama 8-10 menit sampai matang, tetapi masih berair.\r\n\r\nLANGKAH 4\r\nMakan hangat dengan timun kira-kira 10 cm, potong-potong, dan saus sambal manis. Atau, biarkan dingin dan simpan di lemari es hingga 2 hari.', '2 sdm selai kacang chunky (tanpa minyak sawit atau gula)\r\n1 siung bawang putih, parut halus\r\n1 sdt bubuk kari madras\r\nsedikit kecap asin\r\n2 sdt air jeruk nipis\r\n2 fillet dada ayam tanpa kulit (sekitar 300g) potong-potong tebal\r\nsekitar 10 cm mentimun, potong jari-jari\r\nsaus cabai manis, untuk disajikan', 276, 2, 41, 0.7, 10, 2, 2, 3, 'snack'),
(13, 2, 'Easy onion bhajis', 'LANGKAH 1\r\nRendam bawang dalam air dingin saat Anda membuat campuran dasar. Ayak tepung dan baking powder ke dalam mangkuk, lalu tambahkan bubuk cabai, kunyit, cabai cincang dan sedikit garam. Campurkan sekitar 100ml air dingin untuk membuat adonan kental – tambahkan percikan lagi jika terasa terlalu kaku.\r\n\r\nLANGKAH 2\r\nUntuk raita, kupas mentimun dan parut ke dalam saringan di atas mangkuk lain. Campur bahan yang tersisa dengan beberapa bumbu dan mentimun yang dikeringkan – peras kelembapan ekstra dengan tangan Anda – lalu masukkan ke dalam mangkuk saji kecil.\r\n\r\nLANGKAH 3\r\nTiriskan bawang bombay dengan baik dan campurkan ke dalam adonan. Panaskan minyak sekitar 5 cm dalam wajan atau wajan yang dalam. Jangan mengisi panci lebih dari sepertiga penuh. Tambahkan sedikit adonan. Jika naik ke permukaan dikelilingi gelembung dan mulai kecoklatan, maka minyak sudah cukup panas untuk menggoreng.\r\n\r\nLANGKAH 4\r\nTurunkan satu sendok makan campuran bhaji ke dalam panci, sedikit demi sedikit, dan masak selama beberapa menit, balik sekali, sampai warnanya kecokelatan dan garing secara merata, jadi sekitar 3-4 menit. Tiriskan di atas kertas dapur, taburi dengan sedikit garam dan tetap hangat saat Anda memasak sisanya. Sajikan dengan raita.', '2 bawang bombay, iris halus\r\n100 gram tepung terigu\r\nsdt baking powder bebas gluten\r\nsdt cabai bubuk\r\nsdt kunyit\r\n1 cabai hijau, buang bijinya dan cincang sangat halus\r\nminyak sayur untuk menggoreng\r\nUntuk raita\r\nmentimun\r\n150g tub yogurt ala Yunani\r\n2 sdm cincang mint', 86, 2, 1, 3, 0.3, 5, 1, 7, 'appetizer'),
(14, 1, 'Fruit punch', 'LANGKAH 1\r\nMasukkan buah, mint, dan es ke dalam wadah besar. Tuang jus, aduk dan tambahkan limun.', '8-10 stroberi, dibelah dua atau diiris\r\njeruk, iris\r\nlemon, iris\r\nsegenggam daun mint\r\nsegenggam besar es\r\n500ml jus nanas\r\n300ml jus jeruk\r\n300 ml limun', 39, 9, 1, 1, 0.01, 0.1, 0, 9, 'beverage'),
(15, 1, 'Breakfast smoothie', 'Iris pisang ke dalam blender atau pengolah makanan Anda dan tambahkan buah beri pilihan Anda. Aduk hingga rata. Dengan pisau berputar, tuangkan jus atau air untuk membuat konsistensi yang Anda suka. Taruh beberapa buah ekstra di atasnya, gerimis dengan madu dan sajikan.', '1 pisang matang kecil\r\nsekitar 140g blackberry, blueberry, raspberry atau stroberi (atau gunakan campuran), ditambah ekstra untuk disajikan\r\njus apel atau air mineral, opsional\r\nmadu cair, untuk disajikan', 124, 24, 5, 2, 0.01, 1, 0.1, 25, 'beverage'),
(16, 1, 'Homemade hot chocolate', 'LANGKAH 1\r\nPanaskan susu, kakao, gula dan cokelat dalam panci kecil di atas api sedang sampai mengepul dan cokelatnya meleleh. Kocok untuk melarutkan kakao.\r\n\r\nLANGKAH 2\r\nTuang ke dalam mug, lalu tambahkan krim mengapung di atasnya. Parut sedikit lebih banyak cokelat untuk disajikan.', '250ml susu pilihan Anda\r\n1 sdm kakao\r\n1-2 sdm gula merah muda lembut\r\n25g cokelat hitam atau cokelat polos, dicincang halus, ditambah parutan untuk disajikan\r\n1 sdm krim kocok atau krim squirty', 438, 46, 2, 12, 0.3, 22, 14, 47, 'beverage');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reviewId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `rating` double NOT NULL,
  `description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewId`, `userId`, `rating`, `description`) VALUES
(1, 3, 4.8, 'Platform yang sangat berguna'),
(2, 1, 5, 'Resepnya enak-enak dan sangat membantu saya menjalani diet'),
(3, 2, 5, 'Menunya enak - enak dan bervariasi sehingga dapat memenuhi kebutuhan saya'),
(4, 1, 4.5, 'Sudah sangat bagus websitenya, mungkin ditunggu delivery untuk makan yang sudah readynya');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `email`, `weight`, `height`, `gender`, `age`, `password`) VALUES
(1, 'Alea Najla', 'aleanajla1234@gmail.com', 58, 1.6, 'Female', 19, 'alea'),
(2, 'Anida Dewi Prahesti', 'nitnintit@gmail.com', 46, 1.57, 'Female', 20, 'anida'),
(3, 'Vincent Bharata', 'ulala.cent@gmail.com', 70, 1.68, 'Male', 20, 'vincent'),
(4, 'RaihanS', 'raihans@gmail.com', 63, 1.67, 'Male', 20, 'raihan'),
(5, 'BrandonS', 'brandon123@gmail.com', 65, 1.7, 'Male', 19, 'brandon'),
(6, 'Andrew123', 'andrewilly@gmail.com', 70, 1.72, 'Male', 20, 'andrew');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`articleId`),
  ADD KEY `fk_adminID` (`adminId`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipeId`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewId`),
  ADD KEY `fk_userIdReview` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `articleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `reviewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_adminID` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_userIdReview` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
