CREATE DATABASE  IF NOT EXISTS `kepegawaian` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kepegawaian`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 192.168.1.2    Database: kepegawaian
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `biodata.anak`
--

DROP TABLE IF EXISTS `biodata.anak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `biodata.anak` (
  `nik` int NOT NULL,
  `nama` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `tgllahir` date NOT NULL,
  `pekerjaan` varchar(45) NOT NULL,
  `namaayah` varchar(45) NOT NULL,
  `namaibu` varchar(45) NOT NULL,
  `keterangan` varchar(45) NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata.anak`
--

LOCK TABLES `biodata.anak` WRITE;
/*!40000 ALTER TABLE `biodata.anak` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata.anak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodata.cpnsp3k`
--

DROP TABLE IF EXISTS `biodata.cpnsp3k`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `biodata.cpnsp3k` (
  `nik` int NOT NULL,
  `nip` int DEFAULT NULL,
  `tmtcpnspppk` varchar(45) DEFAULT NULL,
  `nosk` varchar(45) DEFAULT NULL,
  `tglsk` date DEFAULT NULL,
  `pangkat` varchar(45) DEFAULT NULL,
  `golongan` varchar(45) DEFAULT NULL,
  `pejabatygmengangkat` varchar(45) DEFAULT NULL,
  `instansitmt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata.cpnsp3k`
--

LOCK TABLES `biodata.cpnsp3k` WRITE;
/*!40000 ALTER TABLE `biodata.cpnsp3k` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata.cpnsp3k` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodata.diri`
--

DROP TABLE IF EXISTS `biodata.diri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `biodata.diri` (
  `nik` int NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tempatlahir` varchar(45) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `jeniskelamin` varchar(45) DEFAULT NULL,
  `agama` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `nomortelpon` int DEFAULT NULL,
  `jarakkekantor` int DEFAULT NULL,
  `beratbadan` int DEFAULT NULL,
  `tinggibadan` int DEFAULT NULL,
  `goldarah` varchar(45) DEFAULT NULL,
  `penyakitygpernahdiderita` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata.diri`
--

LOCK TABLES `biodata.diri` WRITE;
/*!40000 ALTER TABLE `biodata.diri` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata.diri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodata.kedinasan`
--

DROP TABLE IF EXISTS `biodata.kedinasan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `biodata.kedinasan` (
  `nip` int DEFAULT NULL,
  `kartupegawai` varchar(45) DEFAULT NULL,
  `pangkat` varchar(45) DEFAULT NULL,
  `jabatan` varchar(45) DEFAULT NULL,
  `golongan` varchar(45) DEFAULT NULL,
  `tmtinstansisekarang` varchar(45) DEFAULT NULL,
  `nik` int NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata.kedinasan`
--

LOCK TABLES `biodata.kedinasan` WRITE;
/*!40000 ALTER TABLE `biodata.kedinasan` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata.kedinasan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodata.pasangan`
--

DROP TABLE IF EXISTS `biodata.pasangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `biodata.pasangan` (
  `nik` int NOT NULL,
  `namapasangan` varchar(45) NOT NULL,
  `tgllahir` varchar(45) DEFAULT NULL,
  `tglnikah` varchar(45) DEFAULT NULL,
  `pekerjaan` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata.pasangan`
--

LOCK TABLES `biodata.pasangan` WRITE;
/*!40000 ALTER TABLE `biodata.pasangan` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata.pasangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodata.riwayatjabfung`
--

DROP TABLE IF EXISTS `biodata.riwayatjabfung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `biodata.riwayatjabfung` (
  `nik` int NOT NULL,
  `namajabatan` varchar(45) DEFAULT NULL,
  `pangkatgolonganruang` varchar(45) DEFAULT NULL,
  `tmtjabatan` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata.riwayatjabfung`
--

LOCK TABLES `biodata.riwayatjabfung` WRITE;
/*!40000 ALTER TABLE `biodata.riwayatjabfung` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata.riwayatjabfung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodata.riwayatkepangkatan`
--

DROP TABLE IF EXISTS `biodata.riwayatkepangkatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `biodata.riwayatkepangkatan` (
  `nip` int DEFAULT NULL,
  `pangkat` varchar(45) DEFAULT NULL,
  `golongan` varchar(45) DEFAULT NULL,
  `ruang` varchar(45) DEFAULT NULL,
  `tanggaltmt` date DEFAULT NULL,
  `tempattugas` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  `nik` int NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata.riwayatkepangkatan`
--

LOCK TABLES `biodata.riwayatkepangkatan` WRITE;
/*!40000 ALTER TABLE `biodata.riwayatkepangkatan` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata.riwayatkepangkatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodata.riwayatlainlain`
--

DROP TABLE IF EXISTS `biodata.riwayatlainlain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `biodata.riwayatlainlain` (
  `nik` int NOT NULL,
  `tglresign` date DEFAULT NULL,
  `alasan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata.riwayatlainlain`
--

LOCK TABLES `biodata.riwayatlainlain` WRITE;
/*!40000 ALTER TABLE `biodata.riwayatlainlain` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata.riwayatlainlain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodata.riwayatorganisasikemasyarakatan`
--

DROP TABLE IF EXISTS `biodata.riwayatorganisasikemasyarakatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `biodata.riwayatorganisasikemasyarakatan` (
  `nik` int NOT NULL,
  `namaorganisasi` varchar(45) DEFAULT NULL,
  `jabatan` varchar(45) DEFAULT NULL,
  `tahun` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata.riwayatorganisasikemasyarakatan`
--

LOCK TABLES `biodata.riwayatorganisasikemasyarakatan` WRITE;
/*!40000 ALTER TABLE `biodata.riwayatorganisasikemasyarakatan` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata.riwayatorganisasikemasyarakatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodata.riwayatpelatihan`
--

DROP TABLE IF EXISTS `biodata.riwayatpelatihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `biodata.riwayatpelatihan` (
  `nik` int NOT NULL,
  `namapelatihan` varchar(45) DEFAULT NULL,
  `tempatpelatihan` varchar(45) DEFAULT NULL,
  `durasi` varchar(45) DEFAULT NULL,
  `tingkat` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata.riwayatpelatihan`
--

LOCK TABLES `biodata.riwayatpelatihan` WRITE;
/*!40000 ALTER TABLE `biodata.riwayatpelatihan` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata.riwayatpelatihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biodata.riwayatpendidikanformal`
--

DROP TABLE IF EXISTS `biodata.riwayatpendidikanformal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `biodata.riwayatpendidikanformal` (
  `nik` int NOT NULL,
  `namatempat` varchar(45) NOT NULL,
  `fakultasjurusan` varchar(45) DEFAULT NULL,
  `tahunkelulusan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata.riwayatpendidikanformal`
--

LOCK TABLES `biodata.riwayatpendidikanformal` WRITE;
/*!40000 ALTER TABLE `biodata.riwayatpendidikanformal` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata.riwayatpendidikanformal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb3 */;
CREATE TABLE `pengguna` (
  `idpengguna` int NOT NULL,
  `namapengguna` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  PRIMARY KEY (`idpengguna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengguna`
--

LOCK TABLES `pengguna` WRITE;
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT INTO `pengguna` VALUES (1,'admin','1234');
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-13 19:05:02
