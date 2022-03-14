-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 14 Mar 2022, 21:05
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `auth`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `passwordHash`, `name`, `secondname`) VALUES
(1, 'jkowalski@firma.pl', '$argon2i$v=19$m=16,t=2,p=1$ejk0cXFwdmRVQjNOUExyVg$HIYIPn/4cCFD1zHizS3fTA', '', ''),
(2, 'jkowalski@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$TFVKQUJVcnJFUGtsNGhRSg$+UsdsnsqWfymb+dbU4qakoul3fz2hjUyfyofEbOXts8', '', ''),
(3, 'anyshhere@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$RUNNWkE5dWQzY3dNUHU3Zw$MyVixsy2X9D97Jg3A0JEP0xTgJC739632c+CyZPa8K4', '', ''),
(4, 'anyshhere1@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$bG1KTll6NmZBV0JLZG0zNg$i8yEr4EymISn9QOZvnSjI2XHuJzDFsz6jMS7wvURWIU', '', ''),
(5, 'anyshhere2@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$UVI1VXVjZHZ2NE1URmNlWQ$VjOBZxk+1M2dOZw4p6/7ZnTWM6vQHPW5neOXN9KAEOo', 'kacper', 'aneszko'),
(6, 'anysh2@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$YnpBMEFHOVBWVjdjSnU2Yw$t0ix6k7Ks7jIHaK+eKIgMsVfPxISL/ANF9rXMHI3UPQ', 'kacper', 'aneszko'),
(8, 'anyshhere3@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$RFV6N3dreklvRWtkQkhKMw$hJQ3WgA04xnS6dmB7Vc8lg1Ycmu9vt8wMpdk8m3sbiE', 'Janusz', 'Mikke'),
(9, 'bocian@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$MG5ZTHRsTEFiMFZDSlBFUg$KTwHgcRZAYGXUYfQX9AsKDAZYIdN4BPym38qMcH6ldA', 'janusz', 'korwin');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
