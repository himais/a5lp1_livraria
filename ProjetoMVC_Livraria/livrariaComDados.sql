USE [master]
GO
/****** Object:  Database [livraria]    Script Date: 12/06/2017 01:05:35 ******/
CREATE DATABASE [livraria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'livraria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.CAIQUE\MSSQL\DATA\livraria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'livraria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.CAIQUE\MSSQL\DATA\livraria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [livraria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [livraria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [livraria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [livraria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [livraria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [livraria] SET ARITHABORT OFF 
GO
ALTER DATABASE [livraria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [livraria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [livraria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [livraria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [livraria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [livraria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [livraria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [livraria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [livraria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [livraria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [livraria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [livraria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [livraria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [livraria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [livraria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [livraria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [livraria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [livraria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [livraria] SET  MULTI_USER 
GO
ALTER DATABASE [livraria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [livraria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [livraria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [livraria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [livraria] SET DELAYED_DURABILITY = DISABLED 
GO
USE [livraria]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 12/06/2017 01:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[IdAutor] [int] IDENTITY(1,1) NOT NULL,
	[NomeAutor] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[IdAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AutorLivro]    Script Date: 12/06/2017 01:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutorLivro](
	[IdAutorLivro] [int] IDENTITY(1,1) NOT NULL,
	[IdLivro] [int] NOT NULL,
	[IdAutor] [int] NOT NULL,
 CONSTRAINT [PK_AutorLivro] PRIMARY KEY CLUSTERED 
(
	[IdAutorLivro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Editora]    Script Date: 12/06/2017 01:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editora](
	[IdEditora] [int] IDENTITY(1,1) NOT NULL,
	[NomeEditora] [nvarchar](max) NOT NULL,
	[RazaoSocial] [nvarchar](max) NOT NULL,
	[CNPJ] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Editora] PRIMARY KEY CLUSTERED 
(
	[IdEditora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 12/06/2017 01:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionario](
	[IdFuncionario] [int] IDENTITY(1,1) NOT NULL,
	[NomeFuncionario] [nvarchar](max) NOT NULL,
	[Login] [nvarchar](max) NOT NULL,
	[Senha] [nvarchar](max) NOT NULL,
	[Administrador] [bit] NOT NULL,
 CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED 
(
	[IdFuncionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genero]    Script Date: 12/06/2017 01:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[IdGenero] [int] IDENTITY(1,1) NOT NULL,
	[NomeGenero] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemVenda]    Script Date: 12/06/2017 01:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemVenda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdVenda] [int] NOT NULL,
	[IdLivro] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
 CONSTRAINT [PK_ItemVenda] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Livro]    Script Date: 12/06/2017 01:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Livro](
	[IdLivro] [int] IDENTITY(1,1) NOT NULL,
	[IdGenero] [int] NOT NULL,
	[NomeLivro] [nvarchar](max) NOT NULL,
	[Ano] [int] NOT NULL,
	[Descricao] [nvarchar](max) NOT NULL,
	[Paginas] [int] NOT NULL,
	[IdEditora] [int] NOT NULL,
	[Isbn] [nvarchar](max) NOT NULL,
	[Preco] [decimal](18, 2) NOT NULL,
	[QuantidadeEstoque] [int] NOT NULL,
 CONSTRAINT [PK_Livro] PRIMARY KEY CLUSTERED 
(
	[IdLivro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venda]    Script Date: 12/06/2017 01:05:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda](
	[IdVenda] [int] IDENTITY(1,1) NOT NULL,
	[DataVenda] [datetime] NOT NULL,
	[PrecoTotal] [decimal](18, 2) NOT NULL,
	[TotalLivros] [int] NOT NULL,
	[IdFuncionario] [int] NOT NULL,
 CONSTRAINT [PK_Venda] PRIMARY KEY CLUSTERED 
(
	[IdVenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Autor] ON 

INSERT [dbo].[Autor] ([IdAutor], [NomeAutor]) VALUES (1, N'Neil Gaiman')
INSERT [dbo].[Autor] ([IdAutor], [NomeAutor]) VALUES (2, N'Jojo Moyes')
INSERT [dbo].[Autor] ([IdAutor], [NomeAutor]) VALUES (3, N'George R. R. Martin')
INSERT [dbo].[Autor] ([IdAutor], [NomeAutor]) VALUES (4, N'Stephen King')
SET IDENTITY_INSERT [dbo].[Autor] OFF
SET IDENTITY_INSERT [dbo].[AutorLivro] ON 

INSERT [dbo].[AutorLivro] ([IdAutorLivro], [IdLivro], [IdAutor]) VALUES (9, 2, 1)
INSERT [dbo].[AutorLivro] ([IdAutorLivro], [IdLivro], [IdAutor]) VALUES (10, 3, 2)
INSERT [dbo].[AutorLivro] ([IdAutorLivro], [IdLivro], [IdAutor]) VALUES (12, 4, 3)
INSERT [dbo].[AutorLivro] ([IdAutorLivro], [IdLivro], [IdAutor]) VALUES (14, 1, 4)
INSERT [dbo].[AutorLivro] ([IdAutorLivro], [IdLivro], [IdAutor]) VALUES (15, 5, 4)
SET IDENTITY_INSERT [dbo].[AutorLivro] OFF
SET IDENTITY_INSERT [dbo].[Editora] ON 

INSERT [dbo].[Editora] ([IdEditora], [NomeEditora], [RazaoSocial], [CNPJ], [Email]) VALUES (1, N'Suma De Letras', N'Suma - Companhia das Letras', N'13983675000140', N'sumadeletras@companhia.com')
INSERT [dbo].[Editora] ([IdEditora], [NomeEditora], [RazaoSocial], [CNPJ], [Email]) VALUES (2, N'Intrinseca', N'Intrinseca', N'43282525000170', N'intriseca@editora.com')
INSERT [dbo].[Editora] ([IdEditora], [NomeEditora], [RazaoSocial], [CNPJ], [Email]) VALUES (3, N'L&PM', N'L&PM Livros', N'46160274000149', N'lepm@livros.com')
INSERT [dbo].[Editora] ([IdEditora], [NomeEditora], [RazaoSocial], [CNPJ], [Email]) VALUES (4, N'Planeta do Brasil', N'Planeta do Brasil', N'86518184000100', N'planeta@brasil.com')
INSERT [dbo].[Editora] ([IdEditora], [NomeEditora], [RazaoSocial], [CNPJ], [Email]) VALUES (5, N'Nova Fronteira', N'Nova Fronteira', N'38781056000101', N'novafronteira@editora.com')
SET IDENTITY_INSERT [dbo].[Editora] OFF
SET IDENTITY_INSERT [dbo].[Funcionario] ON 

INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [Login], [Senha], [Administrador]) VALUES (1, N'Administrador', N'admin', N'admin', 1)
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [Login], [Senha], [Administrador]) VALUES (2, N'Caique Aquino Borges', N'caique', N'caique', 0)
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [Login], [Senha], [Administrador]) VALUES (3, N'Maira Satiko Tabata', N'maira', N'maira', 0)
SET IDENTITY_INSERT [dbo].[Funcionario] OFF
SET IDENTITY_INSERT [dbo].[Genero] ON 

INSERT [dbo].[Genero] ([IdGenero], [NomeGenero]) VALUES (1, N'Aventura')
INSERT [dbo].[Genero] ([IdGenero], [NomeGenero]) VALUES (2, N'Terror')
INSERT [dbo].[Genero] ([IdGenero], [NomeGenero]) VALUES (3, N'Romance')
INSERT [dbo].[Genero] ([IdGenero], [NomeGenero]) VALUES (4, N'Suspense')
SET IDENTITY_INSERT [dbo].[Genero] OFF
SET IDENTITY_INSERT [dbo].[ItemVenda] ON 

INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdLivro], [Quantidade]) VALUES (1, 1, 1, 1)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdLivro], [Quantidade]) VALUES (2, 1, 2, 1)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdLivro], [Quantidade]) VALUES (3, 2, 3, 1)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdLivro], [Quantidade]) VALUES (4, 2, 5, 3)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdLivro], [Quantidade]) VALUES (5, 3, 1, 1)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdLivro], [Quantidade]) VALUES (6, 3, 5, 3)
SET IDENTITY_INSERT [dbo].[ItemVenda] OFF
SET IDENTITY_INSERT [dbo].[Livro] ON 

INSERT [dbo].[Livro] ([IdLivro], [IdGenero], [NomeLivro], [Ano], [Descricao], [Paginas], [IdEditora], [Isbn], [Preco], [QuantidadeEstoque]) VALUES (1, 2, N'It - A Coisa', 2014, N'Durante as férias escolares de 1958, em Derry, pacata cidadezinha do Maine, Bill, Richie, Stan, Mike, Eddie, Ben e Beverly aprenderam o real sentido da amizade, do amor, da confiança e... do medo. O mais profundo e tenebroso medo. Naquele verão, eles enfrentaram pela primeira vez a Coisa, um ser sobrenatural e maligno que deixou terríveis marcas de sangue em Derry. Quase trinta anos depois, os amigos voltam a se encontrar. Uma nova onda de terror tomou a pequena cidade. Mike Hanlon, o único que permanece em Derry, dá o sinal. Precisam unir forças novamente. A Coisa volta a atacar e eles devem cumprir a promessa selada com sangue que fizeram quando crianças. Só eles têm a chave do enigma. Só eles sabem o que se esconde nas entranhas de Derry. O tempo é curto, mas somente eles podem vencer a Coisa.', 425, 2, N'9788560280940', CAST(58.90 AS Decimal(18, 2)), 4)
INSERT [dbo].[Livro] ([IdLivro], [IdGenero], [NomeLivro], [Ano], [Descricao], [Paginas], [IdEditora], [Isbn], [Preco], [QuantidadeEstoque]) VALUES (2, 1, N'Mitologia Nórdica', 2017, N'Uma jornada da origem do universo até o fim do mundo.
Quem, além de Neil Gaiman, poderia se tornar cúmplice dos deuses e usar de sua habilidade com as palavras para recontar as histórias dos mitos nórdicos? Fãs e leitores sabem que a mitologia nórdica sempre teve grande influência na obra do autor. Depois de servirem de inspiração para clássicos como Deuses americanos e Sandman, Gaiman agora investiga o universo dos mitos nórdicos. Em Mitologia nórdica, ele vai até a fonte dos mitos para criar sua própria versão, com o inconfundível estilo sagaz e inteligente que permeia toda a sua obra. Fascinado por essa mitologia desde a infância, o autor compôs uma coletânea de quinze contos que começa com a narração da origem do mundo e mostra a relação conturbada entre deuses, gigantes e anões, indo até o Ragnarök, o assustador cenário do apocalipse que vai levar ao fim no mundo. Às vezes intensos e sombrios, outras vezes divertidos e heroicos, os contos retratam tempos longínquos em que os feitos dos deuses eram contados ao redor da fogueira em noites frias e estreladas. “Mitologia nórdica” é o livro perfeito para quem quer descobrir mais sobre a mitologia escandinava e também para aqueles que desejam desvelar novas facetas dessas histórias.', 288, 4, N'9788551001288', CAST(31.40 AS Decimal(18, 2)), 4)
INSERT [dbo].[Livro] ([IdLivro], [IdGenero], [NomeLivro], [Ano], [Descricao], [Paginas], [IdEditora], [Isbn], [Preco], [QuantidadeEstoque]) VALUES (3, 3, N'Como Eu Era Antes de Você', 2015, N'Em “Como Eu Era Antes de Você”, Lou Clark é uma jovem cheia de vida e espontaneidade, que sabe uma porção de coisas. Ela sabe quantos passos separam sua casa do ponto de ônibus. Sabe que adora trabalhar como atendente em um café e sabe que provavelmente não ama seu namorado, Patrick. O que Lou não sabe é que está prestes a perder o emprego, e que isso a obrigará a repensar toda sua vida.
Will Traynor, por sua vez, sabe que o acidente com a motocicleta tirou dele a vontade de viver. Ele sabe que o mundo agora parece pequeno e sem graça, e sabe exatamente como vai dar um fim a tudo isso.
O que Will não sabe é que a chegada de Lou vai trazer de volta a cor à sua vida. E nenhum deles desconfia de que esse encontro irá mudar para sempre a história dos dois.', 320, 2, N'9788580579246', CAST(19.90 AS Decimal(18, 2)), 14)
INSERT [dbo].[Livro] ([IdLivro], [IdGenero], [NomeLivro], [Ano], [Descricao], [Paginas], [IdEditora], [Isbn], [Preco], [QuantidadeEstoque]) VALUES (4, 1, N'Box – As Crônicas de Gelo e Fogo – Pocket – Edição de Colecionador', 2017, N'Todo o reino de Westeros ao alcance das mãos

A série Crônicas de Gelo e Fogo dispensa apresentações. São mais de 30 milhões de livros vendidos ao redor do mundo – e cerca de 2 milhões do Brasil. Os números, assim como a profusão de tramas e personagens impressiona e atrai mais fãs a cada dia.

Para satisfazer a ânsia dos aficionados e dos novos leitores, a Leya publica uma nova edição limitada do Box Crônicas de Gelo e Fogo com os cinco livros já escritos - A Guerra dos Tronos, A Fúria dos Reis, A Tormenta de Espadas, O Festim dos Corvos e A Dança dos Dragões – em versão pocket.', 1, 3, N'1979849181111', CAST(99.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Livro] ([IdLivro], [IdGenero], [NomeLivro], [Ano], [Descricao], [Paginas], [IdEditora], [Isbn], [Preco], [QuantidadeEstoque]) VALUES (5, 1, N'Harry Potter e A Criança Amaldiçoada', 2016, N'Sempre foi difícil ser Harry Potter e não é mais fácil agora que ele é um sobrecarregado funcionário do Ministério da Magia, marido e pai de três crianças em idade escolar. Enquanto Harry lida com um passado que se recusa a ficar para trás, seu filho mais novo, Alvo, deve lutar com o peso de um legado de família que ele nunca quis. À medida que passado e presente se fundem de forma ameaçadora, ambos, pai e filho, aprendem uma incômoda verdade: às vezes as trevas vêm de lugares inesperados.', 352, 5, N'9788532530431', CAST(87.00 AS Decimal(18, 2)), 14)
SET IDENTITY_INSERT [dbo].[Livro] OFF
SET IDENTITY_INSERT [dbo].[Venda] ON 

INSERT [dbo].[Venda] ([IdVenda], [DataVenda], [PrecoTotal], [TotalLivros], [IdFuncionario]) VALUES (1, CAST(N'2017-06-12 00:49:34.363' AS DateTime), CAST(90.30 AS Decimal(18, 2)), 2, 3)
INSERT [dbo].[Venda] ([IdVenda], [DataVenda], [PrecoTotal], [TotalLivros], [IdFuncionario]) VALUES (2, CAST(N'2017-06-12 00:52:51.313' AS DateTime), CAST(280.90 AS Decimal(18, 2)), 4, 1)
INSERT [dbo].[Venda] ([IdVenda], [DataVenda], [PrecoTotal], [TotalLivros], [IdFuncionario]) VALUES (3, CAST(N'2017-06-12 00:54:22.780' AS DateTime), CAST(319.90 AS Decimal(18, 2)), 4, 2)
SET IDENTITY_INSERT [dbo].[Venda] OFF
/****** Object:  Index [IX_FK_AutorAutorLivro]    Script Date: 12/06/2017 01:05:35 ******/
CREATE NONCLUSTERED INDEX [IX_FK_AutorAutorLivro] ON [dbo].[AutorLivro]
(
	[IdAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_LivroAutorLivro]    Script Date: 12/06/2017 01:05:35 ******/
CREATE NONCLUSTERED INDEX [IX_FK_LivroAutorLivro] ON [dbo].[AutorLivro]
(
	[IdLivro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Item_VendaLivro]    Script Date: 12/06/2017 01:05:35 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Item_VendaLivro] ON [dbo].[ItemVenda]
(
	[IdLivro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Item_VendaVenda]    Script Date: 12/06/2017 01:05:35 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Item_VendaVenda] ON [dbo].[ItemVenda]
(
	[IdVenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_EditoraLivro]    Script Date: 12/06/2017 01:05:35 ******/
CREATE NONCLUSTERED INDEX [IX_FK_EditoraLivro] ON [dbo].[Livro]
(
	[IdEditora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_LivroGenero]    Script Date: 12/06/2017 01:05:35 ******/
CREATE NONCLUSTERED INDEX [IX_FK_LivroGenero] ON [dbo].[Livro]
(
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_VendaFuncionario]    Script Date: 12/06/2017 01:05:35 ******/
CREATE NONCLUSTERED INDEX [IX_FK_VendaFuncionario] ON [dbo].[Venda]
(
	[IdFuncionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AutorLivro]  WITH CHECK ADD  CONSTRAINT [FK_AutorAutorLivro] FOREIGN KEY([IdAutor])
REFERENCES [dbo].[Autor] ([IdAutor])
GO
ALTER TABLE [dbo].[AutorLivro] CHECK CONSTRAINT [FK_AutorAutorLivro]
GO
ALTER TABLE [dbo].[AutorLivro]  WITH CHECK ADD  CONSTRAINT [FK_LivroAutorLivro] FOREIGN KEY([IdLivro])
REFERENCES [dbo].[Livro] ([IdLivro])
GO
ALTER TABLE [dbo].[AutorLivro] CHECK CONSTRAINT [FK_LivroAutorLivro]
GO
ALTER TABLE [dbo].[ItemVenda]  WITH CHECK ADD  CONSTRAINT [FK_Item_VendaLivro] FOREIGN KEY([IdLivro])
REFERENCES [dbo].[Livro] ([IdLivro])
GO
ALTER TABLE [dbo].[ItemVenda] CHECK CONSTRAINT [FK_Item_VendaLivro]
GO
ALTER TABLE [dbo].[ItemVenda]  WITH CHECK ADD  CONSTRAINT [FK_Item_VendaVenda] FOREIGN KEY([IdVenda])
REFERENCES [dbo].[Venda] ([IdVenda])
GO
ALTER TABLE [dbo].[ItemVenda] CHECK CONSTRAINT [FK_Item_VendaVenda]
GO
ALTER TABLE [dbo].[Livro]  WITH CHECK ADD  CONSTRAINT [FK_EditoraLivro] FOREIGN KEY([IdEditora])
REFERENCES [dbo].[Editora] ([IdEditora])
GO
ALTER TABLE [dbo].[Livro] CHECK CONSTRAINT [FK_EditoraLivro]
GO
ALTER TABLE [dbo].[Livro]  WITH CHECK ADD  CONSTRAINT [FK_LivroGenero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([IdGenero])
GO
ALTER TABLE [dbo].[Livro] CHECK CONSTRAINT [FK_LivroGenero]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_VendaFuncionario] FOREIGN KEY([IdFuncionario])
REFERENCES [dbo].[Funcionario] ([IdFuncionario])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_VendaFuncionario]
GO
USE [master]
GO
ALTER DATABASE [livraria] SET  READ_WRITE 
GO
