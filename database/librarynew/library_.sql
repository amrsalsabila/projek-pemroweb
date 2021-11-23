-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2021 pada 12.08
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
-- Database: `library_`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `AdminId` varchar(4) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `ContactNumber` varchar(13) DEFAULT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `HireDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`AdminId`, `Name`, `Address`, `ContactNumber`, `Email`, `Password`, `HireDate`) VALUES
('A001', 'dimas', 'jetis', '0822678459', 'dimas@gmail.com', 'dimas33', '2021-11-01'),
('A005', 'rangga', 'cilacap', '08122334455', 'rangga@gmail.com', 'rangga123', '2021-11-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `BookId` int(11) NOT NULL,
  `CategoryId` varchar(4) NOT NULL,
  `PublisherId` varchar(4) NOT NULL,
  `Isbn` varchar(13) NOT NULL,
  `BookTitle` varchar(100) NOT NULL,
  `Author` varchar(40) DEFAULT NULL,
  `Stock` int(11) DEFAULT 0,
  `Image` varchar(300) NOT NULL DEFAULT 'photo/book/default_book.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`BookId`, `CategoryId`, `PublisherId`, `Isbn`, `BookTitle`, `Author`, `Stock`, `Image`) VALUES
(22, 'CFic', 'P004', '9781787461116', 'The Firm', 'John Grisham', 1, 'http://prodimage.images-bn.com/pimages/0032429281241_p0_v2_s1200x630.jpg'),
(23, 'CTec', 'P001', '9786021514917', 'Algoritma dan Pemrograman dalam bahasa Pascal,C, dan C++ Edisi Keenam', 'Rinaldi Munir & Leony Lidya', 3, 'https://cdn.gramedia.com/uploads/items/9786021514917_algoritma-dan-pemrograman-dalam-bahasa-pascal_-c_-dan-c_-edisi-keenam.jpg'),
(24, 'CTec', 'P001', '9786026232137', 'Matematika Diskrit', 'Rinaldi Munir', 7, 'https://cf.shopee.co.id/file/f9845733add4897ebbb254c122d0fa0d_tn'),
(25, 'CSci', 'P002', '9789790339378', 'Kalkulus Edisi Kesembilan Jilid 1', 'Varberg,Purcell,Rigdon', 9, 'https://3.bp.blogspot.com/--vAL6uUXDeo/WFZj8sT_tpI/AAAAAAAAA8Q/mXrxRYG7FJEqgxDzYHfyTFAh6k1HvitWwCLcB/s1600/Purcell_bogdestudio.png'),
(27, 'CArD', 'P001', '9786021514566', 'The Magic of Coreldraw', 'Hendi Hendratman', 3, 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//94/MTA-3705663/informatika_informatika-the-magic-of-corel-draw-edisi-revisi-kedua-by-hendi-hendratman-buku-software_full06.jpg?output-format=webp'),
(28, 'CHis', 'P005', '9780743224543', 'Band of Brothers', 'Stephen E. Ambrose', 2, 'https://images-na.ssl-images-amazon.com/images/I/51y7WMAw3IL._SX310_BO1,204,203,200_.jpg'),
(29, 'CSci', 'P005', '9781471165085', 'The 7 Habits of Highly Effective People', 'Stephen R. Covey', 22, 'https://prodimage.images-bn.com/pimages/9781476740058_p0_v3_s550x406.jpg'),
(30, 'CSci', 'P005', '9781476708690', 'The Innovators', 'Walter Isaacson', 0, 'https://images-na.ssl-images-amazon.com/images/I/519KsxAU05L._SX332_BO1,204,203,200_.jpg'),
(31, 'CEcn', 'P006', '978007179850', 'Achieve Financial Freedom', 'Sandy & Matthew Botkin', 2, 'https://images-na.ssl-images-amazon.com/images/I/71gkd8Em%2BhL.jpg'),
(32, 'CFic', 'P001', '1928465708121', 'Kimi No Nawa', 'Liek Allyandaru', 18, 'https://i.pinimg.com/474x/b7/ba/18/b7ba182ba2c00c7be96e909708f981d6.jpg'),
(33, 'CTec', 'P003', '1928465761124', 'Database Management System', 'Rama Tri Agung', 10, 'photo/book/default_book.png'),
(35, 'CSci', 'P003', '192846510000', 'Nganu', 'Liek Allyandaru', 1, 'photo/book/c652f6f5c67fcb5be0fce4eef227e392.png'),
(36, 'CFic', 'P001', '124235464634', 'A Silent Voice', 'Satya Ghifari', 1, 'photo/book/811163caa7bea5a5052a147acf626cf3.png'),
(40, 'CHis', 'P005', '23456', 'lkjhg', 'lkjhg', 2, 'photo/book/16e6de029c29d3b5cea6cd2520a71648.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `CategoryId` varchar(4) NOT NULL,
  `CategoryName` varchar(30) NOT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`CategoryId`, `CategoryName`, `Description`) VALUES
('CArD', 'Art & Design', 'All about art & Designing'),
('CEcn', 'Economic', 'This Category is all about economy and finance.'),
('CFic', 'Fiction Novel', 'This Category is full of fiction novel from the greatest writer'),
('CHis', 'History', 'History arround the world'),
('CSci', 'Science', 'This Category full of science book'),
('CTec', 'Technology', 'All about technology in this category');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inputs`
--

CREATE TABLE `inputs` (
  `AdminId` varchar(4) DEFAULT NULL,
  `BookId` int(11) DEFAULT NULL,
  `InputDate` date DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `inputs`
--

INSERT INTO `inputs` (`AdminId`, `BookId`, `InputDate`, `Quantity`) VALUES
('A005', 40, '0000-00-00', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `Nim` varchar(9) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `ContactNumber` varchar(13) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Password` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL DEFAULT 'photo/user/default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`Nim`, `Name`, `Address`, `ContactNumber`, `Email`, `Password`, `Image`) VALUES
('123200111', 'david', 'maguwo', '081920675645', 'david@gmail.com', 'david55', 'photo/user/default.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `publishers`
--

CREATE TABLE `publishers` (
  `PublisherId` varchar(4) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(80) DEFAULT NULL,
  `ContactNumber` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `publishers`
--

INSERT INTO `publishers` (`PublisherId`, `Name`, `Address`, `ContactNumber`) VALUES
('P001', 'Penerbit Informatika', 'Pasar Buku Palasari 82 Bandung', '022-7217813'),
('P002', 'Penerbit Erlangga', 'Jl H.Baping Raya no 100,Jakarta', '021-112543'),
('P003', 'Elex Media Komputindo', 'Jl Palmerah Barat 29-37,Jakarta', '021-535510222'),
('P004', 'Arrow Books', '20 Vauxhall Bridge Road, London', '+44 57910864'),
('P005', 'Simon & Schuster', 'Rockefeller Center 1230 Avenue of the Americas,New York,USA', '+18004566798'),
('P006', 'McGrawHill', 'USA', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `returnings`
--

CREATE TABLE `returnings` (
  `ReturningId` int(11) NOT NULL,
  `TransactionId` int(11) NOT NULL,
  `MemberReturningDate` date DEFAULT NULL,
  `DeterminedReturningDate` date DEFAULT NULL,
  `Fine` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `TransactionId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `Nim` varchar(9) NOT NULL,
  `BorrowingDate` date NOT NULL,
  `Status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlists`
--

CREATE TABLE `wishlists` (
  `BookId` int(11) DEFAULT NULL,
  `Nim` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`AdminId`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookId`),
  ADD KEY `fk_c_id` (`CategoryId`),
  ADD KEY `fk_p_id` (`PublisherId`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indeks untuk tabel `inputs`
--
ALTER TABLE `inputs`
  ADD KEY `fk_admin_id` (`AdminId`),
  ADD KEY `fk_books_id` (`BookId`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`Nim`);

--
-- Indeks untuk tabel `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`PublisherId`);

--
-- Indeks untuk tabel `returnings`
--
ALTER TABLE `returnings`
  ADD PRIMARY KEY (`ReturningId`),
  ADD KEY `fk_t_id` (`TransactionId`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionId`),
  ADD KEY `fk_m_id` (`Nim`),
  ADD KEY `fk_b_id` (`BookId`);

--
-- Indeks untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  ADD KEY `fk_book_id` (`BookId`),
  ADD KEY `fk_member_id` (`Nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `BookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `returnings`
--
ALTER TABLE `returnings`
  MODIFY `ReturningId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TransactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_c_id` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`CategoryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_p_id` FOREIGN KEY (`PublisherId`) REFERENCES `publishers` (`PublisherId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `inputs`
--
ALTER TABLE `inputs`
  ADD CONSTRAINT `fk_admin_id` FOREIGN KEY (`AdminId`) REFERENCES `admins` (`AdminId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_books_id` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `returnings`
--
ALTER TABLE `returnings`
  ADD CONSTRAINT `fk_t_id` FOREIGN KEY (`TransactionId`) REFERENCES `transactions` (`TransactionId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_b_id` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_m_id` FOREIGN KEY (`Nim`) REFERENCES `members` (`Nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `fk_book_id` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_member_id` FOREIGN KEY (`Nim`) REFERENCES `members` (`Nim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
