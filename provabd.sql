-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Jun-2025 às 13:47
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `provabd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agencias`
--

CREATE TABLE `agencias` (
  `id` int(11) NOT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `gerentes` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `cnpj` bigint(14) DEFAULT NULL,
  `qntdDeFuncionarios` bigint(14) DEFAULT NULL,
  `numeroDaAgencia` bigint(14) DEFAULT NULL,
  `idCmpTransacao` int(11) DEFAULT NULL,
  `idComprovante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cartao`
--

CREATE TABLE `cartao` (
  `id` int(11) NOT NULL,
  `validade` date DEFAULT NULL,
  `bandeira` varchar(45) DEFAULT NULL,
  `cartaoesEmitidos` bigint(14) DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `creditoDebito` binary(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `sobrenome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `nomeEmpresa` varchar(45) DEFAULT NULL,
  `idComprovante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `sobrenome`, `email`, `genero`, `nomeEmpresa`, `idComprovante`) VALUES
(1, 'Valma', 'Mazin', 'vmazin0@reference.com', 'Female', 'Rooxo', NULL),
(2, 'Cornie', 'Prevost', 'cprevost1@washingtonpost.com', 'Male', 'Tagcat', NULL),
(3, 'Marlo', 'Martel', 'mmartel2@nifty.com', 'Male', 'Bluejam', NULL),
(4, 'Gav', 'Mogg', 'gmogg3@discovery.com', 'Male', 'Fiveclub', NULL),
(5, 'Kenn', 'Gurnee', 'kgurnee4@spiegel.de', 'Male', 'Kazio', NULL),
(6, 'Kenyon', 'Callum', 'kcallum5@sohu.com', 'Male', 'Vidoo', NULL),
(7, 'Mendel', 'Spaldin', 'mspaldin6@lycos.com', 'Male', 'Topicshots', NULL),
(8, 'Hamil', 'McGinnis', 'hmcginnis7@redcross.org', 'Male', 'Shufflebeat', NULL),
(9, 'Chris', 'Smithson', 'csmithson8@dmoz.org', 'Male', 'Abatz', NULL),
(10, 'Loise', 'Longhurst', 'llonghurst9@quantcast.com', 'Female', 'Voonyx', NULL),
(11, 'Evaleen', 'Erlam', 'eerlama@umn.edu', 'Female', 'Twimbo', NULL),
(12, 'Megan', 'Etherton', 'methertonb@jalbum.net', 'Female', 'Plajo', NULL),
(13, 'Tani', 'Beamont', 'tbeamontc@cam.ac.uk', 'Female', 'Yakitri', NULL),
(14, 'Dela', 'Pargeter', 'dpargeterd@nature.com', 'Female', 'Roombo', NULL),
(15, 'Reggy', 'Travis', 'rtravise@who.int', 'Male', 'JumpXS', NULL),
(16, 'Dorthea', 'Kennewell', 'dkennewellf@hhs.gov', 'Female', 'Meejo', NULL),
(17, 'Rosanne', 'Diggens', 'rdiggensg@issuu.com', 'Female', 'Blogtags', NULL),
(18, 'Delbert', 'Slevin', 'dslevinh@tripod.com', 'Male', 'Myworks', NULL),
(19, 'Erie', 'Gannan', 'egannani@barnesandnoble.com', 'Male', 'Minyx', NULL),
(20, 'Darla', 'Tether', 'dtetherj@i2i.jp', 'Female', 'Avamm', NULL),
(21, 'Viola', 'Mounce', 'vmouncek@chicagotribune.com', 'Female', 'Ooba', NULL),
(22, 'Joe', 'MacKnockiter', 'jmacknockiterl@examiner.com', 'Male', 'Cogibox', NULL),
(23, 'Dael', 'Roake', 'droakem@cbslocal.com', 'Genderqueer', 'Yodel', NULL),
(24, 'Margaux', 'Vayne', 'mvaynen@mayoclinic.com', 'Female', 'Skalith', NULL),
(25, 'Shirline', 'Ashdown', 'sashdowno@dot.gov', 'Female', 'Meetz', NULL),
(26, 'Zacharia', 'Naughton', 'znaughtonp@pcworld.com', 'Male', 'Tavu', NULL),
(27, 'Cleopatra', 'Arpino', 'carpinoq@redcross.org', 'Female', 'Brainverse', NULL),
(28, 'Sigismund', 'Kirk', 'skirkr@pinterest.com', 'Male', 'Zoovu', NULL),
(29, 'Maxie', 'Hands', 'mhandss@about.com', 'Female', 'Yombu', NULL),
(30, 'Edeline', 'Panswick', 'epanswickt@t-online.de', 'Female', 'Skiptube', NULL),
(31, 'Annie', 'Niessen', 'aniessenu@ibm.com', 'Female', 'Zoomdog', NULL),
(32, 'Weylin', 'Sizland', 'wsizlandv@oakley.com', 'Agender', 'Quire', NULL),
(33, 'Ravi', 'Josifovitz', 'rjosifovitzw@cbc.ca', 'Male', 'Geba', NULL),
(34, 'Alvina', 'Satchell', 'asatchellx@xrea.com', 'Female', 'Brainverse', NULL),
(35, 'Brinn', 'Eby', 'bebyy@wix.com', 'Agender', 'Devpoint', NULL),
(36, 'Tallie', 'Jales', 'tjalesz@istockphoto.com', 'Male', 'Yacero', NULL),
(37, 'Kelci', 'Yurocjhin', 'kyurocjhin10@google.es', 'Female', 'Yadel', NULL),
(38, 'Hartley', 'Keers', 'hkeers11@oaic.gov.au', 'Male', 'Kwilith', NULL),
(39, 'Von', 'Scales', 'vscales12@blogspot.com', 'Male', 'Mymm', NULL),
(40, 'Gav', 'Ardley', 'gardley13@samsung.com', 'Male', 'Twitterlist', NULL),
(41, 'Bar', 'Dulen', 'bdulen14@live.com', 'Male', 'Skinder', NULL),
(42, 'Garrett', 'Haddinton', 'ghaddinton15@squarespace.com', 'Genderfluid', 'Trilith', NULL),
(43, 'Jacquenetta', 'Hawk', 'jhawk16@dropbox.com', 'Female', 'Camimbo', NULL),
(44, 'Pat', 'Mayow', 'pmayow17@unicef.org', 'Female', 'Skyba', NULL),
(45, 'Benedikta', 'Morena', 'bmorena18@smugmug.com', 'Female', 'Zoombox', NULL),
(46, 'Sharlene', 'Shuter', 'sshuter19@eepurl.com', 'Female', 'Realfire', NULL),
(47, 'Pauly', 'Oxbrow', 'poxbrow1a@si.edu', 'Female', 'Skyble', NULL),
(48, 'Tallie', 'Varns', 'tvarns1b@alibaba.com', 'Female', 'Dynabox', NULL),
(49, 'Arlen', 'Dunican', 'adunican1c@ifeng.com', 'Male', 'Browsetype', NULL),
(50, 'Ardisj', 'Hutfield', 'ahutfield1d@shinystat.com', 'Female', 'Tekfly', NULL),
(51, 'Guss', 'Mouget', 'gmouget1e@nytimes.com', 'Male', 'Wikibox', NULL),
(52, 'Maribel', 'Leatherbarrow', 'mleatherbarrow1f@latimes.com', 'Female', 'Fanoodle', NULL),
(53, 'Horatia', 'Jouhning', 'hjouhning1g@paypal.com', 'Female', 'Dabjam', NULL),
(54, 'Anett', 'Meekings', 'ameekings1h@state.gov', 'Female', 'Skynoodle', NULL),
(55, 'Caty', 'Pusey', 'cpusey1i@reference.com', 'Female', 'Roomm', NULL),
(56, 'Dara', 'Rippingall', 'drippingall1j@spotify.com', 'Female', 'Cogibox', NULL),
(57, 'Corey', 'Eke', 'ceke1k@archive.org', 'Male', 'Zoovu', NULL),
(58, 'Donica', 'Duckels', 'dduckels1l@weebly.com', 'Female', 'Mydeo', NULL),
(59, 'Wain', 'Pickard', 'wpickard1m@creativecommons.org', 'Male', 'Quimm', NULL),
(60, 'Della', 'Rallings', 'drallings1n@tiny.cc', 'Female', 'Devpoint', NULL),
(61, 'Wileen', 'Petraitis', 'wpetraitis1o@istockphoto.com', 'Female', 'Photobean', NULL),
(62, 'Maddi', 'Cowitz', 'mcowitz1p@over-blog.com', 'Female', 'Quatz', NULL),
(63, 'Christa', 'Attreed', 'cattreed1q@webmd.com', 'Female', 'Demizz', NULL),
(64, 'Sela', 'Hearsum', 'shearsum1r@mashable.com', 'Female', 'Gabspot', NULL),
(65, 'Ollie', 'Citrine', 'ocitrine1s@nba.com', 'Female', 'Flashdog', NULL),
(66, 'Nikolas', 'Fullerd', 'nfullerd1t@springer.com', 'Male', 'Yotz', NULL),
(67, 'Tabby', 'McGann', 'tmcgann1u@census.gov', 'Male', 'Jayo', NULL),
(68, 'Roch', 'Gallienne', 'rgallienne1v@hud.gov', 'Genderfluid', 'Einti', NULL),
(69, 'Cherish', 'Coakley', 'ccoakley1w@mit.edu', 'Female', 'Jabbersphere', NULL),
(70, 'Erda', 'Braunton', 'ebraunton1x@nps.gov', 'Female', 'Voomm', NULL),
(71, 'Rakel', 'Dobeson', 'rdobeson1y@thetimes.co.uk', 'Female', 'Babblestorm', NULL),
(72, 'Flem', 'Daniau', 'fdaniau1z@craigslist.org', 'Male', 'Geba', NULL),
(73, 'Kissiah', 'Wraith', 'kwraith20@yahoo.com', 'Female', 'Flashpoint', NULL),
(74, 'Lurlene', 'Varns', 'lvarns21@vkontakte.ru', 'Female', 'LiveZ', NULL),
(75, 'Tomi', 'Burril', 'tburril22@chron.com', 'Female', 'Feedfire', NULL),
(76, 'Katee', 'Leatt', 'kleatt23@bigcartel.com', 'Female', 'Feedfire', NULL),
(77, 'Lynna', 'Bevan', 'lbevan24@phpbb.com', 'Female', 'Realbridge', NULL),
(78, 'Benyamin', 'Eddins', 'beddins25@google.nl', 'Male', 'Tagfeed', NULL),
(79, 'Nichole', 'Crudge', 'ncrudge26@ocn.ne.jp', 'Male', 'Zoomcast', NULL),
(80, 'Napoleon', 'Cleverly', 'ncleverly27@deliciousdays.com', 'Male', 'Rhyloo', NULL),
(81, 'Falkner', 'Maccree', 'fmaccree28@exblog.jp', 'Polygender', 'Flashpoint', NULL),
(82, 'Tiffi', 'Taborre', 'ttaborre29@answers.com', 'Female', 'Yozio', NULL),
(83, 'Monika', 'Brockley', 'mbrockley2a@fda.gov', 'Female', 'Devpoint', NULL),
(84, 'Fayina', 'de Tocqueville', 'fdetocqueville2b@tripadvisor.com', 'Female', 'Thoughtblab', NULL),
(85, 'Trista', 'Askham', 'taskham2c@time.com', 'Female', 'Feedmix', NULL),
(86, 'Barney', 'Forrestor', 'bforrestor2d@tinypic.com', 'Male', 'Wikizz', NULL),
(87, 'Rowland', 'Klugel', 'rklugel2e@statcounter.com', 'Male', 'Photobug', NULL),
(88, 'Berte', 'Smitham', 'bsmitham2f@dell.com', 'Non-binary', 'Photojam', NULL),
(89, 'Sisile', 'Banane', 'sbanane2g@army.mil', 'Female', 'Voonder', NULL),
(90, 'Elizabet', 'Curwood', 'ecurwood2h@sourceforge.net', 'Genderqueer', 'Eimbee', NULL),
(91, 'Shanta', 'D\'Hooghe', 'sdhooghe2i@bandcamp.com', 'Female', 'Ntags', NULL),
(92, 'Pincas', 'Standon', 'pstandon2j@twitpic.com', 'Male', 'Realpoint', NULL),
(93, 'Mil', 'MacCurlye', 'mmaccurlye2k@apple.com', 'Female', 'Innojam', NULL),
(94, 'Dore', 'Devine', 'ddevine2l@google.ca', 'Male', 'Fivechat', NULL),
(95, 'Catina', 'Illem', 'cillem2m@europa.eu', 'Female', 'Voolia', NULL),
(96, 'Karen', 'Verralls', 'kverralls2n@telegraph.co.uk', 'Female', 'Skipfire', NULL),
(97, 'Obed', 'Trassler', 'otrassler2o@theatlantic.com', 'Male', 'Chatterbridge', NULL),
(98, 'Tirrell', 'Egalton', 'tegalton2p@ox.ac.uk', 'Male', 'Flashdog', NULL),
(99, 'Reta', 'Callacher', 'rcallacher2q@edublogs.org', 'Female', 'Yata', NULL),
(100, 'Rici', 'Olerenshaw', 'rolerenshaw2r@chronoengine.com', 'Female', 'Realblab', NULL),
(101, 'Marvin', 'Rizzardini', 'mrizzardini2s@prnewswire.com', 'Male', 'Gigazoom', NULL),
(102, 'Tove', 'Franzke', 'tfranzke2t@bbb.org', 'Female', 'Oodoo', NULL),
(103, 'Aldis', 'Ledington', 'aledington2u@unicef.org', 'Male', 'Pixonyx', NULL),
(104, 'Filbert', 'Kopfer', 'fkopfer2v@yahoo.com', 'Male', 'Kazio', NULL),
(105, 'Eddi', 'Edis', 'eedis2w@addthis.com', 'Female', 'Plambee', NULL),
(106, 'Flossie', 'Whitten', 'fwhitten2x@istockphoto.com', 'Female', 'Realblab', NULL),
(107, 'Guillaume', 'Rown', 'grown2y@g.co', 'Male', 'Tavu', NULL),
(108, 'Billy', 'Carhart', 'bcarhart2z@amazon.co.uk', 'Female', 'Trupe', NULL),
(109, 'Marie', 'O\'Kane', 'mokane30@sogou.com', 'Female', 'Aibox', NULL),
(110, 'Audy', 'Wadforth', 'awadforth31@123-reg.co.uk', 'Female', 'Devify', NULL),
(111, 'Nadeen', 'Pigeon', 'npigeon32@berkeley.edu', 'Female', 'Yotz', NULL),
(112, 'Tabby', 'Beri', 'tberi33@cbsnews.com', 'Male', 'Shuffletag', NULL),
(113, 'Shalne', 'Chaff', 'schaff34@facebook.com', 'Female', 'Blogpad', NULL),
(114, 'Demetri', 'Franceschielli', 'dfranceschielli35@bbb.org', 'Male', 'Teklist', NULL),
(115, 'Jandy', 'Lathwood', 'jlathwood36@earthlink.net', 'Female', 'Zoonder', NULL),
(116, 'Eloisa', 'Bonnefin', 'ebonnefin37@adobe.com', 'Female', 'Yodo', NULL),
(117, 'Paige', 'Finn', 'pfinn38@privacy.gov.au', 'Male', 'Dynazzy', NULL),
(118, 'Gregg', 'Marjanski', 'gmarjanski39@google.it', 'Male', 'Mita', NULL),
(119, 'Davine', 'Hollows', 'dhollows3a@skyrock.com', 'Female', 'Edgeblab', NULL),
(120, 'Claiborne', 'Lared', 'clared3b@apple.com', 'Male', 'Trupe', NULL),
(121, 'Gardy', 'Phippard', 'gphippard3c@harvard.edu', 'Male', 'Realfire', NULL),
(122, 'Moe', 'Ketchell', 'mketchell3d@w3.org', 'Male', 'Meedoo', NULL),
(123, 'Arabela', 'Deniskevich', 'adeniskevich3e@istockphoto.com', 'Female', 'Feedfish', NULL),
(124, 'Elena', 'Cockram', 'ecockram3f@i2i.jp', 'Female', 'Voomm', NULL),
(125, 'Cad', 'Livick', 'clivick3g@clickbank.net', 'Genderqueer', 'Oodoo', NULL),
(126, 'Ewart', 'Leades', 'eleades3h@ehow.com', 'Male', 'Trilith', NULL),
(127, 'Rip', 'Dorkin', 'rdorkin3i@stanford.edu', 'Male', 'Izio', NULL),
(128, 'Stacee', 'McCay', 'smccay3j@deviantart.com', 'Male', 'Flashpoint', NULL),
(129, 'Hoyt', 'Aldhouse', 'haldhouse3k@reference.com', 'Male', 'Reallinks', NULL),
(130, 'Mabel', 'Wood', 'mwood3l@elegantthemes.com', 'Female', 'Linkbuzz', NULL),
(131, 'Hal', 'Rawles', 'hrawles3m@hugedomains.com', 'Male', 'Voonte', NULL),
(132, 'Jethro', 'Castan', 'jcastan3n@t-online.de', 'Male', 'Jetwire', NULL),
(133, 'Meryl', 'Sutcliffe', 'msutcliffe3o@senate.gov', 'Male', 'Skajo', NULL),
(134, 'Maisey', 'Clarricoates', 'mclarricoates3p@walmart.com', 'Non-binary', 'Quaxo', NULL),
(135, 'Andreas', 'Cristofaro', 'acristofaro3q@statcounter.com', 'Male', 'Voonix', NULL),
(136, 'Gregorio', 'Arnley', 'garnley3r@mapquest.com', 'Male', 'Cogibox', NULL),
(137, 'Michel', 'Geldeard', 'mgeldeard3s@ihg.com', 'Male', 'Skivee', NULL),
(138, 'Orren', 'Briddle', 'obriddle3t@eepurl.com', 'Male', 'Rhybox', NULL),
(139, 'Verile', 'Hubeaux', 'vhubeaux3u@tripadvisor.com', 'Female', 'Meevee', NULL),
(140, 'Sydelle', 'Higgoe', 'shiggoe3v@cpanel.net', 'Female', 'Centizu', NULL),
(141, 'Lilla', 'Malling', 'lmalling3w@uol.com.br', 'Non-binary', 'Meevee', NULL),
(142, 'Prue', 'Coal', 'pcoal3x@wikispaces.com', 'Female', 'Janyx', NULL),
(143, 'Olly', 'Pacey', 'opacey3y@netvibes.com', 'Female', 'Twimm', NULL),
(144, 'Adelice', 'Blakelock', 'ablakelock3z@stumbleupon.com', 'Polygender', 'Tagchat', NULL),
(145, 'Gard', 'Bearcroft', 'gbearcroft40@ed.gov', 'Male', 'Photolist', NULL),
(146, 'Hilda', 'Millberg', 'hmillberg41@ocn.ne.jp', 'Female', 'Npath', NULL),
(147, 'Benedikt', 'Dollard', 'bdollard42@bigcartel.com', 'Bigender', 'Oozz', NULL),
(148, 'Gayler', 'Twelftree', 'gtwelftree43@flavors.me', 'Male', 'Kamba', NULL),
(149, 'Jaynell', 'Cadamy', 'jcadamy44@miibeian.gov.cn', 'Female', 'Topicblab', NULL),
(150, 'Tarrah', 'D\'orsay', 'tdorsay45@constantcontact.com', 'Female', 'Mita', NULL),
(151, 'Claudette', 'Grisard', 'cgrisard46@sourceforge.net', 'Female', 'Tagcat', NULL),
(152, 'Eloisa', 'Bourrel', 'ebourrel47@blogspot.com', 'Female', 'Devbug', NULL),
(153, 'Yolanda', 'Spadaro', 'yspadaro48@4shared.com', 'Female', 'Skyba', NULL),
(154, 'Ortensia', 'Dinzey', 'odinzey49@dell.com', 'Female', 'Mynte', NULL),
(155, 'Jarib', 'Tosney', 'jtosney4a@answers.com', 'Male', 'Topicblab', NULL),
(156, 'Noami', 'Kiddey', 'nkiddey4b@google.it', 'Female', 'Topicblab', NULL),
(157, 'Tymon', 'Mosby', 'tmosby4c@flickr.com', 'Male', 'Jaloo', NULL),
(158, 'Hayley', 'Kearney', 'hkearney4d@edublogs.org', 'Female', 'Nlounge', NULL),
(159, 'Andi', 'Whitwam', 'awhitwam4e@china.com.cn', 'Genderqueer', 'Quimm', NULL),
(160, 'Xenos', 'Rittelmeyer', 'xrittelmeyer4f@phpbb.com', 'Genderqueer', 'Blogtags', NULL),
(161, 'Westbrook', 'Normant', 'wnormant4g@hostgator.com', 'Male', 'Buzzshare', NULL),
(162, 'Jonas', 'Yonge', 'jyonge4h@apache.org', 'Male', 'Twitternation', NULL),
(163, 'Aleda', 'Cartman', 'acartman4i@elegantthemes.com', 'Female', 'Voonix', NULL),
(164, 'Josefa', 'Panswick', 'jpanswick4j@flickr.com', 'Female', 'Photobean', NULL),
(165, 'Tripp', 'Pizzey', 'tpizzey4k@jalbum.net', 'Male', 'Riffpath', NULL),
(166, 'Hasty', 'Hopkins', 'hhopkins4l@flickr.com', 'Genderqueer', 'Aibox', NULL),
(167, 'Devlen', 'Van Geffen', 'dvangeffen4m@cam.ac.uk', 'Bigender', 'Muxo', NULL),
(168, 'Juliana', 'MacKartan', 'jmackartan4n@nhs.uk', 'Female', 'Einti', NULL),
(169, 'Candide', 'Duchart', 'cduchart4o@disqus.com', 'Female', 'Gigashots', NULL),
(170, 'Marc', 'Alexandre', 'malexandre4p@engadget.com', 'Male', 'Flashpoint', NULL),
(171, 'Annis', 'Wollrauch', 'awollrauch4q@usnews.com', 'Female', 'Fanoodle', NULL),
(172, 'Rici', 'Littlewood', 'rlittlewood4r@alexa.com', 'Female', 'Skiptube', NULL),
(173, 'Courtney', 'McNirlin', 'cmcnirlin4s@msn.com', 'Female', 'Kamba', NULL),
(174, 'Richie', 'Hayball', 'rhayball4t@un.org', 'Male', 'Omba', NULL),
(175, 'Artemis', 'Darko', 'adarko4u@acquirethisname.com', 'Male', 'Realcube', NULL),
(176, 'Dosi', 'Liversedge', 'dliversedge4v@ameblo.jp', 'Female', 'Mybuzz', NULL),
(177, 'Ransom', 'Mathiot', 'rmathiot4w@sciencedirect.com', 'Male', 'Thoughtbeat', NULL),
(178, 'Melinda', 'Aleksankin', 'maleksankin4x@cmu.edu', 'Female', 'Tambee', NULL),
(179, 'Charlotta', 'Mathe', 'cmathe4y@tumblr.com', 'Female', 'Cogibox', NULL),
(180, 'Cheslie', 'Treker', 'ctreker4z@apple.com', 'Female', 'Rhynyx', NULL),
(181, 'Kimberlee', 'O\'Tierney', 'kotierney50@businesswire.com', 'Female', 'Skipfire', NULL),
(182, 'Leonore', 'Hubber', 'lhubber51@engadget.com', 'Female', 'Buzzster', NULL),
(183, 'Caralie', 'McCloughlin', 'cmccloughlin52@purevolume.com', 'Female', 'Thoughtstorm', NULL),
(184, 'Arabele', 'Skellen', 'askellen53@indiegogo.com', 'Female', 'Skidoo', NULL),
(185, 'Darnell', 'Gudahy', 'dgudahy54@godaddy.com', 'Male', 'Gevee', NULL),
(186, 'Diandra', 'Strangward', 'dstrangward55@archive.org', 'Female', 'Thoughtbeat', NULL),
(187, 'Khalil', 'Skures', 'kskures56@wufoo.com', 'Male', 'Miboo', NULL),
(188, 'Emogene', 'Grealy', 'egrealy57@theglobeandmail.com', 'Female', 'Trudoo', NULL),
(189, 'Skipp', 'Whorlton', 'swhorlton58@wp.com', 'Male', 'Voolith', NULL),
(190, 'Gaby', 'Trump', 'gtrump59@altervista.org', 'Male', 'Browsebug', NULL),
(191, 'Abbey', 'Gookes', 'agookes5a@omniture.com', 'Male', 'Latz', NULL),
(192, 'Camellia', 'Ferber', 'cferber5b@printfriendly.com', 'Female', 'Skinte', NULL),
(193, 'Chase', 'Oakden', 'coakden5c@typepad.com', 'Male', 'BlogXS', NULL),
(194, 'Blinni', 'Mainwaring', 'bmainwaring5d@ihg.com', 'Female', 'Dabfeed', NULL),
(195, 'Alano', 'Webland', 'awebland5e@google.com', 'Male', 'Wikizz', NULL),
(196, 'Cello', 'Ranscomb', 'cranscomb5f@exblog.jp', 'Male', 'Abatz', NULL),
(197, 'Gerri', 'Breche', 'gbreche5g@answers.com', 'Male', 'Tambee', NULL),
(198, 'Willow', 'Feore', 'wfeore5h@imdb.com', 'Female', 'Topiclounge', NULL),
(199, 'Padgett', 'Niblett', 'pniblett5i@ebay.com', 'Male', 'Wordware', NULL),
(200, 'Sammy', 'Hunsworth', 'shunsworth5j@wsj.com', 'Male', 'Centizu', NULL),
(201, 'Alice', 'Fitzmaurice', 'afitzmaurice5k@t.co', 'Female', 'Edgetag', NULL),
(202, 'Wayland', 'Juster', 'wjuster5l@cnet.com', 'Male', 'Zoombeat', NULL),
(203, 'Willette', 'Tyght', 'wtyght5m@squarespace.com', 'Female', 'Eadel', NULL),
(204, 'Judy', 'Jedrzejkiewicz', 'jjedrzejkiewicz5n@bloglines.com', 'Female', 'Ainyx', NULL),
(205, 'Patin', 'Keneford', 'pkeneford5o@mozilla.org', 'Male', 'Teklist', NULL),
(206, 'Hamilton', 'De Souza', 'hdesouza5p@mayoclinic.com', 'Male', 'Eamia', NULL),
(207, 'Elfrida', 'Turrell', 'eturrell5q@ocn.ne.jp', 'Bigender', 'Babbleblab', NULL),
(208, 'Sarette', 'Pye', 'spye5r@hatena.ne.jp', 'Female', 'Dynava', NULL),
(209, 'Shaun', 'Isaksen', 'sisaksen5s@storify.com', 'Male', 'Realblab', NULL),
(210, 'Karry', 'Giraudel', 'kgiraudel5t@delicious.com', 'Female', 'Innotype', NULL),
(211, 'Hilario', 'Sidlow', 'hsidlow5u@nhs.uk', 'Non-binary', 'Mudo', NULL),
(212, 'Ursola', 'Jacobi', 'ujacobi5v@cornell.edu', 'Female', 'Snaptags', NULL),
(213, 'Bev', 'Starkie', 'bstarkie5w@ycombinator.com', 'Female', 'Rhyloo', NULL),
(214, 'Iseabal', 'Headon', 'iheadon5x@tinyurl.com', 'Female', 'Realbridge', NULL),
(215, 'Iorgo', 'Sebright', 'isebright5y@java.com', 'Male', 'Voolia', NULL),
(216, 'Stinky', 'Jacobsen', 'sjacobsen5z@angelfire.com', 'Male', 'Meemm', NULL),
(217, 'Aldon', 'Pitts', 'apitts60@i2i.jp', 'Male', 'Youspan', NULL),
(218, 'Keir', 'Paish', 'kpaish61@mtv.com', 'Male', 'Jamia', NULL),
(219, 'Gaven', 'Onthank', 'gonthank62@amazon.de', 'Male', 'Flipopia', NULL),
(220, 'Allyson', 'Pepler', 'apepler63@mozilla.org', 'Female', 'Jabbersphere', NULL),
(221, 'Robinet', 'Martensen', 'rmartensen64@biglobe.ne.jp', 'Female', 'Realcube', NULL),
(222, 'Gabby', 'Cronk', 'gcronk65@go.com', 'Male', 'Youspan', NULL),
(223, 'Gill', 'MacKim', 'gmackim66@economist.com', 'Male', 'Skipstorm', NULL),
(224, 'Rickey', 'Rollings', 'rrollings67@homestead.com', 'Male', 'Tagpad', NULL),
(225, 'Roana', 'Ciric', 'rciric68@stanford.edu', 'Female', 'Oozz', NULL),
(226, 'Lise', 'Corzor', 'lcorzor69@wikimedia.org', 'Female', 'Jabberstorm', NULL),
(227, 'Abbey', 'Dederick', 'adederick6a@wikispaces.com', 'Genderqueer', 'Topicware', NULL),
(228, 'Amelie', 'Bugby', 'abugby6b@berkeley.edu', 'Female', 'Lajo', NULL),
(229, 'Regan', 'Dayment', 'rdayment6c@dion.ne.jp', 'Female', 'Gabvine', NULL),
(230, 'Devin', 'Edson', 'dedson6d@technorati.com', 'Female', 'Pixonyx', NULL),
(231, 'Rad', 'Roback', 'rroback6e@oracle.com', 'Male', 'Rhynoodle', NULL),
(232, 'Robbert', 'Sidey', 'rsidey6f@home.pl', 'Male', 'Edgetag', NULL),
(233, 'Poppy', 'Meier', 'pmeier6g@mozilla.com', 'Female', 'Avamba', NULL),
(234, 'Vanya', 'Hedin', 'vhedin6h@bloglovin.com', 'Male', 'Yoveo', NULL),
(235, 'Melodie', 'Conibere', 'mconibere6i@google.it', 'Female', 'Podcat', NULL),
(236, 'Skip', 'Sainter', 'ssainter6j@dailymail.co.uk', 'Male', 'Flipbug', NULL),
(237, 'Allister', 'Perton', 'aperton6k@usnews.com', 'Genderqueer', 'Flashdog', NULL),
(238, 'Craggie', 'Cammiemile', 'ccammiemile6l@over-blog.com', 'Male', 'Mynte', NULL),
(239, 'Carolina', 'Lottrington', 'clottrington6m@netvibes.com', 'Female', 'Jatri', NULL),
(240, 'Kimbra', 'Karel', 'kkarel6n@blinklist.com', 'Female', 'Lazzy', NULL),
(241, 'Duky', 'Gallager', 'dgallager6o@constantcontact.com', 'Male', 'Quire', NULL),
(242, 'Clayborne', 'Palffrey', 'cpalffrey6p@auda.org.au', 'Male', 'DabZ', NULL),
(243, 'Zacharia', 'Tandy', 'ztandy6q@squidoo.com', 'Male', 'Tavu', NULL),
(244, 'Dorrie', 'Moggie', 'dmoggie6r@newyorker.com', 'Female', 'Dynabox', NULL),
(245, 'Lothario', 'Terrill', 'lterrill6s@google.com.hk', 'Male', 'Jetpulse', NULL),
(246, 'Danie', 'Aujean', 'daujean6t@hibu.com', 'Male', 'Kwimbee', NULL),
(247, 'Winne', 'Stern', 'wstern6u@dell.com', 'Female', 'Mybuzz', NULL),
(248, 'Ardelle', 'Corder', 'acorder6v@reddit.com', 'Female', 'Feedmix', NULL),
(249, 'Jami', 'Kenneway', 'jkenneway6w@wired.com', 'Female', 'Dynava', NULL),
(250, 'Frannie', 'Trye', 'ftrye6x@fda.gov', 'Female', 'Kwideo', NULL),
(251, 'Nonah', 'Gabrieli', 'ngabrieli6y@parallels.com', 'Female', 'Quire', NULL),
(252, 'Patricia', 'Boissieux', 'pboissieux6z@icq.com', 'Female', 'Feedmix', NULL),
(253, 'Norah', 'Curdell', 'ncurdell70@barnesandnoble.com', 'Female', 'Jaloo', NULL),
(254, 'Johannah', 'Kornilyev', 'jkornilyev71@usatoday.com', 'Female', 'Brainverse', NULL),
(255, 'Dyanne', 'Phidgin', 'dphidgin72@alibaba.com', 'Female', 'Linktype', NULL),
(256, 'Anjela', 'Fadell', 'afadell73@google.com.br', 'Female', 'Twinder', NULL),
(257, 'Leopold', 'True', 'ltrue74@vimeo.com', 'Male', 'Yodo', NULL),
(258, 'Johannah', 'Sutliff', 'jsutliff75@myspace.com', 'Female', 'Youopia', NULL),
(259, 'Ranique', 'Treeby', 'rtreeby76@princeton.edu', 'Female', 'Quinu', NULL),
(260, 'Jareb', 'Alloway', 'jalloway77@free.fr', 'Male', 'Cogilith', NULL),
(261, 'Steward', 'Creavin', 'screavin78@twitter.com', 'Male', 'Twitterbridge', NULL),
(262, 'Sonja', 'Derrick', 'sderrick79@huffingtonpost.com', 'Female', 'Brainsphere', NULL),
(263, 'Patsy', 'Bour', 'pbour7a@nationalgeographic.com', 'Female', 'Eabox', NULL),
(264, 'Baily', 'Shanks', 'bshanks7b@usda.gov', 'Male', 'Devcast', NULL),
(265, 'Westbrooke', 'Garthside', 'wgarthside7c@sitemeter.com', 'Male', 'Flashset', NULL),
(266, 'Theda', 'Dana', 'tdana7d@csmonitor.com', 'Female', 'Quimm', NULL),
(267, 'Jeddy', 'Carrabott', 'jcarrabott7e@reverbnation.com', 'Male', 'Zooveo', NULL),
(268, 'Marcelia', 'Thrower', 'mthrower7f@patch.com', 'Female', 'Mydo', NULL),
(269, 'Karel', 'Faro', 'kfaro7g@cnet.com', 'Male', 'Flipbug', NULL),
(270, 'Haley', 'Barthrup', 'hbarthrup7h@gizmodo.com', 'Male', 'Cogidoo', NULL),
(271, 'Cletus', 'Conochie', 'cconochie7i@biglobe.ne.jp', 'Male', 'Twinder', NULL),
(272, 'Bartolemo', 'Boakes', 'bboakes7j@state.gov', 'Male', 'Devcast', NULL),
(273, 'Hendrik', 'Haestier', 'hhaestier7k@ezinearticles.com', 'Male', 'Jabbersphere', NULL),
(274, 'Travers', 'Stollberger', 'tstollberger7l@uiuc.edu', 'Male', 'Shufflebeat', NULL),
(275, 'Berry', 'Woosnam', 'bwoosnam7m@noaa.gov', 'Female', 'Topicshots', NULL),
(276, 'Cornelius', 'Elvy', 'celvy7n@earthlink.net', 'Male', 'Ainyx', NULL),
(277, 'Kaia', 'Gilston', 'kgilston7o@state.tx.us', 'Female', 'Brightdog', NULL),
(278, 'Ambur', 'Maskell', 'amaskell7p@gravatar.com', 'Genderfluid', 'Flipstorm', NULL),
(279, 'Munroe', 'Grute', 'mgrute7q@berkeley.edu', 'Male', 'LiveZ', NULL),
(280, 'Sharlene', 'Schall', 'sschall7r@icq.com', 'Female', 'Yamia', NULL),
(281, 'Jeramie', 'Jeanneau', 'jjeanneau7s@berkeley.edu', 'Male', 'Meeveo', NULL),
(282, 'Dane', 'Gilliat', 'dgilliat7t@desdev.cn', 'Male', 'Browseblab', NULL),
(283, 'Dunc', 'Goter', 'dgoter7u@marriott.com', 'Male', 'Yodo', NULL),
(284, 'Pasquale', 'Fiveash', 'pfiveash7v@java.com', 'Male', 'Innotype', NULL),
(285, 'Griffith', 'Jollie', 'gjollie7w@nationalgeographic.com', 'Male', 'BlogXS', NULL),
(286, 'Janot', 'Elce', 'jelce7x@archive.org', 'Female', 'Mynte', NULL),
(287, 'Stesha', 'Laybourn', 'slaybourn7y@intel.com', 'Female', 'Centidel', NULL),
(288, 'Cass', 'Minshull', 'cminshull7z@ox.ac.uk', 'Male', 'Feedbug', NULL),
(289, 'Del', 'Pressland', 'dpressland80@gravatar.com', 'Male', 'Gabtype', NULL),
(290, 'Veronike', 'Leggatt', 'vleggatt81@marriott.com', 'Female', 'Kare', NULL),
(291, 'Mitchael', 'Dewdney', 'mdewdney82@prnewswire.com', 'Male', 'Reallinks', NULL),
(292, 'Stavros', 'Kyteley', 'skyteley83@last.fm', 'Male', 'Yambee', NULL),
(293, 'Brenden', 'Khan', 'bkhan84@spotify.com', 'Male', 'Pixonyx', NULL),
(294, 'Angelo', 'Heningham', 'aheningham85@hostgator.com', 'Male', 'Quatz', NULL),
(295, 'Paul', 'Zammitt', 'pzammitt86@furl.net', 'Male', 'Kimia', NULL),
(296, 'Bobbi', 'Flury', 'bflury87@ustream.tv', 'Female', 'Blogtags', NULL),
(297, 'Carolyne', 'Bowland', 'cbowland88@blogger.com', 'Bigender', 'Blogpad', NULL),
(298, 'Jill', 'Tabard', 'jtabard89@nyu.edu', 'Female', 'Layo', NULL),
(299, 'Luke', 'Keddle', 'lkeddle8a@cnbc.com', 'Male', 'Divape', NULL),
(300, 'Michell', 'Perllman', 'mperllman8b@e-recht24.de', 'Female', 'Voolia', NULL),
(301, 'Keane', 'Floyed', 'kfloyed8c@ucoz.com', 'Male', 'Leenti', NULL),
(302, 'Chere', 'Weddell', 'cweddell8d@oaic.gov.au', 'Female', 'Devify', NULL),
(303, 'Saul', 'Cesconi', 'scesconi8e@state.gov', 'Male', 'Fivechat', NULL),
(304, 'Lorraine', 'Ciccarello', 'lciccarello8f@mit.edu', 'Female', 'Yodoo', NULL),
(305, 'Gilberta', 'Carbery', 'gcarbery8g@un.org', 'Female', 'Rhynoodle', NULL),
(306, 'Brook', 'Reed', 'breed8h@nymag.com', 'Male', 'Skyvu', NULL),
(307, 'Dante', 'Ryall', 'dryall8i@oakley.com', 'Male', 'Oyonder', NULL),
(308, 'Gary', 'Chatan', 'gchatan8j@whitehouse.gov', 'Male', 'Voolith', NULL),
(309, 'Pat', 'Matiebe', 'pmatiebe8k@marketwatch.com', 'Female', 'Edgeify', NULL),
(310, 'Truman', 'Newhouse', 'tnewhouse8l@ow.ly', 'Male', 'Skinte', NULL),
(311, 'Quinn', 'Hanbury', 'qhanbury8m@sbwire.com', 'Female', 'Trudeo', NULL),
(312, 'Vick', 'Rainville', 'vrainville8n@nifty.com', 'Male', 'Fliptune', NULL),
(313, 'Olivie', 'Malcolm', 'omalcolm8o@360.cn', 'Female', 'Brightbean', NULL),
(314, 'Clarita', 'Eim', 'ceim8p@microsoft.com', 'Female', 'Mybuzz', NULL),
(315, 'Shanda', 'Allner', 'sallner8q@weibo.com', 'Female', 'Feedmix', NULL),
(316, 'Joey', 'Pratton', 'jpratton8r@toplist.cz', 'Male', 'Oyope', NULL),
(317, 'Vaclav', 'Layman', 'vlayman8s@who.int', 'Male', 'Quatz', NULL),
(318, 'Farrand', 'McGeaney', 'fmcgeaney8t@bing.com', 'Female', 'Kwideo', NULL),
(319, 'Camile', 'Chatelain', 'cchatelain8u@newyorker.com', 'Female', 'Flashdog', NULL),
(320, 'Hendrik', 'Wilsone', 'hwilsone8v@unicef.org', 'Polygender', 'Realcube', NULL),
(321, 'Raimondo', 'Langan', 'rlangan8w@ucla.edu', 'Male', 'Thoughtstorm', NULL),
(322, 'Elie', 'Hovey', 'ehovey8x@vistaprint.com', 'Female', 'Thoughtworks', NULL),
(323, 'Beatriz', 'Bilbie', 'bbilbie8y@goodreads.com', 'Female', 'Realbuzz', NULL),
(324, 'Pat', 'Jeannenet', 'pjeannenet8z@eepurl.com', 'Male', 'Geba', NULL),
(325, 'Clarita', 'Wartonby', 'cwartonby90@cnbc.com', 'Female', 'Vimbo', NULL),
(326, 'Adriaens', 'Yare', 'ayare91@meetup.com', 'Female', 'Skimia', NULL),
(327, 'Ruperta', 'Fullagar', 'rfullagar92@wufoo.com', 'Female', 'Zoomdog', NULL),
(328, 'Sascha', 'Quinnelly', 'squinnelly93@simplemachines.org', 'Male', 'Zoonoodle', NULL),
(329, 'Jacklyn', 'Kull', 'jkull94@nyu.edu', 'Female', 'Youopia', NULL),
(330, 'Annabel', 'Di Dello', 'adidello95@tuttocitta.it', 'Female', 'Dabjam', NULL),
(331, 'Nike', 'Lundon', 'nlundon96@clickbank.net', 'Female', 'Fliptune', NULL),
(332, 'Langston', 'Hanson', 'lhanson97@geocities.jp', 'Male', 'Feedfire', NULL),
(333, 'Warner', 'Goundry', 'wgoundry98@histats.com', 'Male', 'Jetpulse', NULL),
(334, 'Cordey', 'Woodfin', 'cwoodfin99@bandcamp.com', 'Non-binary', 'Zava', NULL),
(335, 'Ashlen', 'Cawley', 'acawley9a@cpanel.net', 'Female', 'Thoughtblab', NULL),
(336, 'Barbe', 'O\'Hickee', 'bohickee9b@zdnet.com', 'Female', 'Aivee', NULL),
(337, 'Sunny', 'Pevreal', 'spevreal9c@foxnews.com', 'Male', 'Wikido', NULL),
(338, 'Tanner', 'Methley', 'tmethley9d@ebay.co.uk', 'Male', 'Meedoo', NULL),
(339, 'Rey', 'Greenley', 'rgreenley9e@earthlink.net', 'Female', 'Demizz', NULL),
(340, 'Florrie', 'Hickenbottom', 'fhickenbottom9f@360.cn', 'Female', 'Trilith', NULL),
(341, 'Bruis', 'Flatley', 'bflatley9g@networkadvertising.org', 'Male', 'LiveZ', NULL),
(342, 'Chloris', 'Tournay', 'ctournay9h@microsoft.com', 'Female', 'Oba', NULL),
(343, 'Kennan', 'Patek', 'kpatek9i@shutterfly.com', 'Male', 'Pixoboo', NULL),
(344, 'Pam', 'Raithbie', 'praithbie9j@ucoz.ru', 'Female', 'Youtags', NULL),
(345, 'York', 'Lawton', 'ylawton9k@amazon.com', 'Non-binary', 'Feednation', NULL),
(346, 'Siffre', 'Cochet', 'scochet9l@soup.io', 'Male', 'Wikibox', NULL),
(347, 'Orlando', 'Draper', 'odraper9m@census.gov', 'Male', 'Aimbo', NULL),
(348, 'Jonas', 'Borton', 'jborton9n@blogspot.com', 'Male', 'Kwimbee', NULL),
(349, 'Anabella', 'Kobieriecki', 'akobieriecki9o@examiner.com', 'Female', 'Ntags', NULL),
(350, 'Val', 'Wraith', 'vwraith9p@businesswire.com', 'Female', 'Abatz', NULL),
(351, 'Kendra', 'Quinet', 'kquinet9q@bluehost.com', 'Female', 'Youtags', NULL),
(352, 'Ursuline', 'Hinkley', 'uhinkley9r@blinklist.com', 'Agender', 'Twitternation', NULL),
(353, 'Noak', 'Oldred', 'noldred9s@free.fr', 'Male', 'BlogXS', NULL),
(354, 'Raffarty', 'Agg', 'ragg9t@sakura.ne.jp', 'Male', 'Blogspan', NULL),
(355, 'Aleen', 'Strippel', 'astrippel9u@smugmug.com', 'Female', 'Eabox', NULL),
(356, 'Nellie', 'Heffernon', 'nheffernon9v@joomla.org', 'Female', 'Fatz', NULL),
(357, 'Othello', 'Morrice', 'omorrice9w@yolasite.com', 'Male', 'Edgeclub', NULL),
(358, 'Andrey', 'Twine', 'atwine9x@comcast.net', 'Male', 'Jabberbean', NULL),
(359, 'Godfree', 'Schroter', 'gschroter9y@paypal.com', 'Genderfluid', 'Dabvine', NULL),
(360, 'Lorrie', 'Trase', 'ltrase9z@cpanel.net', 'Male', 'Zoombeat', NULL),
(361, 'Gusty', 'MacAlister', 'gmacalistera0@tumblr.com', 'Female', 'Demimbu', NULL),
(362, 'Gamaliel', 'Gorden', 'ggordena1@blogger.com', 'Male', 'Blogpad', NULL),
(363, 'Domenico', 'Goldie', 'dgoldiea2@ameblo.jp', 'Male', 'Gabspot', NULL),
(364, 'Beth', 'Coatts', 'bcoattsa3@cornell.edu', 'Female', 'Centidel', NULL),
(365, 'Dennet', 'Farans', 'dfaransa4@feedburner.com', 'Male', 'Tagcat', NULL),
(366, 'Jervis', 'Herreros', 'jherrerosa5@delicious.com', 'Male', 'Devify', NULL),
(367, 'Parker', 'Leabeater', 'pleabeatera6@studiopress.com', 'Male', 'Skyba', NULL),
(368, 'Rafaellle', 'Wemes', 'rwemesa7@newyorker.com', 'Male', 'Topiczoom', NULL),
(369, 'Truda', 'Ivery', 'tiverya8@nba.com', 'Female', 'Yabox', NULL),
(370, 'Nealy', 'Bowcher', 'nbowchera9@discuz.net', 'Polygender', 'Edgeclub', NULL),
(371, 'Biron', 'Ivasyushkin', 'bivasyushkinaa@a8.net', 'Male', 'Voonyx', NULL),
(372, 'Ed', 'Prendergrass', 'eprendergrassab@posterous.com', 'Male', 'Linktype', NULL),
(373, 'Maire', 'Le Franc', 'mlefrancac@psu.edu', 'Female', 'Tagcat', NULL),
(374, 'Rhett', 'Jedraszczyk', 'rjedraszczykad@accuweather.com', 'Male', 'Jabberbean', NULL),
(375, 'Marika', 'Pedersen', 'mpedersenae@canalblog.com', 'Female', 'Realblab', NULL),
(376, 'Lisle', 'Phipard-Shears', 'lphipardshearsaf@weather.com', 'Male', 'Oloo', NULL),
(377, 'Powell', 'Hearnden', 'phearndenag@independent.co.uk', 'Male', 'Quamba', NULL),
(378, 'Giacobo', 'Wickmann', 'gwickmannah@mysql.com', 'Male', 'Jetpulse', NULL),
(379, 'Warren', 'Marcham', 'wmarchamai@rediff.com', 'Male', 'Janyx', NULL),
(380, 'Hartwell', 'Maasze', 'hmaaszeaj@abc.net.au', 'Male', 'Tagfeed', NULL),
(381, 'Jacintha', 'Jacox', 'jjacoxak@gizmodo.com', 'Female', 'Fatz', NULL),
(382, 'Annie', 'Sutherel', 'asutherelal@mashable.com', 'Female', 'Twitterwire', NULL),
(383, 'Moise', 'Strognell', 'mstrognellam@hibu.com', 'Male', 'Centizu', NULL),
(384, 'Corty', 'Alten', 'caltenan@elegantthemes.com', 'Male', 'Geba', NULL),
(385, 'Elinore', 'Cloney', 'ecloneyao@domainmarket.com', 'Female', 'Tagcat', NULL),
(386, 'Benita', 'Cullinan', 'bcullinanap@seattletimes.com', 'Female', 'Twitternation', NULL),
(387, 'Sianna', 'Rassmann', 'srassmannaq@nature.com', 'Female', 'Kanoodle', NULL),
(388, 'Arlen', 'Handasyde', 'ahandasydear@ocn.ne.jp', 'Non-binary', 'Kwideo', NULL),
(389, 'Kayla', 'Withnall', 'kwithnallas@godaddy.com', 'Female', 'Kwimbee', NULL),
(390, 'Rance', 'Dawidsohn', 'rdawidsohnat@joomla.org', 'Male', 'Pixope', NULL),
(391, 'Robbin', 'Hoyle', 'rhoyleau@nature.com', 'Female', 'Tavu', NULL),
(392, 'Bernhard', 'Spragge', 'bspraggeav@prlog.org', 'Male', 'Twimm', NULL),
(393, 'Jeramie', 'Zini', 'jziniaw@geocities.jp', 'Male', 'Voonyx', NULL),
(394, 'Zelig', 'Todeo', 'ztodeoax@webeden.co.uk', 'Male', 'Meemm', NULL),
(395, 'Calida', 'Cartmale', 'ccartmaleay@miitbeian.gov.cn', 'Female', 'Feedfire', NULL),
(396, 'Patricio', 'Gegay', 'pgegayaz@weibo.com', 'Male', 'Muxo', NULL),
(397, 'Burr', 'Tweedy', 'btweedyb0@dell.com', 'Male', 'Yodo', NULL),
(398, 'Thorndike', 'Timmis', 'ttimmisb1@nih.gov', 'Genderqueer', 'Jabbersphere', NULL),
(399, 'Barclay', 'Whitington', 'bwhitingtonb2@mapquest.com', 'Male', 'Zoovu', NULL),
(400, 'Pippa', 'Pleven', 'pplevenb3@addtoany.com', 'Female', 'Centizu', NULL),
(401, 'Courtnay', 'Ennion', 'cennionb4@java.com', 'Male', 'Tagtune', NULL),
(402, 'Moira', 'Cribbins', 'mcribbinsb5@ft.com', 'Female', 'Topiczoom', NULL),
(403, 'Kaylyn', 'Maycey', 'kmayceyb6@booking.com', 'Female', 'Trudoo', NULL),
(404, 'Merlina', 'Pashenkov', 'mpashenkovb7@forbes.com', 'Bigender', 'Topicblab', NULL),
(405, 'Meghan', 'Cotesford', 'mcotesfordb8@myspace.com', 'Polygender', 'Divanoodle', NULL),
(406, 'Patsy', 'Blumfield', 'pblumfieldb9@istockphoto.com', 'Female', 'Youfeed', NULL),
(407, 'Angie', 'Traylen', 'atraylenba@cmu.edu', 'Female', 'Trunyx', NULL),
(408, 'Carmina', 'Greenin', 'cgreeninbb@zdnet.com', 'Female', 'Aimbu', NULL),
(409, 'Karlis', 'Kemmons', 'kkemmonsbc@desdev.cn', 'Bigender', 'Oozz', NULL),
(410, 'Ruthanne', 'Golt', 'rgoltbd@google.com.au', 'Female', 'Eire', NULL),
(411, 'Manya', 'Blennerhassett', 'mblennerhassettbe@vimeo.com', 'Female', 'Gabtune', NULL),
(412, 'Korey', 'Whiteson', 'kwhitesonbf@irs.gov', 'Male', 'Edgeblab', NULL),
(413, 'Darda', 'Venning', 'dvenningbg@tinyurl.com', 'Female', 'Edgetag', NULL),
(414, 'Dale', 'Chell', 'dchellbh@baidu.com', 'Female', 'Riffpedia', NULL),
(415, 'Timmie', 'Gillopp', 'tgilloppbi@odnoklassniki.ru', 'Female', 'Edgeblab', NULL),
(416, 'Colin', 'Penfold', 'cpenfoldbj@mail.ru', 'Male', 'Babbleopia', NULL),
(417, 'Larina', 'Craine', 'lcrainebk@bigcartel.com', 'Female', 'Riffpedia', NULL),
(418, 'Timmi', 'Giffard', 'tgiffardbl@youtube.com', 'Non-binary', 'Rhyzio', NULL),
(419, 'Branden', 'Zemler', 'bzemlerbm@bravesites.com', 'Male', 'Browsezoom', NULL),
(420, 'Mariejeanne', 'Lynagh', 'mlynaghbn@apache.org', 'Female', 'Wikivu', NULL),
(421, 'Beck', 'Beeho', 'bbeehobo@icq.com', 'Male', 'Kazio', NULL),
(422, 'Zonda', 'Scyner', 'zscynerbp@latimes.com', 'Female', 'Zoomdog', NULL),
(423, 'Demetrius', 'Gerler', 'dgerlerbq@sbwire.com', 'Male', 'Kwinu', NULL),
(424, 'Erl', 'Semiras', 'esemirasbr@deviantart.com', 'Male', 'Fatz', NULL),
(425, 'Zuzana', 'McDell', 'zmcdellbs@pagesperso-orange.fr', 'Female', 'Divanoodle', NULL),
(426, 'Aretha', 'Tembey', 'atembeybt@netlog.com', 'Female', 'Edgetag', NULL),
(427, 'May', 'Flemmich', 'mflemmichbu@scribd.com', 'Female', 'Oyoloo', NULL),
(428, 'Dee dee', 'Cabral', 'dcabralbv@redcross.org', 'Female', 'Photobean', NULL),
(429, 'Daphna', 'Zupa', 'dzupabw@discuz.net', 'Female', 'Tagcat', NULL),
(430, 'Perle', 'Wallwork', 'pwallworkbx@sun.com', 'Female', 'Zoovu', NULL),
(431, 'Corena', 'Tinkler', 'ctinklerby@google.co.jp', 'Bigender', 'Rooxo', NULL),
(432, 'Graig', 'Brodway', 'gbrodwaybz@arstechnica.com', 'Male', 'Skivee', NULL),
(433, 'Sydney', 'Gaine of England', 'sgaineofenglandc0@sun.com', 'Female', 'Cogidoo', NULL),
(434, 'Ulberto', 'Grimley', 'ugrimleyc1@apache.org', 'Male', 'Kwilith', NULL),
(435, 'Amalle', 'Brinsden', 'abrinsdenc2@squarespace.com', 'Female', 'Topicblab', NULL),
(436, 'Lorne', 'Brou', 'lbrouc3@shop-pro.jp', 'Male', 'Brightdog', NULL),
(437, 'Rosanne', 'Douthwaite', 'rdouthwaitec4@bloglovin.com', 'Female', 'Oyonder', NULL),
(438, 'Reilly', 'Titmuss', 'rtitmussc5@lulu.com', 'Male', 'Edgewire', NULL),
(439, 'Carlyle', 'Odo', 'codoc6@digg.com', 'Male', 'Linklinks', NULL),
(440, 'Hermione', 'Pargiter', 'hpargiterc7@blogger.com', 'Female', 'Riffpedia', NULL),
(441, 'Madalena', 'Lathom', 'mlathomc8@shinystat.com', 'Female', 'Topiczoom', NULL),
(442, 'Cosetta', 'Colquite', 'ccolquitec9@google.ca', 'Female', 'Vinder', NULL),
(443, 'Rochette', 'Pagen', 'rpagenca@cbc.ca', 'Female', 'Twitterworks', NULL),
(444, 'Gisele', 'Toby', 'gtobycb@nature.com', 'Female', 'Yakidoo', NULL),
(445, 'Maudie', 'Davet', 'mdavetcc@github.com', 'Female', 'Meeveo', NULL),
(446, 'Chandal', 'Lyfe', 'clyfecd@google.fr', 'Female', 'Meejo', NULL),
(447, 'Kathryne', 'Chappelow', 'kchappelowce@prlog.org', 'Female', 'Tavu', NULL),
(448, 'Jacobo', 'Clayhill', 'jclayhillcf@abc.net.au', 'Male', 'Buzzster', NULL),
(449, 'Kelley', 'Assender', 'kassendercg@printfriendly.com', 'Male', 'Wikido', NULL),
(450, 'Ingaborg', 'Pietsma', 'ipietsmach@craigslist.org', 'Female', 'Brainlounge', NULL),
(451, 'Loydie', 'Filipowicz', 'lfilipowiczci@mlb.com', 'Male', 'Meedoo', NULL),
(452, 'Ferrel', 'Seint', 'fseintcj@phoca.cz', 'Male', 'Yombu', NULL),
(453, 'Chad', 'Pashe', 'cpasheck@arstechnica.com', 'Female', 'Twimbo', NULL),
(454, 'Gifford', 'Kulas', 'gkulascl@cyberchimps.com', 'Male', 'Eire', NULL),
(455, 'Nikolaus', 'Davitt', 'ndavittcm@behance.net', 'Male', 'Fatz', NULL),
(456, 'Tadeas', 'Drillingcourt', 'tdrillingcourtcn@usnews.com', 'Male', 'Abata', NULL),
(457, 'Dela', 'Skermer', 'dskermerco@usa.gov', 'Female', 'Kwinu', NULL),
(458, 'Cass', 'Steed', 'csteedcp@cdc.gov', 'Male', 'Realbridge', NULL),
(459, 'Andrew', 'Sprackling', 'aspracklingcq@wisc.edu', 'Male', 'Zazio', NULL),
(460, 'Leanor', 'Froggatt', 'lfroggattcr@wix.com', 'Female', 'Kwinu', NULL),
(461, 'Tally', 'Joontjes', 'tjoontjescs@tiny.cc', 'Male', 'Twitterlist', NULL),
(462, 'Godiva', 'Letts', 'glettsct@wired.com', 'Female', 'Youopia', NULL),
(463, 'Asher', 'Vittet', 'avittetcu@vk.com', 'Male', 'Blogtags', NULL),
(464, 'Rodina', 'Chad', 'rchadcv@sbwire.com', 'Female', 'Skyvu', NULL),
(465, 'Mahmud', 'Hazeman', 'mhazemancw@google.com.hk', 'Male', 'Yodo', NULL),
(466, 'Rodolph', 'Jorin', 'rjorincx@archive.org', 'Male', 'LiveZ', NULL),
(467, 'Jodi', 'O\'Daly', 'jodalycy@va.gov', 'Male', 'Eare', NULL),
(468, 'Edd', 'Kinane', 'ekinanecz@ed.gov', 'Male', 'Eadel', NULL),
(469, 'Abbye', 'Tejada', 'atejadad0@buzzfeed.com', 'Female', 'Vidoo', NULL),
(470, 'Antonetta', 'McCarney', 'amccarneyd1@smugmug.com', 'Female', 'Yoveo', NULL),
(471, 'Korie', 'Crichmer', 'kcrichmerd2@shutterfly.com', 'Female', 'Babbleblab', NULL),
(472, 'Sher', 'Drivers', 'sdriversd3@vkontakte.ru', 'Female', 'Buzzshare', NULL),
(473, 'Robby', 'Houtby', 'rhoutbyd4@dion.ne.jp', 'Female', 'Lazz', NULL),
(474, 'Fredrika', 'Songust', 'fsongustd5@umn.edu', 'Female', 'Kaymbo', NULL),
(475, 'Benoit', 'Cleife', 'bcleifed6@harvard.edu', 'Male', 'Wikibox', NULL),
(476, 'Sylvester', 'Sargant', 'ssargantd7@skype.com', 'Male', 'Wordify', NULL),
(477, 'Hurley', 'Shawyers', 'hshawyersd8@macromedia.com', 'Male', 'Dablist', NULL),
(478, 'Jeanine', 'Beecker', 'jbeeckerd9@cisco.com', 'Genderqueer', 'Devify', NULL),
(479, 'Regen', 'See', 'rseeda@plala.or.jp', 'Male', 'Gabspot', NULL),
(480, 'Merrill', 'Gerring', 'mgerringdb@dailymotion.com', 'Female', 'Dabfeed', NULL),
(481, 'Murielle', 'MacDuff', 'mmacduffdc@dropbox.com', 'Female', 'Gabtune', NULL),
(482, 'Giraldo', 'Sparkwill', 'gsparkwilldd@networksolutions.com', 'Male', 'Bluejam', NULL),
(483, 'Abe', 'Christaeas', 'achristaeasde@harvard.edu', 'Male', 'Yakitri', NULL),
(484, 'Cissy', 'Heads', 'cheadsdf@nymag.com', 'Female', 'Topicware', NULL),
(485, 'Torin', 'Meaking', 'tmeakingdg@aboutads.info', 'Male', 'Abatz', NULL),
(486, 'Keeley', 'Willson', 'kwillsondh@foxnews.com', 'Genderqueer', 'Trilith', NULL),
(487, 'Blair', 'Kiljan', 'bkiljandi@cnet.com', 'Bigender', 'Feednation', NULL),
(488, 'Tamarah', 'Guitt', 'tguittdj@networkadvertising.org', 'Genderqueer', 'Jabbertype', NULL),
(489, 'Peder', 'Kmietsch', 'pkmietschdk@eepurl.com', 'Male', 'Blogtag', NULL),
(490, 'Rogers', 'Silvers', 'rsilversdl@indiegogo.com', 'Male', 'Jaloo', NULL),
(491, 'Antonietta', 'Softley', 'asoftleydm@usda.gov', 'Female', 'Edgeclub', NULL),
(492, 'Bruis', 'McIlherran', 'bmcilherrandn@xing.com', 'Male', 'Mybuzz', NULL),
(493, 'Stephani', 'Simanenko', 'ssimanenkodo@symantec.com', 'Agender', 'Shuffletag', NULL),
(494, 'Isiahi', 'Hartless', 'ihartlessdp@hostgator.com', 'Male', 'Gigaclub', NULL),
(495, 'Eduard', 'Ridsdale', 'eridsdaledq@prlog.org', 'Male', 'Oyoloo', NULL),
(496, 'Reiko', 'Clarridge', 'rclarridgedr@dion.ne.jp', 'Female', 'Tagcat', NULL),
(497, 'Whitney', 'Wherrett', 'wwherrettds@businessweek.com', 'Male', 'Feedspan', NULL),
(498, 'Nikolia', 'McClean', 'nmccleandt@github.com', 'Female', 'Talane', NULL),
(499, 'Vergil', 'Brammer', 'vbrammerdu@cyberchimps.com', 'Male', 'Linklinks', NULL),
(500, 'Chiquita', 'Grigoire', 'cgrigoiredv@newsvine.com', 'Female', 'Browsebug', NULL),
(501, 'Humfrey', 'McLeese', 'hmcleesedw@nydailynews.com', 'Male', 'Babbleset', NULL),
(502, 'Dari', 'Hards', 'dhardsdx@spotify.com', 'Female', 'Buzzdog', NULL),
(503, 'Agatha', 'Shalliker', 'ashallikerdy@last.fm', 'Female', 'Twimbo', NULL),
(504, 'Olivette', 'Phebee', 'ophebeedz@jalbum.net', 'Female', 'Zoonoodle', NULL),
(505, 'Myrtice', 'Lante', 'mlantee0@businesswire.com', 'Female', 'Aimbu', NULL),
(506, 'Dorey', 'Curtain', 'dcurtaine1@springer.com', 'Male', 'Centizu', NULL),
(507, 'Denney', 'Flaubert', 'dflauberte2@people.com.cn', 'Male', 'Vipe', NULL),
(508, 'Wren', 'Broxap', 'wbroxape3@slideshare.net', 'Female', 'Topiclounge', NULL),
(509, 'Maximilien', 'Lant', 'mlante4@weibo.com', 'Male', 'Jatri', NULL),
(510, 'Elke', 'Stollberg', 'estollberge5@sohu.com', 'Female', 'Twitternation', NULL),
(511, 'Joann', 'Beeckx', 'jbeeckxe6@friendfeed.com', 'Female', 'Thoughtstorm', NULL),
(512, 'Nelia', 'Cakebread', 'ncakebreade7@fc2.com', 'Female', 'Quaxo', NULL),
(513, 'Tammara', 'Sor', 'tsore8@deviantart.com', 'Female', 'Linkbuzz', NULL),
(514, 'De', 'Fowle', 'dfowlee9@un.org', 'Polygender', 'Skinder', NULL),
(515, 'Christan', 'Tomaello', 'ctomaelloea@techcrunch.com', 'Female', 'Yodoo', NULL),
(516, 'Binky', 'Old', 'boldeb@cnbc.com', 'Male', 'Wordtune', NULL),
(517, 'Noelle', 'Nattrass', 'nnattrassec@1und1.de', 'Female', 'Agivu', NULL),
(518, 'Clementine', 'Twatt', 'ctwatted@census.gov', 'Bigender', 'Skilith', NULL),
(519, 'Cobby', 'Pirelli', 'cpirelliee@dailymotion.com', 'Male', 'Feedfish', NULL),
(520, 'Gary', 'Oloshkin', 'goloshkinef@latimes.com', 'Male', 'Photolist', NULL),
(521, 'Euphemia', 'Cady', 'ecadyeg@craigslist.org', 'Female', 'Trunyx', NULL),
(522, 'Blake', 'Joiner', 'bjoinereh@xrea.com', 'Female', 'Tagchat', NULL),
(523, 'Dugald', 'Caine', 'dcaineei@issuu.com', 'Male', 'Zazio', NULL),
(524, 'Tore', 'Caghy', 'tcaghyej@usatoday.com', 'Male', 'Twitterwire', NULL),
(525, 'Joellyn', 'McAllen', 'jmcallenek@ucsd.edu', 'Female', 'Jaxnation', NULL),
(526, 'Aprilette', 'Greenhaugh', 'agreenhaughel@prweb.com', 'Female', 'Browseblab', NULL),
(527, 'Manny', 'Grebert', 'mgrebertem@reference.com', 'Non-binary', 'Youtags', NULL),
(528, 'Lurleen', 'Brumbye', 'lbrumbyeen@globo.com', 'Female', 'Pixonyx', NULL),
(529, 'Liv', 'Goodee', 'lgoodeeeo@irs.gov', 'Female', 'Livefish', NULL),
(530, 'Reginald', 'Wittrington', 'rwittringtonep@zimbio.com', 'Genderfluid', 'Mita', NULL),
(531, 'Dalt', 'Cady', 'dcadyeq@accuweather.com', 'Male', 'Browsebug', NULL),
(532, 'Teodora', 'Hansford', 'thansforder@nbcnews.com', 'Female', 'Skyba', NULL),
(533, 'Tatiania', 'Le Gassick', 'tlegassickes@psu.edu', 'Female', 'Brainverse', NULL),
(534, 'Rabi', 'Guirard', 'rguirardet@businessweek.com', 'Male', 'Livepath', NULL),
(535, 'Sashenka', 'Gever', 'sgevereu@independent.co.uk', 'Female', 'Thoughtbeat', NULL),
(536, 'Schuyler', 'Duffett', 'sduffettev@economist.com', 'Male', 'Rhynyx', NULL),
(537, 'Langsdon', 'Kippin', 'lkippinew@hexun.com', 'Male', 'Yabox', NULL),
(538, 'Skippy', 'Shellard', 'sshellardex@pagesperso-orange.fr', 'Male', 'Viva', NULL),
(539, 'Fredi', 'Tesche', 'ftescheey@flavors.me', 'Female', 'Agimba', NULL),
(540, 'Sander', 'Severs', 'sseversez@google.es', 'Male', 'Skalith', NULL),
(541, 'Kingsley', 'Nisuis', 'knisuisf0@harvard.edu', 'Male', 'Ooba', NULL),
(542, 'Ragnar', 'Leake', 'rleakef1@narod.ru', 'Male', 'Topicstorm', NULL),
(543, 'Jamey', 'Krzyzowski', 'jkrzyzowskif2@angelfire.com', 'Male', 'Jabbertype', NULL),
(544, 'Shannon', 'Prophet', 'sprophetf3@oracle.com', 'Male', 'Jabbertype', NULL),
(545, 'Laurena', 'Marzello', 'lmarzellof4@loc.gov', 'Female', 'Centizu', NULL),
(546, 'Isabelita', 'Allery', 'ialleryf5@statcounter.com', 'Female', 'Eire', NULL),
(547, 'Athene', 'Daintith', 'adaintithf6@parallels.com', 'Female', 'Katz', NULL),
(548, 'Kamilah', 'McCrackan', 'kmccrackanf7@uiuc.edu', 'Female', 'Voolia', NULL),
(549, 'Gib', 'Vivian', 'gvivianf8@goodreads.com', 'Polygender', 'Npath', NULL),
(550, 'Sile', 'Farre', 'sfarref9@reference.com', 'Female', 'Camimbo', NULL),
(551, 'Ezequiel', 'Deport', 'edeportfa@loc.gov', 'Male', 'Voolith', NULL),
(552, 'Ardelia', 'Marjanski', 'amarjanskifb@businessweek.com', 'Female', 'Brainsphere', NULL),
(553, 'Rora', 'Robyns', 'rrobynsfc@europa.eu', 'Female', 'Babbleopia', NULL),
(554, 'Vera', 'Allred', 'vallredfd@china.com.cn', 'Female', 'Demizz', NULL),
(555, 'Baxie', 'Fawdrie', 'bfawdriefe@google.cn', 'Male', 'Devcast', NULL),
(556, 'Paddie', 'Fullerton', 'pfullertonff@google.nl', 'Male', 'Fivechat', NULL),
(557, 'Kimbra', 'Spalls', 'kspallsfg@nih.gov', 'Female', 'Gabspot', NULL),
(558, 'Lurette', 'Hanretty', 'lhanrettyfh@so-net.ne.jp', 'Female', 'Zooxo', NULL),
(559, 'Helga', 'Griffiths', 'hgriffithsfi@hp.com', 'Female', 'Rhynoodle', NULL),
(560, 'Blithe', 'Poone', 'bpoonefj@state.tx.us', 'Female', 'Livetube', NULL),
(561, 'Chlo', 'Revelle', 'crevellefk@fc2.com', 'Female', 'Pixonyx', NULL),
(562, 'Toby', 'Haggerwood', 'thaggerwoodfl@auda.org.au', 'Male', 'Rooxo', NULL),
(563, 'Luz', 'Boyle', 'lboylefm@disqus.com', 'Female', 'Realmix', NULL),
(564, 'Phylys', 'Poker', 'ppokerfn@state.tx.us', 'Female', 'Skidoo', NULL),
(565, 'Callida', 'Vasilchenko', 'cvasilchenkofo@hubpages.com', 'Genderfluid', 'Wordware', NULL),
(566, 'Derron', 'Rozier', 'drozierfp@sakura.ne.jp', 'Male', 'Yodo', NULL),
(567, 'Jyoti', 'Jeffery', 'jjefferyfq@webnode.com', 'Female', 'InnoZ', NULL),
(568, 'Staffard', 'Sellwood', 'ssellwoodfr@statcounter.com', 'Male', 'Twitterwire', NULL),
(569, 'Jonell', 'Tivnan', 'jtivnanfs@state.tx.us', 'Female', 'Jabberstorm', NULL),
(570, 'Korie', 'Rudolf', 'krudolfft@imgur.com', 'Female', 'Livetube', NULL),
(571, 'Erich', 'Hartup', 'ehartupfu@360.cn', 'Male', 'Layo', NULL),
(572, 'Leif', 'Arndt', 'larndtfv@jalbum.net', 'Male', 'Skipstorm', NULL),
(573, 'Giorgi', 'Dilkes', 'gdilkesfw@usda.gov', 'Male', 'Ainyx', NULL),
(574, 'Angelico', 'Charter', 'acharterfx@technorati.com', 'Male', 'Jabberstorm', NULL),
(575, 'Roselle', 'Camacho', 'rcamachofy@boston.com', 'Female', 'Quire', NULL),
(576, 'Buck', 'Agott', 'bagottfz@unblog.fr', 'Male', 'Pixonyx', NULL),
(577, 'Zane', 'Georgot', 'zgeorgotg0@chron.com', 'Male', 'Yamia', NULL),
(578, 'Yalonda', 'Ferran', 'yferrang1@cyberchimps.com', 'Female', 'Gabcube', NULL),
(579, 'Kelcie', 'Popescu', 'kpopescug2@woothemes.com', 'Female', 'Dynava', NULL),
(580, 'Terri', 'Allchorne', 'tallchorneg3@bluehost.com', 'Male', 'Photobug', NULL),
(581, 'Grace', 'Brickell', 'gbrickellg4@businesswire.com', 'Male', 'Cogilith', NULL),
(582, 'Elvin', 'Stroder', 'estroderg5@yandex.ru', 'Male', 'Trilith', NULL),
(583, 'Aila', 'Corday', 'acordayg6@skyrock.com', 'Non-binary', 'Aibox', NULL),
(584, 'Luis', 'Pook', 'lpookg7@samsung.com', 'Male', 'Demimbu', NULL),
(585, 'Collette', 'Daniells', 'cdaniellsg8@cornell.edu', 'Female', 'Oloo', NULL),
(586, 'Elicia', 'Braidford', 'ebraidfordg9@chron.com', 'Female', 'Twitterbridge', NULL),
(587, 'Carey', 'Seawright', 'cseawrightga@wp.com', 'Male', 'Edgewire', NULL),
(588, 'Arlena', 'Stiant', 'astiantgb@cam.ac.uk', 'Genderqueer', 'Rhyzio', NULL),
(589, 'Alfredo', 'MacGebenay', 'amacgebenaygc@privacy.gov.au', 'Male', 'Twitterworks', NULL),
(590, 'Inigo', 'Angove', 'iangovegd@multiply.com', 'Male', 'Trunyx', NULL),
(591, 'Dag', 'McQuirk', 'dmcquirkge@shinystat.com', 'Male', 'Mynte', NULL),
(592, 'Kyla', 'Reinbech', 'kreinbechgf@yellowbook.com', 'Non-binary', 'Feedfire', NULL),
(593, 'Noelle', 'Covelle', 'ncovellegg@prweb.com', 'Female', 'Zazio', NULL),
(594, 'Alia', 'Torricella', 'atorricellagh@etsy.com', 'Female', 'Babbleset', NULL),
(595, 'Ali', 'Nitti', 'anittigi@oaic.gov.au', 'Female', 'Zoombox', NULL),
(596, 'Melinde', 'Trevorrow', 'mtrevorrowgj@1und1.de', 'Female', 'Realfire', NULL),
(597, 'Cherrita', 'Nisby', 'cnisbygk@senate.gov', 'Female', 'Topicware', NULL),
(598, 'Eartha', 'Etchingham', 'eetchinghamgl@economist.com', 'Female', 'Feedfish', NULL),
(599, 'Gerrard', 'Keer', 'gkeergm@usa.gov', 'Male', 'Devshare', NULL),
(600, 'Willa', 'Gerson', 'wgersongn@infoseek.co.jp', 'Female', 'Meevee', NULL),
(601, 'Cornell', 'Odeson', 'codesongo@hud.gov', 'Agender', 'Reallinks', NULL),
(602, 'Maurizia', 'Butlin', 'mbutlingp@vinaora.com', 'Female', 'Photolist', NULL),
(603, 'Zared', 'Brabbins', 'zbrabbinsgq@pinterest.com', 'Male', 'Roodel', NULL),
(604, 'Siobhan', 'Sketh', 'sskethgr@tripadvisor.com', 'Female', 'Twimm', NULL),
(605, 'Dallon', 'Angier', 'dangiergs@dailymail.co.uk', 'Male', 'Chatterpoint', NULL),
(606, 'Beitris', 'Rainbow', 'brainbowgt@aboutads.info', 'Female', 'Browsedrive', NULL),
(607, 'Briggs', 'Emmanuele', 'bemmanuelegu@jiathis.com', 'Male', 'Kwideo', NULL),
(608, 'Lari', 'Wand', 'lwandgv@npr.org', 'Female', 'Dynabox', NULL),
(609, 'Silvain', 'Le Sieur', 'slesieurgw@biblegateway.com', 'Male', 'Wordtune', NULL),
(610, 'Ursola', 'Rickwood', 'urickwoodgx@paypal.com', 'Polygender', 'Fatz', NULL),
(611, 'Gaby', 'Freckingham', 'gfreckinghamgy@blogspot.com', 'Male', 'Geba', NULL),
(612, 'Pietra', 'Reckus', 'preckusgz@webeden.co.uk', 'Female', 'Jaloo', NULL),
(613, 'Manfred', 'Ferreras', 'mferrerash0@uiuc.edu', 'Male', 'Feedspan', NULL),
(614, 'Hadrian', 'Golston', 'hgolstonh1@slate.com', 'Male', 'Wordware', NULL),
(615, 'Kara-lynn', 'Brignall', 'kbrignallh2@naver.com', 'Female', 'Quinu', NULL),
(616, 'Christophe', 'Deverock', 'cdeverockh3@opera.com', 'Male', 'Rhyzio', NULL),
(617, 'Verine', 'Abrahmovici', 'vabrahmovicih4@cpanel.net', 'Female', 'Oyoba', NULL),
(618, 'Araldo', 'Christoforou', 'achristoforouh5@storify.com', 'Male', 'Voonyx', NULL),
(619, 'Shanan', 'Pease', 'speaseh6@unesco.org', 'Male', 'Realcube', NULL),
(620, 'Francisca', 'Fleisch', 'ffleischh7@xinhuanet.com', 'Female', 'Oyonder', NULL),
(621, 'Wade', 'Buckthorp', 'wbuckthorph8@usa.gov', 'Male', 'Eabox', NULL),
(622, 'Dorisa', 'Wigelsworth', 'dwigelsworthh9@hhs.gov', 'Female', 'Skyble', NULL),
(623, 'Fremont', 'Izhak', 'fizhakha@paypal.com', 'Male', 'Fiveclub', NULL),
(624, 'Wilbur', 'Longmead', 'wlongmeadhb@facebook.com', 'Male', 'Thoughtworks', NULL),
(625, 'Falkner', 'Struther', 'fstrutherhc@amazon.co.jp', 'Male', 'Feedspan', NULL),
(626, 'Dante', 'Waltho', 'dwalthohd@cargocollective.com', 'Male', 'Linklinks', NULL),
(627, 'Jeramie', 'Rigardeau', 'jrigardeauhe@4shared.com', 'Male', 'Kanoodle', NULL),
(628, 'Skelly', 'Gocher', 'sgocherhf@shareasale.com', 'Male', 'Devpulse', NULL),
(629, 'Toma', 'Aspinwall', 'taspinwallhg@princeton.edu', 'Female', 'Fadeo', NULL),
(630, 'Augustus', 'Lascelles', 'alascelleshh@state.tx.us', 'Male', 'Gabspot', NULL),
(631, 'Kyle', 'O\'Mailey', 'komaileyhi@ucla.edu', 'Male', 'Zoomlounge', NULL),
(632, 'Ibby', 'Van Driel', 'ivandrielhj@oaic.gov.au', 'Female', 'Jazzy', NULL),
(633, 'Briggs', 'Brompton', 'bbromptonhk@google.fr', 'Male', 'Midel', NULL),
(634, 'Winnah', 'Lowry', 'wlowryhl@omniture.com', 'Female', 'Nlounge', NULL),
(635, 'Godfree', 'Sibille', 'gsibillehm@discovery.com', 'Male', 'Zoomzone', NULL),
(636, 'Culver', 'Zorzoni', 'czorzonihn@java.com', 'Male', 'Fliptune', NULL),
(637, 'Morse', 'Roggieri', 'mroggieriho@photobucket.com', 'Male', 'Voomm', NULL),
(638, 'Minny', 'Kirtley', 'mkirtleyhp@msn.com', 'Female', 'Oodoo', NULL),
(639, 'Delora', 'Brikner', 'dbriknerhq@free.fr', 'Female', 'Dabtype', NULL),
(640, 'Skipp', 'Carwithen', 'scarwithenhr@clickbank.net', 'Male', 'Riffwire', NULL);
INSERT INTO `clientes` (`id`, `nome`, `sobrenome`, `email`, `genero`, `nomeEmpresa`, `idComprovante`) VALUES
(641, 'Tabor', 'Limpenny', 'tlimpennyhs@wordpress.com', 'Male', 'Plambee', NULL),
(642, 'Fianna', 'Delgardillo', 'fdelgardilloht@issuu.com', 'Female', 'Mydo', NULL),
(643, 'Ennis', 'Spilsted', 'espilstedhu@fotki.com', 'Male', 'Aimbo', NULL),
(644, 'Lyndsie', 'Aldrick', 'laldrickhv@xinhuanet.com', 'Female', 'Fivespan', NULL),
(645, 'Rosalie', 'Sprakes', 'rsprakeshw@npr.org', 'Female', 'Yoveo', NULL),
(646, 'Veronika', 'Troni', 'vtronihx@symantec.com', 'Female', 'Realcube', NULL),
(647, 'Artemas', 'Gillum', 'agillumhy@indiegogo.com', 'Male', 'Twimm', NULL),
(648, 'Shaine', 'Whyke', 'swhykehz@geocities.jp', 'Female', 'Livepath', NULL),
(649, 'Raleigh', 'Hallbird', 'rhallbirdi0@godaddy.com', 'Male', 'Dabvine', NULL),
(650, 'Hugibert', 'Godlee', 'hgodleei1@cmu.edu', 'Male', 'Tekfly', NULL),
(651, 'Ivie', 'Burnsall', 'iburnsalli2@ycombinator.com', 'Female', 'Mydo', NULL),
(652, 'Jessie', 'Piers', 'jpiersi3@topsy.com', 'Male', 'Linklinks', NULL),
(653, 'Ginny', 'Shakespeare', 'gshakespearei4@1und1.de', 'Female', 'Oyondu', NULL),
(654, 'Gerti', 'Thody', 'gthodyi5@nba.com', 'Female', 'Tavu', NULL),
(655, 'Shaylynn', 'Domelow', 'sdomelowi6@ft.com', 'Female', 'Skilith', NULL),
(656, 'Pierre', 'Tomaselli', 'ptomasellii7@archive.org', 'Male', 'Geba', NULL),
(657, 'Sansone', 'Scolding', 'sscoldingi8@chron.com', 'Male', 'Wikivu', NULL),
(658, 'Duffy', 'Poles', 'dpolesi9@dedecms.com', 'Male', 'InnoZ', NULL),
(659, 'Greer', 'Lantiff', 'glantiffia@tripod.com', 'Female', 'Skyba', NULL),
(660, 'Elia', 'Lamputt', 'elamputtib@com.com', 'Agender', 'Quimba', NULL),
(661, 'Robb', 'Swanson', 'rswansonic@com.com', 'Male', 'Pixonyx', NULL),
(662, 'Herc', 'Blakeman', 'hblakemanid@baidu.com', 'Male', 'Meeveo', NULL),
(663, 'Tracy', 'Richardson', 'trichardsonie@devhub.com', 'Male', 'Yamia', NULL),
(664, 'Eb', 'Keijser', 'ekeijserif@geocities.com', 'Bigender', 'Dablist', NULL),
(665, 'Paulina', 'Burgoin', 'pburgoinig@list-manage.com', 'Female', 'Skiba', NULL),
(666, 'Annecorinne', 'Kuhndel', 'akuhndelih@wired.com', 'Female', 'Shufflester', NULL),
(667, 'Derek', 'Budik', 'dbudikii@example.com', 'Male', 'Viva', NULL),
(668, 'Loree', 'Maddy', 'lmaddyij@alexa.com', 'Female', 'Talane', NULL),
(669, 'Urbanus', 'McEnhill', 'umcenhillik@ed.gov', 'Male', 'Thoughtworks', NULL),
(670, 'Eduard', 'Tremouille', 'etremouilleil@huffingtonpost.com', 'Male', 'Fadeo', NULL),
(671, 'Roselia', 'Pezey', 'rpezeyim@flickr.com', 'Female', 'Voomm', NULL),
(672, 'Catlaina', 'MacGahey', 'cmacgaheyin@dedecms.com', 'Female', 'Katz', NULL),
(673, 'Corena', 'Minihan', 'cminihanio@baidu.com', 'Female', 'Skipstorm', NULL),
(674, 'Antonia', 'Derrell', 'aderrellip@discovery.com', 'Female', 'Skajo', NULL),
(675, 'Anabella', 'Demschke', 'ademschkeiq@yahoo.com', 'Female', 'Oyoba', NULL),
(676, 'Ailina', 'Banbrook', 'abanbrookir@phoca.cz', 'Agender', 'Oyoloo', NULL),
(677, 'Aloysius', 'Whybray', 'awhybrayis@microsoft.com', 'Male', 'Realfire', NULL),
(678, 'Daniel', 'Room', 'droomit@pcworld.com', 'Male', 'Zoombeat', NULL),
(679, 'Zechariah', 'Crisp', 'zcrispiu@ehow.com', 'Male', 'Agimba', NULL),
(680, 'Miltie', 'Neesam', 'mneesamiv@shinystat.com', 'Male', 'Fiveclub', NULL),
(681, 'Nye', 'Dainter', 'ndainteriw@youtube.com', 'Male', 'Flashdog', NULL),
(682, 'Myrtle', 'Dalman', 'mdalmanix@vk.com', 'Female', 'Buzzster', NULL),
(683, 'Ingemar', 'Pinyon', 'ipinyoniy@patch.com', 'Male', 'Livetube', NULL),
(684, 'Leupold', 'Painten', 'lpainteniz@wikimedia.org', 'Male', 'Fatz', NULL),
(685, 'Olivie', 'Tieman', 'otiemanj0@bing.com', 'Female', 'Oodoo', NULL),
(686, 'Neile', 'MacWhirter', 'nmacwhirterj1@so-net.ne.jp', 'Female', 'Quimm', NULL),
(687, 'Riannon', 'Millmore', 'rmillmorej2@umich.edu', 'Female', 'Meejo', NULL),
(688, 'Davidde', 'Liverock', 'dliverockj3@nps.gov', 'Male', 'Innojam', NULL),
(689, 'Burr', 'Rowley', 'browleyj4@elegantthemes.com', 'Male', 'Divape', NULL),
(690, 'Robby', 'Huntly', 'rhuntlyj5@weather.com', 'Male', 'Avavee', NULL),
(691, 'Cybil', 'Lunnon', 'clunnonj6@admin.ch', 'Female', 'Trilia', NULL),
(692, 'Darcy', 'Heinig', 'dheinigj7@merriam-webster.com', 'Polygender', 'Linkbuzz', NULL),
(693, 'Delores', 'Sorbey', 'dsorbeyj8@mapquest.com', 'Female', 'Thoughtbeat', NULL),
(694, 'Pippo', 'Anchor', 'panchorj9@is.gd', 'Male', 'Ooba', NULL),
(695, 'Waverly', 'Khilkov', 'wkhilkovja@altervista.org', 'Male', 'Oyope', NULL),
(696, 'Koralle', 'Hardinge', 'khardingejb@dyndns.org', 'Female', 'Livepath', NULL),
(697, 'Beilul', 'Gossington', 'bgossingtonjc@epa.gov', 'Bigender', 'Trilia', NULL),
(698, 'Baily', 'Tethcote', 'btethcotejd@indiegogo.com', 'Male', 'Blogtags', NULL),
(699, 'Bernard', 'Bottrell', 'bbottrellje@merriam-webster.com', 'Male', 'Layo', NULL),
(700, 'Ramonda', 'Spurryer', 'rspurryerjf@hhs.gov', 'Female', 'Flashset', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comprovantedetransacao`
--

CREATE TABLE `comprovantedetransacao` (
  `id` int(11) NOT NULL,
  `dataEmissao` date DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `destinatario` varchar(45) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `dataRecepcao` datetime DEFAULT NULL,
  `cpfRemetente` bigint(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `numeroConta` bigint(20) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `emprestimo` varchar(45) DEFAULT NULL,
  `saldoConta` float DEFAULT NULL,
  `poupancaCorrente` binary(1) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `fluxoDeSaldo` float DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `controlefinanceiro`
--

CREATE TABLE `controlefinanceiro` (
  `id` int(11) NOT NULL,
  `entrada` float DEFAULT NULL,
  `saida` float DEFAULT NULL,
  `lucro` float DEFAULT NULL,
  `perdas` float DEFAULT NULL,
  `doacoes` float DEFAULT NULL,
  `investimentos` float DEFAULT NULL,
  `idMovimento` int(11) DEFAULT NULL,
  `idControle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emissaoclientes`
--

CREATE TABLE `emissaoclientes` (
  `idEmissaoClientes` int(11) NOT NULL,
  `idEmissao` int(11) DEFAULT NULL,
  `idClientes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emissaodeextratos`
--

CREATE TABLE `emissaodeextratos` (
  `idEmissao` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  `dataDaEmissao` date DEFAULT NULL,
  `infoGerais` varchar(45) DEFAULT NULL,
  `remetente` varchar(45) DEFAULT NULL,
  `cpfDoCliente` bigint(14) DEFAULT NULL,
  `assinaturaResponsavel` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fluxo`
--

CREATE TABLE `fluxo` (
  `idFluxo` int(11) NOT NULL,
  `idMovimentacoes` int(11) DEFAULT NULL,
  `idClientes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentcoes`
--

CREATE TABLE `movimentcoes` (
  `idConta` int(11) NOT NULL,
  `idTransferencia` int(11) DEFAULT NULL,
  `iddeposito` int(11) DEFAULT NULL,
  `idSaques` int(11) DEFAULT NULL,
  `valorTransferencia` float DEFAULT NULL,
  `valorDeposito` float DEFAULT NULL,
  `valorSaques` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `idCartao` int(11) DEFAULT NULL,
  `idClientes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agencias`
--
ALTER TABLE `agencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCmpTransacao` (`idCmpTransacao`);

--
-- Índices para tabela `cartao`
--
ALTER TABLE `cartao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `comprovantedetransacao`
--
ALTER TABLE `comprovantedetransacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `conta`
--
ALTER TABLE `conta`
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `controlefinanceiro`
--
ALTER TABLE `controlefinanceiro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `emissaoclientes`
--
ALTER TABLE `emissaoclientes`
  ADD PRIMARY KEY (`idEmissaoClientes`),
  ADD KEY `idClientes` (`idClientes`),
  ADD KEY `idEmissao` (`idEmissao`);

--
-- Índices para tabela `emissaodeextratos`
--
ALTER TABLE `emissaodeextratos`
  ADD PRIMARY KEY (`idEmissao`);

--
-- Índices para tabela `fluxo`
--
ALTER TABLE `fluxo`
  ADD PRIMARY KEY (`idFluxo`),
  ADD KEY `idMovimentacoes` (`idMovimentacoes`),
  ADD KEY `idClientes` (`idClientes`);

--
-- Índices para tabela `movimentcoes`
--
ALTER TABLE `movimentcoes`
  ADD PRIMARY KEY (`idConta`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCartao` (`idCartao`),
  ADD KEY `idClientes` (`idClientes`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agencias`
--
ALTER TABLE `agencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cartao`
--
ALTER TABLE `cartao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comprovantedetransacao`
--
ALTER TABLE `comprovantedetransacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `controlefinanceiro`
--
ALTER TABLE `controlefinanceiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emissaoclientes`
--
ALTER TABLE `emissaoclientes`
  MODIFY `idEmissaoClientes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emissaodeextratos`
--
ALTER TABLE `emissaodeextratos`
  MODIFY `idEmissao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fluxo`
--
ALTER TABLE `fluxo`
  MODIFY `idFluxo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `movimentcoes`
--
ALTER TABLE `movimentcoes`
  MODIFY `idConta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `agencias`
--
ALTER TABLE `agencias`
  ADD CONSTRAINT `agencias_ibfk_1` FOREIGN KEY (`idCmpTransacao`) REFERENCES `comprovantedetransacao` (`id`);

--
-- Limitadores para a tabela `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`id`);

--
-- Limitadores para a tabela `emissaoclientes`
--
ALTER TABLE `emissaoclientes`
  ADD CONSTRAINT `emissaoclientes_ibfk_1` FOREIGN KEY (`idClientes`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `emissaoclientes_ibfk_2` FOREIGN KEY (`idEmissao`) REFERENCES `emissaodeextratos` (`idEmissao`);

--
-- Limitadores para a tabela `fluxo`
--
ALTER TABLE `fluxo`
  ADD CONSTRAINT `fluxo_ibfk_1` FOREIGN KEY (`idMovimentacoes`) REFERENCES `movimentcoes` (`idConta`),
  ADD CONSTRAINT `fluxo_ibfk_2` FOREIGN KEY (`idClientes`) REFERENCES `clientes` (`id`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idCartao`) REFERENCES `cartao` (`id`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`idClientes`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
