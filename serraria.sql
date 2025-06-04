-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Jun-2025 às 13:49
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
-- Banco de dados: `serraria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `numeroDoPedido` bigint(11) NOT NULL,
  `qntdDaCompra` bigint(11) DEFAULT NULL,
  `nomeDoVendedor` text DEFAULT NULL,
  `atestadoDeDivida` varchar(45) DEFAULT NULL,
  `cpfDoVendedor` bigint(14) DEFAULT NULL,
  `comissaoPorVendaDeUnidade` float DEFAULT NULL,
  `idadeMinParaCompra` bigint(5) DEFAULT NULL,
  `metodosDePagamentosDaVenda` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atendimento`
--

INSERT INTO `atendimento` (`numeroDoPedido`, `qntdDaCompra`, `nomeDoVendedor`, `atestadoDeDivida`, `cpfDoVendedor`, `comissaoPorVendaDeUnidade`, `idadeMinParaCompra`, `metodosDePagamentosDaVenda`) VALUES
(1001, 3, 'Carlos Souza', 'Sem Dívida', 12345678901, 15.5, 18, 'Cartão de Crédito'),
(1002, 1, 'Mariana Lima', 'Sem Dívida', 23456789012, 12, 21, 'Pix'),
(1003, 5, 'João Pedro', 'Com Restrição', 34567890123, 20.75, 18, 'Dinheiro'),
(1004, 2, 'Ana Beatriz', 'Sem Dívida', 45678901234, 10, 16, 'Boleto'),
(1005, 4, 'Fernando Dias', 'Sem Dívida', 56789012345, 18, 18, 'Cartão de Débito'),
(1006, 2, 'Camila Alves', 'Com Restrição', 67890123456, 13.9, 25, 'Pix'),
(1007, 1, 'Rafael Mendes', 'Sem Dívida', 78901234567, 22.3, 18, 'Cartão de Crédito'),
(1008, 3, 'Juliana Rocha', 'Sem Dívida', 89012345678, 17, 18, 'Dinheiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` bigint(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` bigint(20) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `genero` binary(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nome`, `cpf`, `dataNascimento`, `email`, `telefone`, `genero`) VALUES
(1, 'João Silva', 12345678900, '1990-05-15', 'joao@gmail.com', '11988887777', NULL),
(2, 'Maria Oliveira', 23456789011, '1985-03-22', 'maria@hotmail.com', '21999998888', NULL),
(3, 'Carlos Souza', 34567890122, '1978-10-10', 'carlos@yahoo.com', '31988889999', NULL),
(4, 'Ana Paula', 45678901233, '1992-07-19', 'ana@outlook.com', '41987776655', NULL),
(5, 'Fernanda Lima', 56789012344, '1980-12-01', 'fernanda@gmail.com', '51996665544', NULL),
(6, 'Lucas Mendes', 67890123455, '1995-01-30', 'lucas@icloud.com', '61999997777', NULL),
(7, 'Juliana Rocha', 78901234566, '1988-06-25', 'juliana@gmail.com', '71988884433', NULL),
(8, 'Rafael Dias', 89012345677, '1991-09-09', 'rafael@uol.com.br', '81999991111', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `idEndereco` bigint(20) NOT NULL,
  `idCliente` bigint(20) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `enderecos`
--

INSERT INTO `enderecos` (`idEndereco`, `idCliente`, `rua`, `numero`, `cidade`, `estado`, `cep`) VALUES
(1, 1, 'Rua A', '100', 'São Paulo', 'SP', '01000-000'),
(2, 2, 'Rua B', '200', 'Rio de Janeiro', 'RJ', '20000-000'),
(3, 3, 'Rua C', '300', 'Belo Horizonte', 'MG', '30000-000'),
(4, 4, 'Rua D', '400', 'Porto Alegre', 'RS', '90000-000'),
(5, 5, 'Rua E', '500', 'Curitiba', 'PR', '80000-000'),
(6, 6, 'Rua F', '600', 'Salvador', 'BA', '40000-000'),
(7, 7, 'Rua G', '700', 'Recife', 'PE', '50000-000'),
(8, 8, 'Rua H', '800', 'Fortaleza', 'CE', '60000-000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `idFornecedor` bigint(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cnpj` bigint(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`idFornecedor`, `nome`, `cnpj`, `telefone`, `email`) VALUES
(1, 'Tech Solutions Ltda', 12345678000100, '1133224455', 'contato@techsolutions.com'),
(2, 'SmartTech S.A.', 22345678000100, '2133445566', 'vendas@smarttech.com'),
(3, 'InfoStore Brasil', 32345678000100, '3133556677', 'suporte@infostore.com'),
(4, 'MegaProdutos Eireli', 42345678000100, '4133667788', 'contato@megaprodutos.com'),
(5, 'DigitalWare Ltda', 52345678000100, '5133778899', 'vendas@digitalware.com'),
(6, 'TopLine Distribuidora', 62345678000100, '6133889900', 'contato@topline.com'),
(7, 'Alpha Importações', 72345678000100, '7133990011', 'import@alpha.com'),
(8, 'BestParts Comércio', 82345678000100, '8133001122', 'comercial@bestparts.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itenspedido`
--

CREATE TABLE `itenspedido` (
  `idItem` bigint(20) NOT NULL,
  `numeroDoPedido` bigint(20) DEFAULT NULL,
  `idProduto` bigint(20) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `precoUnitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `itenspedido`
--

INSERT INTO `itenspedido` (`idItem`, `numeroDoPedido`, `idProduto`, `quantidade`, `precoUnitario`) VALUES
(1, 1001, 1, 1, 3500.00),
(2, 1001, 5, 1, 150.00),
(3, 1002, 3, 1, 250.00),
(4, 1003, 4, 1, 800.00),
(5, 1004, 5, 1, 150.00),
(6, 1005, 7, 1, 1200.00),
(7, 1006, 8, 1, 400.00),
(8, 1007, 2, 1, 2200.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `idPagamento` bigint(20) NOT NULL,
  `numeroDoPedido` bigint(20) DEFAULT NULL,
  `dataPagamento` date DEFAULT NULL,
  `valorPago` decimal(10,2) DEFAULT NULL,
  `formaPagamento` enum('Dinheiro','Cartão de Crédito','Cartão de Débito','Pix','Boleto') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pagamentos`
--

INSERT INTO `pagamentos` (`idPagamento`, `numeroDoPedido`, `dataPagamento`, `valorPago`, `formaPagamento`) VALUES
(1, 1001, '2024-01-11', 3700.00, 'Cartão de Crédito'),
(2, 1002, '2024-02-06', 250.00, 'Pix'),
(3, 1003, '2024-03-19', 800.00, 'Dinheiro'),
(4, 1004, '2024-04-02', 150.00, 'Boleto'),
(5, 1005, '2024-04-16', 1200.00, 'Cartão de Débito'),
(6, 1006, '2024-04-21', 400.00, 'Pix'),
(7, 1007, '2024-05-06', 2200.00, 'Cartão de Crédito'),
(8, 1008, '2024-05-11', 900.00, 'Dinheiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `numeroDoPedido` bigint(20) NOT NULL,
  `idCliente` bigint(20) DEFAULT NULL,
  `idVendedor` bigint(20) DEFAULT NULL,
  `dataPedido` date DEFAULT NULL,
  `metodoPagamento` enum('Dinheiro','Cartão de Crédito','Cartão de Débito','Pix','Boleto') DEFAULT NULL,
  `totalPedido` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`numeroDoPedido`, `idCliente`, `idVendedor`, `dataPedido`, `metodoPagamento`, `totalPedido`) VALUES
(1001, 1, 1, '2024-01-10', 'Cartão de Crédito', 3700.00),
(1002, 2, 2, '2024-02-05', 'Pix', 250.00),
(1003, 3, 3, '2024-03-18', 'Dinheiro', 800.00),
(1004, 4, 4, '2024-04-01', 'Boleto', 150.00),
(1005, 5, 5, '2024-04-15', 'Cartão de Débito', 1200.00),
(1006, 6, 6, '2024-04-20', 'Pix', 400.00),
(1007, 7, 7, '2024-05-05', 'Cartão de Crédito', 2200.00),
(1008, 8, 8, '2024-05-10', 'Dinheiro', 900.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idProduto` bigint(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idProduto`, `nome`, `preco`, `estoque`, `categoria`) VALUES
(1, 'Notebook Dell', 3500.00, 10, 'Informática'),
(2, 'Smartphone Samsung', 2200.00, 20, 'Eletrônicos'),
(3, 'Teclado Mecânico', 250.00, 50, 'Acessórios'),
(4, 'Monitor LG 24\"', 800.00, 15, 'Periféricos'),
(5, 'Mouse Sem Fio', 150.00, 60, 'Acessórios'),
(6, 'Impressora HP', 900.00, 5, 'Escritório'),
(7, 'Cadeira Gamer', 1200.00, 8, 'Móveis'),
(8, 'HD Externo 1TB', 400.00, 25, 'Armazenamento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedores`
--

CREATE TABLE `vendedores` (
  `idVendedor` bigint(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` bigint(20) DEFAULT NULL,
  `comissaoBase` decimal(10,2) DEFAULT NULL,
  `dataAdmissao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vendedores`
--

INSERT INTO `vendedores` (`idVendedor`, `nome`, `cpf`, `comissaoBase`, `dataAdmissao`) VALUES
(1, 'Carlos Ferreira', 11223344556, 10.00, '2020-01-15'),
(2, 'Tatiane Melo', 22334455667, 12.50, '2019-06-10'),
(3, 'Pedro Henrique', 33445566778, 8.75, '2021-03-12'),
(4, 'Letícia Ramos', 44556677889, 11.00, '2018-11-20'),
(5, 'Roberto Souza', 55667788990, 9.50, '2022-02-01'),
(6, 'Bianca Costa', 66778899001, 13.00, '2017-09-17'),
(7, 'Marcos Lima', 77889900112, 10.50, '2023-05-25'),
(8, 'Amanda Pires', 88990011223, 11.75, '2016-04-30');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`numeroDoPedido`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`idEndereco`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`idFornecedor`),
  ADD UNIQUE KEY `cnpj` (`cnpj`);

--
-- Índices para tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD PRIMARY KEY (`idItem`),
  ADD KEY `numeroDoPedido` (`numeroDoPedido`),
  ADD KEY `idProduto` (`idProduto`);

--
-- Índices para tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`idPagamento`),
  ADD KEY `numeroDoPedido` (`numeroDoPedido`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`numeroDoPedido`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idVendedor` (`idVendedor`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idProduto`);

--
-- Índices para tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`idVendedor`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `idEndereco` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `idFornecedor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  MODIFY `idItem` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  MODIFY `idPagamento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idProduto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `idVendedor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD CONSTRAINT `Enderecos_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Limitadores para a tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD CONSTRAINT `ItensPedido_ibfk_1` FOREIGN KEY (`numeroDoPedido`) REFERENCES `pedidos` (`numeroDoPedido`),
  ADD CONSTRAINT `ItensPedido_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `produtos` (`idProduto`);

--
-- Limitadores para a tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD CONSTRAINT `Pagamentos_ibfk_1` FOREIGN KEY (`numeroDoPedido`) REFERENCES `pedidos` (`numeroDoPedido`);

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `Pedidos_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `Pedidos_ibfk_2` FOREIGN KEY (`idVendedor`) REFERENCES `vendedores` (`idVendedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
