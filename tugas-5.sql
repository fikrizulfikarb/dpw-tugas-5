-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Nov 2021 pada 04.31
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectdpw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_jam` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `berat`, `deskripsi`, `stock`, `created_at`, `updated_at`, `id_user`) VALUES
(2, 'Jam Tangan Pria Timex Originals The Waterbury TW2R25600', 1036000, 500, 'Kategori: Jam Tangan Analog Pria\r\nEtalase: Timex\r\nDETAIL :\r\n50m Water Resistance\r\nINDIGLO night-light\r\nQuartz Analog\r\nStrap : leather\r\nCase Color: Stainless Steel\r\nCase Height: 10mm\r\nCase Lug Width: 20mm\r\nCase Width: 40mm\r\nCase Material: stainless steel\r\nCrystal/Glass: Mineral Glass\r\nDial Color: Cream\r\nFinish: Brushed\r\n\r\nKENAPA BELI DARI THE WATCH CO.?\r\nThe Watch Co. adalah distributor resmi untuk brand jam tangan Daniel Wellington, Timex, Olivia Burton dan Komono di Indonesia. Semua produk-produk kami dijamin 100% original.\r\n\r\nKETENTUAN GARANSI :\r\nGaransi baterai berlaku seumur hidup (lifetime warranty) sejak tanggal pembelian. Garansi kerusakan hanya berlaku khusus untuk mesin, dan pengerjaannya dapat memakan waktu 14 hari kerja. Untuk mengajukan klaim, silahkan kunjungi store The Watch Co. terdekat dengan membawa kartu garansi resmi dari The Watch Co. dan nota penjualan yang asli.\r\n\r\nJAM OPERASIONAL :\r\nSenin - Jum\'at : 09.00 - 17.00 WIB\r\n(Libur Operasional hari Sabtu / Minggu / Libur Nasional)\r\n\r\nKETENTUAN PROSES PENGIRIMAN :\r\nPengiriman by Go-Send / Grab Parcel :\r\nMaksimal order sebelum pukul 13.00 WIB\r\n\r\nPengiriman by JNE :\r\nMaksimal order sebelum pukul 12.00 WIB\r\n\r\nOrder yang diterima diluar jam tersebut, maka akan kami proses pada hari berikutnya.', 10, '2021-10-26 11:49:02', '2021-10-28 04:26:35', NULL),
(3, 'Fossil Smartwatch Gen 5 FTW4024 Original', 3099000, 600, 'Kategori: Jam Tangan Digital Pria\r\nEtalase: FOSSIL\r\nGaransi : Original 2 years software waranty\r\nCase Size : 44 mm\r\nBand Width : 22 mm\r\nMovement : Battery\r\nWatch Type : Smartwatch\r\nDial Type : Smartwatch\r\nDial Color : Hitam\r\nStrap Color : Abu-abu\r\nStrap Material : Stainless Steel\r\nBrand : Fossil\r\nGender : Men\'s', 20, '2021-10-26 21:43:23', '2021-10-30 23:50:28', NULL),
(4, 'Rolex Cosmograph Daytona Original - Jam Tangan Import Pria', 11000000, 250, 'Kondisi: Baru\r\nBerat: 250 Gram\r\nKategori: Jam Tangan Analog Pria\r\nEtalase: Jam Tangan\r\nSPESIFIKASI :\r\nGRADE : SUPER AAA+\r\nMESIN : OTOMATIS, MIYOTA JPN\r\nFUNGSI : JAM, MENIT, DETIK, TANGGAL\r\nBAHAN : BAJA\r\nKACA : KRISTAL\r\nTALI : RANTAI BAJA\r\nPENGAIT : KLIP ON\r\nDIAMETER : 41MM\r\nKETAHANAN AIR : 3ATM\r\nKELENGKAPAN : JAM + BOX KAYU\r\n\r\nJAMINAN ORIGINAL 100%', 5, '2021-10-27 02:26:03', '2021-10-28 04:27:12', NULL),
(5, 'Jam tangan pria CASIO EDIFICE EQS-920DB-2AVUDF SOLAR POWER CRONO ORI', 2600000, 250, 'Kondisi: Baru\r\nBerat: 250 Gram\r\nKategori: Jam Tangan Digital Pria\r\nEtalase: CASIO EDIFICE original\r\nKelengkapan manual book box dan kartu garansi resmi casio Indonesia 2 tahun\r\n\r\n\r\nSpesifikasi\r\n\r\nBahan case / bezel / strap: stainless steel\r\nBezel pemrosesan IP ion biru\r\nGelas mineral\r\nTenaga surya\r\nTahan air 100 meter\r\nTabel kode Unit pengukuran: 1 detik Batas pengukuran: 29\'59\r\nMode pengukuran: perbedaan waktu, perbedaan waktu pertama dan kedua\r\nIndikator daya\r\nTampilan tanggal\r\nPointer mode waktu: tiga jahitan (jam, menit, detik)\r\nTiga sub-cakram: kode menit tabel jarum, kode tabel jarum detik, jarum 24 jam\r\nAkurasi: ± 20 detik per bulan\r\nPerkiraan Masa Pakai Baterai Dalam kasus sel surya yang tidak menghasilkan listrik, ia dapat beroperasi terus menerus setelah terisi penuh:\r\nKetika setiap fungsi beroperasi secara normal: sekitar 5 bulan\r\n\r\nUkuran / berat total\r\n\r\nUkuran: 56.0 x 47.6 x 12.5mm\r\nBerat: 170g', 5, '2021-10-27 02:45:57', '2021-10-28 05:33:54', NULL),
(14, 'BEST SELLER....Jam Tangan Pria Keren New TETONIS TS6036 ORIGINAL Brand - Black Rosegold', 575000, 350, 'Detail Produk :\r\n▶ Merk : Tetonis Ts6036 Model AC 6141\r\n▶ Real Pict, 100% Barang yang dikirim sama dengan foto\r\n▶ Gender : Pria\r\n▶ Display : Analog\r\n▶ Mesin : Baterai\r\n▶ Fitur : Tanggal dan Chronograph\r\n▶ Tali : Rantai Stainless Steel\r\n▶ Diameter : 4,5\r\n▶ Qualitas : Original\r\n▶ Include : Box, kartu garansi dan plus pulpen', 8, '2021-10-28 07:34:59', '2021-10-28 07:52:07', NULL),
(16, 'Timex Standard Chronograph 41mm Leather Strap Watch - TW2U58100', 1799100, 100, 'HAI!\r\nPRODUK INI BERGARANSI BATERAI SEUMUR HIDUP YA :)\r\n\r\n>>>>>DETAIL PRODUK <<<<<\r\n\"Attachment Buckle/Clasp Type : Buckle\r\nAttachment Material : Leather\r\nAttachment Type : Two- Piece Quick Release\r\nCase Color : Silver-Tone\r\nCase Finish : Polished\r\nCase Lug Width : 20 mm\r\nCase Material : Low Lead Brass\r\nCase Width : 41 mm\r\nCrystal/Lens : Mineral Glass\r\nDial Color : Cream\r\nDial Markings : Arabic (Full)\r\nWater Resist : 50 meters\r\nMechanism Type : Quartz Analog\r\nINDIGLO® Night-Light\"\r\n\r\nKENAPA BELI DARI THE WATCH CO ?\r\nThe Watch Co. adalah distributor resmi untuk brand jam tangan; Daniel Wellington, Timex, Olivia Burton, Komono, D1 Milano, Adidas dan beberapa produk lainnya di Indonesia. Semua produk-produk kami dijamin 100% ORIGINAL.\r\n\r\n>>>>>KETENTUAN GARANSI <<<<<\r\n. Garansi baterai seumur hidup (meskipun kartu garansi telah habis masa berlakunya)\r\n. Free service mesin jam + free biaya jasa selama 1 tahun.\r\n. Disc 40% untuk pergantian sparepart jam (diluar kerusakan mesin).\r\n\r\n>>>>>PROSES ORDER <<<<<\r\nMaksimal Order Pukul 13:00 WIB ya.\r\n((Order yang diterima diluar jam tersebut, maka akan kami proses pada hari berikutnya)).\r\n\r\n>>>>>PROSES PENGIRIMAN <<<<<\r\nInstant kurir kami kirimkan serentak pukul 14:00 WIB.\r\nResi JNE akan di update pukul 17:00 WIB.\r\n\r\nTerima Kasih atas kepercayaan Anda dan Selamat Berbelanja :)', 10, '2021-10-28 08:36:55', '2021-10-28 08:41:23', NULL),
(18, 'Jam Tangan Pria Rolex Daytona Matic Premium AAA Include Box Ori', 1250000, 1000, 'Selamat Datang Di Arloji Indonesia\r\nDan Selamat Berbelanja di Toko Kami.\r\nSetiap Pembelian Di Toko Kami\r\nmemberikan Garansi Mesin Selama\r\n1 Tahun.\r\n______________\r\nDeskripsi Produk\r\nMerek : Rolex Daytona\r\nQuality : Grade Super Premium\r\nMesin : Automatic\r\nCase : Stainless Steel Padat\r\nDisplay : Analog\r\nTanggal : Aktif\r\nRing : Ceramic\r\nDiameter : 43mm\r\nKaca Shappire & Anti Gores\r\nTali : Rubber\r\nGender : Pria\r\nKelengkapan : Jam tangan + Gelang + Box Ori + Manual Book + Paper Bag\r\n\r\n_________________\r\n100% REAL PIC.\r\nTIDAK SESUAI FOTO JAMIAN UANG KEMBALI .\r\n\r\nTerima Sistem Dropship Reseller\r\nGrosiran & Eceran.', 17, '2021-10-29 12:40:16', '2021-10-29 12:40:16', NULL),
(23, 'Amazfit GTR 2Especial Health & Ultra GTR 2E Garansi Resmi - Slate Grey', 1599000, 400, 'Design : 2.5D curved surface borderless design\r\nSize : 46.5x46.5x10.8mm, 1.39 inches\r\nWeight : 32g (without strap)\r\nBody : Aluminum alloy\r\nButtons : 2\r\nWaterproof grade : 5 ATM (50 meters)\r\nMaterial : AMOLED\r\nTouchscreen : Tempered glass + anti-fingerprint vacuum coating\r\nResolution & PPI : 454 x 454, 326\r\nBattery capacity : 471mAh (typical value)\r\nCharging method : Magnetic charging stand\r\nCharging time : About 2.5 hours\r\nSensor :\r\nHuami self-developed BioTracker™ 2 PPG (support blood oxygen) Biological data sensor\r\nAcceleration sensor, Gyroscope sensor, 3-axis geomagnetic sensor, Ambient light sensor, Air pressure sensor, Temperature Sensor\r\nConnection : Bluetooth 5.0 / BLE\r\nStrap :\r\nSilicone (22mm)\r\nMicrophone : Yes\r\nLinear motor : Yes\r\nTemperature Sensor : Yes\r\nSupported Devices : Android 5.0 or iOS 10.0 and above\r\nApplication : Zepp App\r\n\r\nApa saja isi box :\r\n1x Amazfit GTR 2E\r\n1x Charging\r\n1x Buku panduan manual\r\n1x Kartu garansi\r\n\r\nGaransi by M-Care manage by Astech\r\n- Garansi berlaku 1 tahun sejak tanggal pembelian\r\n- Silakan kunjungi website resmi di www.m-care.co.id\r\n\r\nNOTE :\r\n- Jika tidak mendapatkan KARTU GARANSI harap memberikan BUKTI VIDEO UNBOXING PRODUK\r\n- Pengajuan komplain tanpa BUKTI VIDEO UNBOXING dianggap tidak VALID', 25, '2021-10-30 23:34:17', '2021-10-30 23:34:17', NULL),
(24, 'Jam Tangan Casio Gshock GBD-100-1DR Original Murah', 1697000, 600, 'Brand: Casio\r\nModel No.: GBD-100-1ADR\r\nSeries: G-Shock\r\nGaransi: Garansi Resmi 2 Tahun PT GAP\r\nGender: Men\'s\r\nCase diameter: 49 mm\r\nCase thickness: 17 mm\r\nGaransi Resmi 2 Tahun\r\n\r\nBahan casing / bezel: Resin / Aluminium\r\nTali Jam Tangan Resin\r\nTahan Goncangan\r\nKaca Mineral\r\nKetahanan air 200 meter\r\nCahaya latar LED (Super iluminator)\r\nTombol cahaya otomatis, durasi iluminasi yang dapat dipilih (1,5 detik atau 3 detik), berpijar\r\nMobile link (Koneksi otomatis, terhubung secara nirkabel menggunakan Bluetooth®)\r\nFungsi Latihan\r\nTampilan jarak, kecepatan, tempo, dan nilai lain yang dihitung berdasarkan akselerometer, waktu putaran otomatis/manual, Jeda Otomatis, pengaturan peringatan target (waktu, kalori yang terbakar) aktif/nonaktif, kustomisasi tampilan latihan (waktu berlalu, jarak, tempo, waktu putaran, jarak putaran, tempo putaran, tempo rata-rata, kecepatan, kecepatan rata-rata, kalori yang terbakar)\r\nData Latihan (Hingga 100 kali lari, hingga 140 kali putaran per lari)\r\nWaktu berlalu, jarak, tempo, kalori yang terbakar\r\nData Log Kehidupan\r\nTampilan data harian (jumlah langkah), Tampilan data bulanan (jarak lari)\r\nPembuatan profil pengguna\r\nMode pesawat\r\nWaktu dunia\r\n38 zona waktu* (38 kota + waktu universal terkoordinasi), waktu musim panas aktif/nonaktif, perpindahan waktu musim panas otomatis (DST)\r\n* Dapat diperbarui saat terhubung ke ponsel cerdas.\r\nStopwatch 1 detik\r\nKapasitas pengukuran: 99:59\'59\'\'\r\nMode pengukuran: Waktu berlalu, waktu split\r\nPengatur waktu mundur\r\nPengatur waktu untuk pengukuran interval (hingga lima pengaturan waktu)\r\nUnit pengukuran: 1 detik\r\nJarak input: 00\'00\" hingga 60\'00\" (kenaikan 1 detik)\r\nLainnya: Ulang otomatis (jumlah pengulangan dapat diatur dari 1 sampai 20)\r\nVibrator\r\n4 alarm harian dengan snooze\r\nPenghematan Daya (Layar nonaktif untuk menghemat daya 3 jam setiap hari.)\r\nKalender otomatis sepenuhnya (hingga tahun 2099)\r\nFormat 12/24 jam\r\nSuara tombol operasi aktif/nonaktif\r\nGetaran aktif/nonaktif', 18, '2021-10-30 23:41:55', '2021-10-30 23:41:55', NULL),
(25, 'Garmin Vivoactive 4 GPS Wi-Fi Shadow Gray/Silver SEA', 4699000, 1000, 'Brand Garmin\r\nUkuran Layar 1.3\" (33.0 mm) diameter\r\nTipe Layar sunlight-visible, transflective memory-in-pixel (MIP)\r\nResolusi 260 x 260 pixel\r\nKompatibel Android & iOS\r\nKonektivitas Bluetooth®, ANT+®, Wi-Fi®\r\nSensor GPS, Glonass, Galileo, Garmin Elevate™ Wrist Heart Rate Monitor, Barometric Altimeter, Compass, Gyroscope, Accelerometer, Thermometer, Pulse Ox\r\nMemori 7 kegiatan berjangka waktu, 14 hari data pelacakan aktivitas\r\nFitur Clock, Daily Smart, Safety and Tracking, Activity Tracking, Training, Planning and Analysis, Heart Rate, Heart Rate, Golfing, Cycling, Swimming\r\nDimensi 45.1 x 45.1 x 12.8 mm\r\nBerat 50.5 g\r\n\r\nS&K Klaim Retur/Refund\r\n1. Mohon untuk bisa melakukan video unboxing (pembukaan paket), foto penerimaan produk, foto resi dan label pembeli saat paket sudah berhasil diterima sehingga jika ada kerusakan, kekurangan produk/hadiah, atau ketidaksesuaian produk yang diterima bisa dilakukan validasi melalui kelengkapan tersebut.\r\n2. Jika tidak ada atau hanya memiliki salah satu dari kelengkapan yang disebutkan, maka segala bentuk komplain yang masuk tidak bisa ditindaklanjuti atau dianggap tidak sah, kecuali memang ada kesalahan dari sisi penjual\r\n3. Kerusakan packaging hanya pada bagian luar (bagian dalam utuh, produk tidak ada kerusakan/kekurangan, dll) disebabkan penanganan paket dari pihak jasa ekspedisi yang kurang baik, diharapkan agar pembeli bisa melakukan komplain langsung ke pihak jasa ekspedisi.\r\n\r\nDapatkan point eraclub setiap pembelian di Garmin Official Store dengan cara sbb :\r\n1. Login ke https://eraclub.id/account, lalu pilih Klaim Transaksi\r\n2. Masukkan no Invoice /No Order\r\nNote : Alamat email yang digunakan untuk transaksi di Garmin Official Store harus sama dengan email yang didaftarkan di eraclub.', 54, '2021-10-31 01:39:33', '2021-10-31 01:39:33', NULL),
(26, 'Nautica jam tangan pria Crandon Park Beach NAPCPS903 hitam', 999000, 1000, 'Crandon Park is a new introduction in Nautica\'s assortment. The dial is simple and elegant, enriched with Nautica style flags as indexes at quartz, creating a unique bond with the sea. The black silicone strap matches with the dial and the fixed top ring. The total black look of the watch provides an elegant image, suitable to be worn in both casual and formal occasions.\r\n\r\n▪ Sport gents watch\r\n▪ Silver case\r\n▪ Black silicone strap\r\n▪ Black dial\r\n▪ Water resist up to 100m\r\nDiameter case 44 mm.', 7, '2021-10-31 01:41:06', '2021-10-31 01:41:06', NULL),
(27, 'Garmin Instinct Esports Edition GPS Watch - Black Lava', 3549000, 800, 'Informasi lebih lanjut\r\nBrand Garmin\r\nWarna Black Lava\r\nUkuran Layar custom, two-window design; 0.9” x 0.9” (23 x 23 mm)\r\nTipe Layar monochrome, sunlight-visible, transflective memory-in-pixel (MIP)\r\nResolusi 128 x 128 pixels\r\nKompatibel iPhone & Android\r\nKonektivitas Bluetooth, ANT+\r\nSensor GPS, Glonass, Galileo, Garmin Elevate™ Wrist Heart Rate Monitor, Barometric Altimeter, Compass, Accelerometer, Thermometer\r\nMemori 16 MB\r\nFitur Clock, Daily Smart, Safety and Tracking, Tactical, Esports, Activity Tracking, Training, Planning and Analysis, Running, Cycling, Swimming\r\nDimensi 45 x 45 x 15.3 mm\r\nBerat 128 x 128 pixels\r\nLainnya Quickfit™ Watch Band Compatible: 22 mm, Esports Activity, Str3Amup! Pc Tool For Streaming Biometrics\r\n\r\nS&K Klaim Retur/Refund\r\n1. Mohon untuk bisa melakukan video unboxing (pembukaan paket), foto penerimaan produk, foto resi dan label pembeli saat paket sudah berhasil diterima sehingga jika ada kerusakan, kekurangan produk/hadiah, atau ketidaksesuaian produk yang diterima bisa dilakukan validasi melalui kelengkapan tersebut.\r\n2. Jika tidak ada atau hanya memiliki salah satu dari kelengkapan yang disebutkan, maka segala bentuk komplain yang masuk tidak bisa ditindaklanjuti atau dianggap tidak sah, kecuali memang ada kesalahan dari sisi penjual\r\n3. Kerusakan packaging hanya pada bagian luar (bagian dalam utuh, produk tidak ada kerusakan/kekurangan, dll) disebabkan penanganan paket dari pihak jasa ekspedisi yang kurang baik, diharapkan agar pembeli bisa melakukan komplain langsung ke pihak jasa ekspedisi.\r\n\r\nDapatkan point eraclub setiap pembelian di Garmin Official Store dengan cara sbb :\r\n1. Login ke https://eraclub.id/account, lalu pilih Klaim Transaksi\r\n2. Masukkan no Invoice /No Order\r\nNote : Alamat email yang digunakan untuk transaksi di Garmin Official Store harus sama dengan email yang didaftarkan di eraclub.', 45, '2021-10-31 01:43:51', '2021-10-31 01:43:51', NULL),
(28, 'Strap Apple Watch 42mm Nomad Horween Modern Build Black Leather Strap - Black Hardware', 639000, 600, '*MOHON PERHATIKAN VARIAN PRODUK SEBELUM MELAKUKAN PEMBELIAN*\r\n*Kita tidak bisa menjamin leather mulus 100% karena nomad menggunakan kulit asli,bukan sintetis.\r\njadi kadang anda akan terima leather yang ada goresan\r\n\r\nNomad Horween Leather Strap dengan modern build didesain untuk menunjukkan leather yang bergaya klasik bercampur gesper dengan modern style. Bahan kulit dibuat dari veggie-tanned leather milik Horween Leather Co, perusahaan tertua (sejak tahun 1905, Chicago) yang terkenal menggunakan kulit asli. Benang & teknik jahitan dalam Nomad Horween Leather Strap dapat ditemukan pada brand terkenal seperti Hermes. Desain kulit tersebut juga dirancang khusus agar sesuai dengan gesper stainless sehingga akan menghasilkan gaya modern klasik yang akan menampilkan karakter unik Anda. Nomad Horween Leather Strap akan memberikan kesan bold new look. Cocok bagi Anda yang ingin tampil berani, fashionable & elegan klasik.\r\n\r\nBold Design\r\nDidesain dengan mengandalkan material premium dari seniman terhandal kemudian digabungkan dengan teknik produksi pada era modern untuk menghasilkan gaya yang khas, bold design.\r\n\r\nPremium Material\r\nBerbahan kulit asli untuk bagian strap & stainless steel untuk gesper\r\n\r\nThread and stitching\r\nSetiap Strap dilapisi oleh kulit lembut di bagian belakang dan dijahit dengan benang yang tahan lama. Benang & jahitan khusus tersebut dapat mencegah perubahan atau goresan pada kulit walaupun telah dipakai dalam jangka waktu lama.\r\n\r\nSize\r\n75 mm length (buckle side) and 135mm length (adjustment side)\r\n\r\nDetails:\r\n- Genuine Leather Strap\r\n- Premium Material\r\n- Bold Design\r\n- Modern Classic Style\r\n\r\nWhat’s In The Box:\r\n1 Nomad Horween Leather Strap Modern Build\r\n\r\n*Garansi Original 2x Money Back Guarantee\r\n*Garansi Tukar Barang Baru Jika Ada Cacat Pabrik Selama 3 Hari', 3, '2021-11-02 08:21:09', '2021-11-02 08:21:09', 1),
(29, 'Jam Tangan Pria Fossil Modern Machine', 5000000, 400, 'Brand FOSSIL\r\n\r\nModel No. ME3082\r\n\r\nSeries Fossil Machine\r\n\r\nGender Pria\r\n\r\nGaransi produk 1 Tahun\r\n\r\nCase diameter 50 mm\r\n\r\nCase thickness 14 mm\r\n\r\nWater resistant 50 Meters/5 ATM/5 BAR\r\n\r\nCase material Stainless Steel\r\n\r\nCase back Screw case back\r\n\r\nGlass material Mineral crystal\r\n\r\nStrap material Leather/Kulit\r\n\r\nClasp Bucklei\r\n\r\nCalendar No Calendari\r\n\r\nLuminious / LumiBrite No\r\n\r\nMovement Automatic Battery\r\n\r\nDial Colour Silver\r\n\r\nWeight after packing approx. 500 gr\r\n\r\nWhat\'s Inside Box 1x Fossil ME3082 Modern Machine Automatic Black Leather Strap Watch 1x Warranty Card 1x Fossil Watch Box', 4, '2021-11-02 08:38:21', '2021-11-02 08:38:21', 1),
(31, 'Garmin Descent Mk2S Dive - Carbon Gray', 15999000, 1000, 'Brand Garmin\r\nWarna Carbon Gray\r\nUkuran Layar 1.2” (30.4 mm) diameter\r\nTipe Layar terlihat di bawah sinar matahari, transflective memory-in-pixel (MIP)\r\nResolusi 240 x 240 piksel\r\nKompatibel iPhone, Android\r\nKonektivitas Bluetooth Smart, ANT+, Wi-Fi\r\nSensor GPS, Glonass, Galileo, Monitor Denyut Jantung Pergelangan Garmin Elevate, Altimeter Barometrik, Kompas, Giroskop, Akselerometer, Termometer, Sensor Kedalaman, Pulse Ox\r\nMemori 32 GB\r\nFitur Fitur Jam, Fitur Smart Harian, Fitur Keselamatan dan Pelacakan, Fitur Tactical, Fitur Diving, Fitur Boating, Fitur Pelacakan Aktivitas, Fitur Pelatihan Perencanaan dan Analisis, Fitur Denyut Jantung (HR), Fitur Lari, Fitur Golf, Fitur Rekreasi Luar Ruangan, Fitur Bersepeda, Fitur Berenang\r\nDimensi 43 x 43 x 14.15 mm\r\nBerat 60 g\r\n\r\nS&K Klaim Retur/Refund\r\n1. Mohon untuk bisa melakukan video unboxing (pembukaan paket), foto penerimaan produk, foto resi dan label pembeli saat paket sudah berhasil diterima sehingga jika ada kerusakan, kekurangan produk/hadiah, atau ketidaksesuaian produk yang diterima bisa dilakukan validasi melalui kelengkapan tersebut.\r\n2. Jika tidak ada atau hanya memiliki salah satu dari kelengkapan yang disebutkan, maka segala bentuk komplain yang masuk tidak bisa ditindaklanjuti atau dianggap tidak sah, kecuali memang ada kesalahan dari sisi penjual\r\n3. Kerusakan packaging hanya pada bagian luar (bagian dalam utuh, produk tidak ada kerusakan/kekurangan, dll) disebabkan penanganan paket dari pihak jasa ekspedisi yang kurang baik, diharapkan agar pembeli bisa melakukan komplain langsung ke pihak jasa ekspedisi.\r\n\r\nDapatkan point eraclub setiap pembelian di Garmin Official Store dengan cara sbb :\r\n1. Login ke https://eraclub.id/account, lalu pilih Klaim Transaksi\r\n2. Masukkan no Invoice /No Order\r\nNote : Alamat email yang digunakan untuk transaksi di Garmin Official Store harus sama dengan email yang didaftarkan di eraclub.', 7, '2021-11-02 09:40:01', '2021-11-02 09:40:01', 1),
(32, 'Garmin Instinct Solar – Tactical Edition Garansi Resmi TAM 2 Tahun - Black', 6499000, 500, 'Wearinasia (WIA.id) adalah Authorized online retailer produk Garmin di Indonesia sehingga setiap pembelian produk Garmin melalui Wearinasia Anda akan mendapatkan warranty resmi selama 1 tahun dari PT. TAM Indonesia dan 1 tahun dari Garmin Internasional.\r\n\r\nDapatkan pelatihan dari staf kami di Wearinasia experience store untuk produk Garmin yang kamu beli di Wearinasia (WIA.ID)\r\n\r\nGarmin Instinct Solar adalah smartwatch GPS yang dibuat untuk mendobrak kebiasaan dan menaklukkan setiap elemen dalam waktu yang lebih lama.', 16, '2021-11-02 23:01:37', '2021-11-02 23:04:51', NULL),
(33, 'rolex', NULL, NULL, NULL, NULL, '2021-11-07 04:31:27', '2021-11-07 04:31:27', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `user_name`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'whageasptra', 'whageasaputra01@gmail.com', 'Whagea Saputra.', '$2y$10$OquTY25uK7N3FySOocXFc.jdbkifaKQ02ByDzwHp182anz1OT/fvO', NULL, '2021-10-27 11:35:56', '2021-11-02 10:12:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 2, '+6289691726533', '2021-11-01 10:38:33', '2021-11-01 17:49:10'),
(2, 8, '+63896546354463', '2021-11-02 09:32:05', '2021-11-02 09:32:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
