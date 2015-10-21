-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 21, 2015 at 01:16 
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataPeserta`
--

CREATE TABLE IF NOT EXISTS `dataPeserta` (
  `id_dataPeserta` int(11) NOT NULL,
  `jenisKepesertaan` int(11) NOT NULL,
  `NKK` int(11) NOT NULL,
  `NIK` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tglLahir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statusDiKeluarga` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `noHP` varchar(15) NOT NULL,
  `valid` int(11) NOT NULL,
  `waktuSubmit` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dataPesertaBPJS`
--

CREATE TABLE IF NOT EXISTS `dataPesertaBPJS` (
  `id_dataPesertaBPJS` int(11) NOT NULL,
  `noBPJS` int(11) NOT NULL,
  `waktuDiterima` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statusPelayanan` int(11) NOT NULL,
  `id_dummyBPJS` int(11) NOT NULL,
  `id_DataPeserta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dataPesertaStatus`
--

CREATE TABLE IF NOT EXISTS `dataPesertaStatus` (
  `id_dataPesertaStatus` int(11) NOT NULL,
  `namaStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dummyBPJS`
--

CREATE TABLE IF NOT EXISTS `dummyBPJS` (
  `id_dummyBPJS` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dummyKTP`
--

CREATE TABLE IF NOT EXISTS `dummyKTP` (
  `id_KTPdummy` int(11) NOT NULL,
  `NIK` int(11) NOT NULL,
  `NKK` int(11) NOT NULL,
  `tempatLahir` varchar(255) NOT NULL,
  `tanggalLahir` int(11) NOT NULL,
  `golonganDarah` varchar(2) NOT NULL,
  `jenisKelamin` int(11) NOT NULL,
  `alamatJalan` varchar(255) NOT NULL,
  `alamatRT` int(11) NOT NULL,
  `alamatRW` int(11) NOT NULL,
  `alamatKelDesa` varchar(255) NOT NULL,
  `alamatKecamatan` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `statusPerkawinan` int(11) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `kewarganegaraan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FAQ`
--

CREATE TABLE IF NOT EXISTS `FAQ` (
  `id_FAQ` int(11) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `jawaban` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faskes`
--

CREATE TABLE IF NOT EXISTS `faskes` (
  `id_faskes` int(11) NOT NULL,
  `nama_faskes` varchar(255) NOT NULL,
  `tipe_faskes` varchar(255) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `tingkat` int(11) NOT NULL,
  `alamat_lengkap` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `historiStok`
--

CREATE TABLE IF NOT EXISTS `historiStok` (
  `id_historiStok` int(11) NOT NULL,
  `waktuIdTransaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tipeHistoriStok` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kodeDiagnosa`
--

CREATE TABLE IF NOT EXISTS `kodeDiagnosa` (
  `id_kodeDiagnosa` int(11) NOT NULL,
  `kodeDiagnosa` varchar(255) NOT NULL,
  `judulDiagnosa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `kota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profilUser`
--

CREATE TABLE IF NOT EXISTS `profilUser` (
  `id_profilUser` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempatLahir` varchar(255) NOT NULL,
  `tglLahir` int(11) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `alamatKerja` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `noHP` varchar(15) NOT NULL,
  `alamatRumah` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `provinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekamMedis`
--

CREATE TABLE IF NOT EXISTS `rekamMedis` (
  `id_rekamMedis` int(11) NOT NULL,
  `id_dataPesertaBPJS` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_diagnosa` int(11) NOT NULL,
  `tindakan` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE IF NOT EXISTS `stok` (
  `id_stok` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `id_faskes` int(11) NOT NULL,
  `id_tipeStok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipeFaskes`
--

CREATE TABLE IF NOT EXISTS `tipeFaskes` (
  `id_tipeFaskes` int(11) NOT NULL,
  `tipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipeLayanan`
--

CREATE TABLE IF NOT EXISTS `tipeLayanan` (
  `id_tipeLayanan` int(11) NOT NULL,
  `namaLayanan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipeStok`
--

CREATE TABLE IF NOT EXISTS `tipeStok` (
  `id_tipeStok` int(11) NOT NULL,
  `namaStok` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipeUser`
--

CREATE TABLE IF NOT EXISTS `tipeUser` (
  `id_tipeUser` int(11) NOT NULL,
  `namaTipeUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `validFaskes` int(11) NOT NULL,
  `validBPJS` int(11) NOT NULL,
  `validasiBPJS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `validUser` int(11) NOT NULL,
  `waktuTransaksi` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_faskes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tipeUser` varchar(255) NOT NULL,
  `id_organisasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `validasiDataPeserta`
--

CREATE TABLE IF NOT EXISTS `validasiDataPeserta` (
  `id_validasiDataPeserta` int(11) NOT NULL,
  `fotoKK` varchar(255) NOT NULL,
  `NKK` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `waktuValidasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_DataPeserta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataPeserta`
--
ALTER TABLE `dataPeserta`
  ADD PRIMARY KEY (`id_dataPeserta`);

--
-- Indexes for table `dataPesertaBPJS`
--
ALTER TABLE `dataPesertaBPJS`
  ADD PRIMARY KEY (`id_dataPesertaBPJS`);

--
-- Indexes for table `dataPesertaStatus`
--
ALTER TABLE `dataPesertaStatus`
  ADD PRIMARY KEY (`id_dataPesertaStatus`);

--
-- Indexes for table `dummyBPJS`
--
ALTER TABLE `dummyBPJS`
  ADD PRIMARY KEY (`id_dummyBPJS`);

--
-- Indexes for table `dummyKTP`
--
ALTER TABLE `dummyKTP`
  ADD PRIMARY KEY (`id_KTPdummy`);

--
-- Indexes for table `FAQ`
--
ALTER TABLE `FAQ`
  ADD PRIMARY KEY (`id_FAQ`);

--
-- Indexes for table `faskes`
--
ALTER TABLE `faskes`
  ADD PRIMARY KEY (`id_faskes`),
  ADD KEY `id_faskes` (`id_faskes`);

--
-- Indexes for table `historiStok`
--
ALTER TABLE `historiStok`
  ADD PRIMARY KEY (`id_historiStok`),
  ADD KEY `id_stok` (`id_stok`);

--
-- Indexes for table `kodeDiagnosa`
--
ALTER TABLE `kodeDiagnosa`
  ADD PRIMARY KEY (`id_kodeDiagnosa`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `profilUser`
--
ALTER TABLE `profilUser`
  ADD PRIMARY KEY (`id_profilUser`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `rekamMedis`
--
ALTER TABLE `rekamMedis`
  ADD PRIMARY KEY (`id_rekamMedis`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `tipeFaskes`
--
ALTER TABLE `tipeFaskes`
  ADD PRIMARY KEY (`id_tipeFaskes`);

--
-- Indexes for table `tipeLayanan`
--
ALTER TABLE `tipeLayanan`
  ADD PRIMARY KEY (`id_tipeLayanan`);

--
-- Indexes for table `tipeStok`
--
ALTER TABLE `tipeStok`
  ADD PRIMARY KEY (`id_tipeStok`);

--
-- Indexes for table `tipeUser`
--
ALTER TABLE `tipeUser`
  ADD PRIMARY KEY (`id_tipeUser`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_faskes` (`id_faskes`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `validasiDataPeserta`
--
ALTER TABLE `validasiDataPeserta`
  ADD PRIMARY KEY (`id_validasiDataPeserta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataPeserta`
--
ALTER TABLE `dataPeserta`
  MODIFY `id_dataPeserta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dataPesertaBPJS`
--
ALTER TABLE `dataPesertaBPJS`
  MODIFY `id_dataPesertaBPJS` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dataPesertaStatus`
--
ALTER TABLE `dataPesertaStatus`
  MODIFY `id_dataPesertaStatus` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dummyBPJS`
--
ALTER TABLE `dummyBPJS`
  MODIFY `id_dummyBPJS` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dummyKTP`
--
ALTER TABLE `dummyKTP`
  MODIFY `id_KTPdummy` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `FAQ`
--
ALTER TABLE `FAQ`
  MODIFY `id_FAQ` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faskes`
--
ALTER TABLE `faskes`
  MODIFY `id_faskes` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `historiStok`
--
ALTER TABLE `historiStok`
  MODIFY `id_historiStok` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kodeDiagnosa`
--
ALTER TABLE `kodeDiagnosa`
  MODIFY `id_kodeDiagnosa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profilUser`
--
ALTER TABLE `profilUser`
  MODIFY `id_profilUser` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rekamMedis`
--
ALTER TABLE `rekamMedis`
  MODIFY `id_rekamMedis` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipeFaskes`
--
ALTER TABLE `tipeFaskes`
  MODIFY `id_tipeFaskes` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipeLayanan`
--
ALTER TABLE `tipeLayanan`
  MODIFY `id_tipeLayanan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipeStok`
--
ALTER TABLE `tipeStok`
  MODIFY `id_tipeStok` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipeUser`
--
ALTER TABLE `tipeUser`
  MODIFY `id_tipeUser` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `validasiDataPeserta`
--
ALTER TABLE `validasiDataPeserta`
  MODIFY `id_validasiDataPeserta` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `historiStok`
--
ALTER TABLE `historiStok`
  ADD CONSTRAINT `historiStok_ibfk_1` FOREIGN KEY (`id_stok`) REFERENCES `stok` (`id_stok`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_faskes`) REFERENCES `faskes` (`id_faskes`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
