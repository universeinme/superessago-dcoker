-- Adminer 4.8.1 MySQL 11.2.2-MariaDB-1:11.2.2+maria~ubu2204 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `kepegawaian`;

DROP TABLE IF EXISTS `biodata.anak`;
CREATE TABLE `biodata.anak` (
  `nik` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `tgllahir` date NOT NULL,
  `pekerjaan` varchar(45) NOT NULL,
  `namaayah` varchar(45) NOT NULL,
  `namaibu` varchar(45) NOT NULL,
  `keterangan` varchar(45) NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


DROP TABLE IF EXISTS `biodata.cpnsp3k`;
CREATE TABLE `biodata.cpnsp3k` (
  `nik` int(11) NOT NULL,
  `nip` int(11) DEFAULT NULL,
  `tmtcpnspppk` varchar(45) DEFAULT NULL,
  `nosk` varchar(45) DEFAULT NULL,
  `tglsk` date DEFAULT NULL,
  `pangkat` varchar(45) DEFAULT NULL,
  `golongan` varchar(45) DEFAULT NULL,
  `pejabatygmengangkat` varchar(45) DEFAULT NULL,
  `instansitmt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


DROP TABLE IF EXISTS `biodata.diri`;
CREATE TABLE `biodata.diri` (
  `nik` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tempatlahir` varchar(45) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `jeniskelamin` varchar(45) DEFAULT NULL,
  `agama` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `nomortelpon` int(11) DEFAULT NULL,
  `jarakkekantor` int(11) DEFAULT NULL,
  `beratbadan` int(11) DEFAULT NULL,
  `tinggibadan` int(11) DEFAULT NULL,
  `goldarah` varchar(45) DEFAULT NULL,
  `penyakitygpernahdiderita` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


DROP TABLE IF EXISTS `biodata.kedinasan`;
CREATE TABLE `biodata.kedinasan` (
  `nip` int(11) DEFAULT NULL,
  `kartupegawai` varchar(45) DEFAULT NULL,
  `pangkat` varchar(45) DEFAULT NULL,
  `jabatan` varchar(45) DEFAULT NULL,
  `golongan` varchar(45) DEFAULT NULL,
  `tmtinstansisekarang` varchar(45) DEFAULT NULL,
  `nik` int(11) NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


DROP TABLE IF EXISTS `biodata.pasangan`;
CREATE TABLE `biodata.pasangan` (
  `nik` int(11) NOT NULL,
  `namapasangan` varchar(45) NOT NULL,
  `tgllahir` varchar(45) DEFAULT NULL,
  `tglnikah` varchar(45) DEFAULT NULL,
  `pekerjaan` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


DROP TABLE IF EXISTS `biodata.riwayatjabfung`;
CREATE TABLE `biodata.riwayatjabfung` (
  `nik` int(11) NOT NULL,
  `namajabatan` varchar(45) DEFAULT NULL,
  `pangkatgolonganruang` varchar(45) DEFAULT NULL,
  `tmtjabatan` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


DROP TABLE IF EXISTS `biodata.riwayatkepangkatan`;
CREATE TABLE `biodata.riwayatkepangkatan` (
  `nip` int(11) DEFAULT NULL,
  `pangkat` varchar(45) DEFAULT NULL,
  `golongan` varchar(45) DEFAULT NULL,
  `ruang` varchar(45) DEFAULT NULL,
  `tanggaltmt` date DEFAULT NULL,
  `tempattugas` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  `nik` int(11) NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


DROP TABLE IF EXISTS `biodata.riwayatlainlain`;
CREATE TABLE `biodata.riwayatlainlain` (
  `nik` int(11) NOT NULL,
  `tglresign` date DEFAULT NULL,
  `alasan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


DROP TABLE IF EXISTS `biodata.riwayatorganisasikemasyarakatan`;
CREATE TABLE `biodata.riwayatorganisasikemasyarakatan` (
  `nik` int(11) NOT NULL,
  `namaorganisasi` varchar(45) DEFAULT NULL,
  `jabatan` varchar(45) DEFAULT NULL,
  `tahun` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


DROP TABLE IF EXISTS `biodata.riwayatpelatihan`;
CREATE TABLE `biodata.riwayatpelatihan` (
  `nik` int(11) NOT NULL,
  `namapelatihan` varchar(45) DEFAULT NULL,
  `tempatpelatihan` varchar(45) DEFAULT NULL,
  `durasi` varchar(45) DEFAULT NULL,
  `tingkat` varchar(45) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


DROP TABLE IF EXISTS `biodata.riwayatpendidikanformal`;
CREATE TABLE `biodata.riwayatpendidikanformal` (
  `nik` int(11) NOT NULL,
  `namatempat` varchar(45) NOT NULL,
  `fakultasjurusan` varchar(45) DEFAULT NULL,
  `tahunkelulusan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna` (
  `idpengguna` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  PRIMARY KEY (`idpengguna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `pengguna` (`idpengguna`, `username`, `nama`, `pwd`) VALUES
(1,	'epbd',	'Eko Priambodo',	'1234');

-- 2024-01-27 16:29:12
