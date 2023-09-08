-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2023 at 06:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spmi`
--

-- --------------------------------------------------------

--
-- Table structure for table `hasils`
--

CREATE TABLE `hasils` (
  `id` int(11) NOT NULL,
  `referensi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pertanyaan` varchar(255) DEFAULT NULL,
  `bukti` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `pengirim` varchar(255) NOT NULL,
  `tipe_audit` varchar(255) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `standar_yg_digunakan` varchar(255) NOT NULL,
  `ruang_lingkup` varchar(255) NOT NULL,
  `tanggal_audit` varchar(255) NOT NULL,
  `auditee` varchar(255) NOT NULL,
  `ketua_audit` varchar(255) NOT NULL,
  `audit` varchar(255) NOT NULL,
  `evaluasi` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `file_bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hasils`
--

INSERT INTO `hasils` (`id`, `referensi`, `created_at`, `updated_at`, `pertanyaan`, `bukti`, `keterangan`, `pengirim`, `tipe_audit`, `nama_prodi`, `standar_yg_digunakan`, `ruang_lingkup`, `tanggal_audit`, `auditee`, `ketua_audit`, `audit`, `evaluasi`, `jabatan`, `file_bukti`) VALUES
(1, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:51:38', 'Apakah prodi punya buku kurikulum?', 'ya', 'qwertyu', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', 'harus meningkatkan buku kurikulum', 'kaprodi', 'upload_file_bukti/OnvjZaPLM5SvYsSGKoEElEhJXc2s5VK06fKlcul3.png'),
(2, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah Capaian Pembelajaran prodi telah terumuskan dengan baik sesuai dengan capaian Universitas?', 'kurang', 'zxcvbn', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'upload_file_bukti/hti0Nyk2xRnfW3bx30mSfp5VUCEddnjvmthu6DFx.jpg'),
(3, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:51:56', 'Apakah setiap mata kuliah telah mendukung CP prodi', 'ya', 'aaaaaaaaa', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', 'harus menyertakan bukti', 'kaprodi', 'kosong'),
(4, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah prodi punya RPS dengan lengkap', 'ya', 'ffff', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(5, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah RPS telah sesuai dengan Capaian Prodi', 'ya', 'dssdd', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(6, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah format RPS sudah sesuai dengan acuan Universitas', 'ya', 'ddd', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(7, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah tersedia dokumen dosen pengampuh mata kuliah', 'ya', 'gggggg', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(8, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah ketersediaan dokumen bukti kesesuaian antara RPS dengan pelaksanaan?', 'ya', 'n', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(9, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah ada dokumen kesusaian RPS dengan Pembelajaran yang dilaksanakan oleh dosen?', 'ya', 'ff', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(10, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah dokumen bukti kontrak belajar setiap MK tidak diwajibkan?', 'ya', 'fff', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(11, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah penilaian Mahasiswa sesuai dengan RPS', 'ya', 'fff', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(12, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah ada kegiatan ilmiah yang diselenggarakan prodi?', 'ya', 'eee', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(13, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah pendistribusian mata kuliah terhadap masing-masing dosen sesuai dengan kompetensi dosen?', 'ya', 'rrrerer', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(14, 'Akademik', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah pendistribusian pembimbingan skripsi sesuai dengan kompetensi dosen?', 'ya', 'rrr', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(15, 'Penelitian dan Publikasi Karya Ilmiah', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Bagaimana frekuensi penelitian dan publikasi dosen?', 'ya', 'ttt', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(16, 'Penelitian dan Publikasi Karya Ilmiah', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Adakah mahasiswa yang terlibat dalam penelitian dengan dosen?', 'ya', 'gggg', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(17, 'Penelitian dan Publikasi Karya Ilmiah', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah terdapat HaKI dan Paten bagi dosen prodi?', 'ya', 'ggg', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(18, 'Pengabdian kepada Masyarakat', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Bagaimana frekuensi kegiatan pengabdian dan publikasi karya dosen?', 'ya', 'fsdfds', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(19, 'Pengabdian kepada Masyarakat', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Adakah kegiatan pengabdian masyarakat yang melibatkan mahasiswa', 'ya', 'sdfdsfdsfdsfs', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(20, 'SDM', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah terdapat laboran untuk mata kuliah praktek?', 'ya', 'sdfsdfdsfds', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(21, 'SDM', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah semua dosen prodi telah melakukan jabatan fungsional?', 'ya', 'ggg', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(22, 'SDM', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah dosen prodi yang memiliki Jafung AA atau lektor selama minimal 2 tahun telah mengajukan kenaikan jafung dan golongan?', 'ya', 'qqq', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(23, 'SDM', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Berapakah dosen prodi yang telah mendapat sertifikat pendidik?', 'ya', 'sdfdsfdsfsdfds', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(24, 'SDM', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Adakah dosen yang memiliki sertifikat profesi?', 'ya', 'dsfdsfdsf', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(25, 'SDM', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Ada berapa dosen yang sedang lanjut study (s3)', 'ya', 'xxxx', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(26, 'SDM', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah dosen yang sedang lanjut study linier dengan bidang ilmu masing-masing?', 'ya', 'rrr', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(27, 'Mahasiswa', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah kegiatan himpunan mahasiswa berjalan?', 'ya', 'tttt', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(28, 'Mahasiswa', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Berapa rata-rata waktu penyelesaian skripsi mahasiswa?', 'ya', 'dsfdsfdsf', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(29, 'Mahasiswa', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah terdapat prestasi mahasiswa lokal, nasional, dan internasional?', 'ya', 'dsfdsf', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(30, 'Sarana dan Prasarana', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah terdapat laboratorium untuk masing-masing mata kuliah praktek', 'ya', 'sdfsdfdsfds', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong'),
(31, 'Sarana dan Prasarana', '2023-09-05 23:49:31', '2023-09-05 23:49:31', 'Apakah pemeliharaan alat lab terjaga dengan baik?', 'ya', 'dsfsdfsdfsdfds', 'bagas', 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '-', 'kaprodi', 'kosong');

-- --------------------------------------------------------

--
-- Table structure for table `informasis`
--

CREATE TABLE `informasis` (
  `id` int(11) NOT NULL,
  `tipe_audit` varchar(255) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `standar_yg_digunakan` varchar(255) NOT NULL,
  `ruang_lingkup` varchar(255) NOT NULL,
  `tanggal_audit` varchar(255) NOT NULL,
  `auditee` varchar(255) NOT NULL,
  `ketua_audit` varchar(255) NOT NULL,
  `audit` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `informasis`
--

INSERT INTO `informasis` (`id`, `tipe_audit`, `nama_prodi`, `standar_yg_digunakan`, `ruang_lingkup`, `tanggal_audit`, `auditee`, `ketua_audit`, `audit`, `created_at`, `updated_at`) VALUES
(1, 'Lapangan', 'Pendidikan Guru Sekolah Dasar', 'Standar SPMI UNIFA 2019', 'Akademik', '2021-11-23', 'Yanty, S.Pd., M.T.', 'Dr. Ir. Muh. Chaerul, S.T., S.KM., M.Sc., IPM', 'Mutu Internal', '', '2023-09-05 05:38:35'),
(2, 'jkhk', 'Teknik Informatika', 'jkkj', 'jkj', '2023-08-23', 'bagas', 'sfsdfdsf', 'ddsf', '2023-08-28 10:43:06', '2023-09-05 05:14:34'),
(4, 'xdsf', 'Teknik Elektro', 'sdfdsfds', 'dfdsf', '2023-09-25', 'ansel', 'adasd', 'dss', '2023-09-05 05:54:45', '2023-09-05 05:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaans`
--

CREATE TABLE `pertanyaans` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `referensi` varchar(255) NOT NULL,
  `bukti` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `evaluasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pertanyaans`
--

INSERT INTO `pertanyaans` (`id`, `pertanyaan`, `referensi`, `bukti`, `keterangan`, `updated_at`, `created_at`, `evaluasi`) VALUES
(1, 'Apakah prodi punya buku kurikulum?', 'Akademik', NULL, NULL, '2023-08-26 09:14:45', '2023-08-23 22:17:02', NULL),
(3, 'Apakah Capaian Pembelajaran prodi telah terumuskan dengan baik sesuai dengan capaian Universitas?', 'Akademik', NULL, NULL, '2023-08-23 22:21:37', '2023-08-23 22:21:37', NULL),
(4, 'Apakah setiap mata kuliah telah mendukung CP prodi', 'Akademik', NULL, NULL, '2023-08-23 22:22:06', '2023-08-23 22:22:06', NULL),
(5, 'Apakah prodi punya RPS dengan lengkap', 'Akademik', NULL, NULL, '2023-08-23 22:23:11', '2023-08-23 22:23:11', NULL),
(6, 'Apakah RPS telah sesuai dengan Capaian Prodi', 'Akademik', NULL, NULL, '2023-08-23 22:23:29', '2023-08-23 22:23:29', NULL),
(7, 'Apakah format RPS sudah sesuai dengan acuan Universitas', 'Akademik', NULL, NULL, '2023-08-23 22:23:52', '2023-08-23 22:23:52', NULL),
(8, 'Apakah tersedia dokumen dosen pengampuh mata kuliah', 'Akademik', NULL, NULL, '2023-08-23 22:24:13', '2023-08-23 22:24:13', NULL),
(9, 'Apakah ketersediaan dokumen bukti kesesuaian antara RPS dengan pelaksanaan?', 'Akademik', NULL, NULL, '2023-08-23 22:26:02', '2023-08-23 22:26:02', NULL),
(10, 'Apakah ada dokumen kesusaian RPS dengan Pembelajaran yang dilaksanakan oleh dosen?', 'Akademik', NULL, NULL, '2023-08-23 22:26:36', '2023-08-23 22:26:36', NULL),
(11, 'Apakah dokumen bukti kontrak belajar setiap MK tidak diwajibkan?', 'Akademik', NULL, NULL, '2023-08-23 22:27:19', '2023-08-23 22:27:19', NULL),
(12, 'Apakah penilaian Mahasiswa sesuai dengan RPS', 'Akademik', NULL, NULL, '2023-08-23 22:27:38', '2023-08-23 22:27:38', NULL),
(13, 'Apakah ada kegiatan ilmiah yang diselenggarakan prodi?', 'Akademik', NULL, NULL, '2023-08-23 22:28:01', '2023-08-23 22:28:01', NULL),
(14, 'Apakah pendistribusian mata kuliah terhadap masing-masing dosen sesuai dengan kompetensi dosen?', 'Akademik', NULL, NULL, '2023-08-23 22:28:33', '2023-08-23 22:28:33', NULL),
(15, 'Apakah pendistribusian pembimbingan skripsi sesuai dengan kompetensi dosen?', 'Akademik', NULL, NULL, '2023-08-23 22:29:14', '2023-08-23 22:29:14', NULL),
(16, 'Bagaimana frekuensi penelitian dan publikasi dosen?', 'Penelitian dan Publikasi Karya Ilmiah', NULL, NULL, '2023-08-23 22:29:47', '2023-08-23 22:29:47', NULL),
(17, 'Adakah mahasiswa yang terlibat dalam penelitian dengan dosen?', 'Penelitian dan Publikasi Karya Ilmiah', NULL, NULL, '2023-08-23 22:30:07', '2023-08-23 22:30:07', NULL),
(18, 'Apakah terdapat HaKI dan Paten bagi dosen prodi?', 'Penelitian dan Publikasi Karya Ilmiah', NULL, NULL, '2023-08-23 22:30:28', '2023-08-23 22:30:28', NULL),
(19, 'Bagaimana frekuensi kegiatan pengabdian dan publikasi karya dosen?', 'Pengabdian kepada Masyarakat', NULL, NULL, '2023-08-23 22:31:03', '2023-08-23 22:31:03', NULL),
(20, 'Adakah kegiatan pengabdian masyarakat yang melibatkan mahasiswa', 'Pengabdian kepada Masyarakat', NULL, NULL, '2023-08-23 22:31:31', '2023-08-23 22:31:31', NULL),
(21, 'Apakah terdapat laboran untuk mata kuliah praktek?', 'SDM', NULL, NULL, '2023-08-23 22:31:54', '2023-08-23 22:31:54', NULL),
(22, 'Apakah semua dosen prodi telah melakukan jabatan fungsional?', 'SDM', NULL, NULL, '2023-08-23 22:32:19', '2023-08-23 22:32:19', NULL),
(23, 'Apakah dosen prodi yang memiliki Jafung AA atau lektor selama minimal 2 tahun telah mengajukan kenaikan jafung dan golongan?', 'SDM', NULL, NULL, '2023-08-23 22:32:59', '2023-08-23 22:32:59', NULL),
(24, 'Berapakah dosen prodi yang telah mendapat sertifikat pendidik?', 'SDM', NULL, NULL, '2023-08-23 22:33:21', '2023-08-23 22:33:21', NULL),
(25, 'Adakah dosen yang memiliki sertifikat profesi?', 'SDM', NULL, NULL, '2023-08-23 22:33:39', '2023-08-23 22:33:39', NULL),
(26, 'Ada berapa dosen yang sedang lanjut study (s3)', 'SDM', NULL, NULL, '2023-08-23 22:34:04', '2023-08-23 22:34:04', NULL),
(27, 'Apakah dosen yang sedang lanjut study linier dengan bidang ilmu masing-masing?', 'SDM', NULL, NULL, '2023-08-23 22:34:34', '2023-08-23 22:34:34', NULL),
(28, 'Apakah kegiatan himpunan mahasiswa berjalan?', 'Mahasiswa', NULL, NULL, '2023-08-23 22:35:08', '2023-08-23 22:35:08', NULL),
(29, 'Berapa rata-rata waktu penyelesaian skripsi mahasiswa?', 'Mahasiswa', NULL, NULL, '2023-08-23 22:35:30', '2023-08-23 22:35:30', NULL),
(30, 'Apakah terdapat prestasi mahasiswa lokal, nasional, dan internasional?', 'Mahasiswa', NULL, NULL, '2023-08-23 22:36:08', '2023-08-23 22:36:08', NULL),
(31, 'Apakah terdapat laboratorium untuk masing-masing mata kuliah praktek', 'Sarana dan Prasarana', NULL, NULL, '2023-08-23 22:36:46', '2023-08-23 22:36:46', NULL),
(32, 'Apakah pemeliharaan alat lab terjaga dengan baik?', 'Sarana dan Prasarana', NULL, NULL, '2023-08-23 22:37:13', '2023-08-23 22:37:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prodis`
--

CREATE TABLE `prodis` (
  `id` int(11) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `nama_kaprodi` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodis`
--

INSERT INTO `prodis` (`id`, `nama_prodi`, `nama_kaprodi`, `updated_at`, `created_at`) VALUES
(2, 'Teknik Informatika', 'Srivan Palleng, S.Kom., M.Kom.', '2023-09-04 20:52:54', '2023-09-04 20:52:54'),
(3, 'Teknik Mesin', 'Coba1', '2023-09-04 20:53:09', '2023-09-04 20:53:09'),
(4, 'Teknik Elektro', 'Coba2', '2023-09-04 20:53:23', '2023-09-04 20:53:23'),
(5, 'Teknik Perkapalan', 'Coba3', '2023-09-04 20:53:39', '2023-09-04 20:53:39'),
(6, 'Teknik Sipil', 'Coba4', '2023-09-04 20:53:59', '2023-09-04 20:53:59'),
(7, 'Teknik Industri', 'Coba5', '2023-09-04 20:54:16', '2023-09-04 20:54:16'),
(8, 'Manajemen', 'Coba6', '2023-09-04 20:54:29', '2023-09-04 20:54:29'),
(9, 'Pendidikan Guru Sekolah Dasar', 'Coba7', '2023-09-04 20:54:42', '2023-09-04 20:54:42'),
(10, 'Pendidikan Matematika', 'Coba8', '2023-09-04 20:55:41', '2023-09-04 20:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prodi` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `jabatan`, `created_at`, `updated_at`, `prodi`, `nama_lengkap`) VALUES
(1, 'admin', '12345678', 'admin', NULL, NULL, '', ''),
(5, 'ansel', '12345678', 'dosen', '2023-08-24 09:09:41', '2023-09-04 22:10:08', 'Teknik Informatika', 'Anselmus Karno'),
(8, 'bagas', '12345678', 'kaprodi', '2023-08-26 09:19:11', '2023-09-04 22:10:17', 'Teknik Informatika', 'Satya Bagas'),
(9, 'coba', '12345678', 'kaprodi', '2023-09-04 22:24:21', '2023-09-05 22:20:58', 'Teknik Mesin', 'dddddddd'),
(10, 'anselmus', 'sdfdsf', 'dosen', '2023-09-04 23:15:32', '2023-09-05 22:24:40', 'Manajemen', 'dsf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasils`
--
ALTER TABLE `hasils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasis`
--
ALTER TABLE `informasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodis`
--
ALTER TABLE `prodis`
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
-- AUTO_INCREMENT for table `hasils`
--
ALTER TABLE `hasils`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `informasis`
--
ALTER TABLE `informasis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `prodis`
--
ALTER TABLE `prodis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
