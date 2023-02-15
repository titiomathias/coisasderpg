-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Fev-2023 às 05:46
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rpgthings`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `armas`
--

CREATE TABLE `armas` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `descrição` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `armas`
--

INSERT INTO `armas` (`id`, `nome`, `tipo`, `descrição`) VALUES
(1, 'Besta Leve do Engenheiro Degolador', 'Muito raro', 'Essa besta é mágica e concede +1 em bônus de ataque e dano. Criada pelo Engenheiro Degolador foi modificada para efetuar vários disparos consecutivos. A cada vez que você fizer um ataque com a besta, você deve gastar uma ação de movimento para recarregar três virotes, após isso, realize três ataques para três disparos dessas flechas que ocorrem no mesmo turno. O dano de cada virote é 1d8.'),
(2, 'Arco do Juramento', 'Lendário', 'Esse arco longo é mágico e concede +1 em bônus de ataque e dano. tem o poder do juramento, ao usá-lo, como ação livre você pode jurar um inimigo de morte em voz alta, você só pode jurar um inimigo de morte, o mesmo inimigo deve morrer para que você possa jurar outra criatura, ao fazer isso, você adquire vantagem em atacar o inimigo jurado e todos os disparos contra ele acrescentam 2d6 de dano necrótico e ignoram cobertura. Todas as condições se finalizam quando o inimigo jurado morre.'),
(3, 'Adaga de Envenenamento', 'Raro', 'A adaga é considerada mágica, você recebe +1 de bônus nas jogadas de ataque e dano feitos com essa arma. Você pode gastar uma ação padrão para fazer com que um veneno negro escorra pela lâmina, o veneno permanece por 1 minuto ou até que o ataque atinja a criatura, causando 1d10 de dano de veneno.'),
(4, 'Aljava de Ehlonna', 'Lendário', 'Essa aljava possui uma capacidade de carga de até 60 flechas e 60 virotes.'),
(5, 'Espada Curta de Adamante', 'Incomum', 'Essa espada é feita em adamante, por isso, ela não pode ser quebrada, todos os ataques contra objetos é considerado acerto crítico e seu bônus em jogadas de ataque e dano são de +2.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ferramentas`
--

CREATE TABLE `ferramentas` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `descrição` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ferramentas`
--

INSERT INTO `ferramentas` (`id`, `nome`, `tipo`, `descrição`) VALUES
(1, 'Ferramentas do Engenheiro Degolador', 'Lendário', 'As ferramentas em questão concedem ao usuário +6 em testes com o kit de ferramentas de ferreiro.'),
(2, 'Ferramentas de Artificer da Academia Cal', 'Raro', 'As ferramentas de artificer é um conjunto de ferramentas de ladrão misturado as ferramentas de funileiro em um único kit, que além do que, concede ao usuário +2 em testes com esses kits.'),
(3, 'Ferramentas Alquímicas da Academia de He', 'Muito Raro', 'As ferramentas alquímicas da academia de heróis é um conjunto de kit de herbalismo, kit de envenenamento e kit de alquimia em um único kit, além do que, o mesmo concede ao usuário +3 em testes com esses kits.'),
(4, 'Ferramentas de Ladrão do Bandido Benny', 'Incomum', 'Um kit de ferramentas de ladrão rebuscado, que concede ao usuário +2 em testes com o kit.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `objetos`
--

CREATE TABLE `objetos` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descrição` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `objetos`
--

INSERT INTO `objetos` (`id`, `nome`, `tipo`, `descrição`) VALUES
(1, 'Dados de Kun Lun', 'Muito Raro', 'O conjunto de dados de Kun Lun permitem ao usuário escolher os números que irão cair.'),
(2, 'Caneca da Sobriedade', 'Muito Raro', 'Essa caneca não permite que nenhum usuário que esteja bebendo nela fique embreagado.'),
(3, 'Cantil de Whisky', 'Incomum', 'Todo e qualquer líquido colocado dentro desse cantil se transforma em whisky instantâneamente.'),
(4, 'Pena de Caligrafia Infinita', 'Lendário', 'Essa pena não necessita de tinta, sua escrita sai naturalmente de sua ponta e não necessita de nenhum tipo de recarga. O custo para copiar magias e semelhantes é diminuido pela metade.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `poções`
--

CREATE TABLE `poções` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `duração` varchar(20) NOT NULL,
  `descrição` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `poções`
--

INSERT INTO `poções` (`id`, `nome`, `tipo`, `duração`, `descrição`) VALUES
(2, 'Poção de Cura', 'Comum', 'Instantânea', 'Cura 2d4+4 de vida do usuário.'),
(3, 'Poção de Cura Grande', 'Incomum', 'Instantânea', 'Cura 2d8+4 pontos de vida do usuário.'),
(4, 'Poção de Voo', 'Raro', '1 minuto', 'O usuário recebe todos os benefícios da magia Voo por um minuto.'),
(5, 'Poção de Adaptação de Dano', 'Muito Raro', '1 hora', 'Depois de beber esta poção sua magia permanece adormecida em seu sistema até a próxima vez que você receber dano de um tipo específico. Você imediatamente ganha resistência a esse tipo de dano por 1 hora. Flocos de escamas de uma variedade de dragões podem ser vistos flutuando através do líquido translúcido da poção.'),
(6, 'Poção de Polissuco', 'Raro', '1 hora', 'A poção necessita de um componente físico de um humanoide (unha, cabelo, pelo, pele, saliva, lágrima) e ao inseri-lo na poção, o usuário que ingeri-lo se transforma no humanoide original dos componentes. A sua aparência fica exatamente igual ao do humanoide, entretanto, suas características físicas e memórias se mantém pela duração.'),
(7, 'Poção de Mana', 'Raro', 'Instantâneo.', 'As poções de mana recuperam espaços de magias a partir de pontos que devem ser distribuídos entre seus espaços de magia. A poção de mana comum te concede 2 pontos, o que significa que você pode recuperar dois espaços de 1º nível ou um espaço de 2º nível.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `óleos`
--

CREATE TABLE `óleos` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `duração` varchar(20) NOT NULL,
  `descrição` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `óleos`
--

INSERT INTO `óleos` (`id`, `nome`, `tipo`, `duração`, `descrição`) VALUES
(1, 'Óleo de Veneno', 'Incomum', '1 minuto', 'O óleo deve ser passado em uma arma ou munição com uma ação padrão, ao realizar um ataque com a arma embanhada é acrescentado um dano de veneno igual a 1d8.'),
(2, 'Óleo de Fogo', 'Raro', '1 minuto', 'O óleo deve ser passado em uma arma ou munição com uma ação padrão, ao realizar um ataque com a arma embanhada é acrescentado um dano de fogo igual a 1d6.'),
(3, 'Óleo de Cocatriz', 'Raro', '1 rodada', 'O óleo de cocatriz deve ser passado em uma arma corpo a corpo ou munição com uma ação padrão, ao atingir um ataque com a arma enbanhada a criatura deve realizar um teste de constituição CD 13 ou fica paralisada, no seu próximo turno deve fazer outro teste de constituição, se falhar, a criatura fica petrificada.'),
(4, 'Óleo Mágico', 'Comum', '1 minuto', 'Você deve gastar a sua ação padrão para passar esse óleo em uma arma ou munição corpo a corpo. O óleo acrescenta a propriedade mágica a sua arma, entretanto não concede nenhum tipo de bônus a mesma.'),
(5, 'Óleo do Rio Etéreo', 'Muito Raro', 'Instantânea', 'O óleo do rio etéreo é um verdadeiro mistério até mesmo para os mais sábios alquimistas, uma mistura da origem de tudo com a manifestação de mana de todos os planos. Você deve gastar uma ação padrão para banhar uma arma corpo a corpo ou munição com esse óleo, a arma ganha a propriedade Etérea e ignora todas as resistências de dano, além do que, o óleo acrescenta um dano de 10d10 de dano etéreo e o efeito se finaliza. Observação: se a sua arma já não tiver antes a propriedade etérea, ela irá se desfazer para sempre e não poderá ser consertada.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `armas`
--
ALTER TABLE `armas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ferramentas`
--
ALTER TABLE `ferramentas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `objetos`
--
ALTER TABLE `objetos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `poções`
--
ALTER TABLE `poções`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `óleos`
--
ALTER TABLE `óleos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `armas`
--
ALTER TABLE `armas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `ferramentas`
--
ALTER TABLE `ferramentas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `objetos`
--
ALTER TABLE `objetos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `poções`
--
ALTER TABLE `poções`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `óleos`
--
ALTER TABLE `óleos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
