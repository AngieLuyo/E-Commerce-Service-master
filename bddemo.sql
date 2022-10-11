/****** Object:  Table [dbo].[categoria]    Script Date: 11/10/2022 06:03:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
    [id] [int] NOT NULL,
    [nombre] [varchar](100) NULL,
    [vigencia] [bit] NULL,
    [foto_id] [bigint] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[cliente]    Script Date: 11/10/2022 06:03:01 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[cliente](
    [id] [int] NOT NULL,
    [departamento] [varchar](100) NULL,
    [direccion_envio] [varchar](500) NULL,
    [distrito] [varchar](100) NULL,
    [nombres] [varchar](100) NULL,
    [num_doc] [varchar](11) NULL,
    [provincia] [varchar](100) NULL,
    [tipo_doc] [varchar](20) NULL,
    [foto_id] [bigint] NULL,
    [apellido_materno] [varchar](100) NULL,
    [apellido_paterno] [varchar](100) NULL,
    [telefono] [varchar](9) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[detalle_pedido]    Script Date: 11/10/2022 06:03:01 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[detalle_pedido](
    [id] [int] NOT NULL,
    [cantidad] [int] NULL,
    [precio] [float] NULL,
    [pedido_id] [int] NULL,
    [platillo_id] [int] NULL,
     PRIMARY KEY CLUSTERED
    (
[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[documento_almacenado]    Script Date: 11/10/2022 06:03:01 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[documento_almacenado](
    [id] [bigint] NOT NULL,
    [eliminado] [bit] NOT NULL,
    [estado] [varchar](255) NULL,
    [extension] [varchar](255) NULL,
    [file_name] [varchar](255) NULL,
    [nombre] [varchar](255) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[pedido]    Script Date: 11/10/2022 06:03:01 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[pedido](
    [id] [int] NOT NULL,
    [anular_pedido] [bit] NULL,
    [fecha_compra] [datetime2](7) NULL,
    [monto] [float] NULL,
    [cliente_id] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[platillo]    Script Date: 11/10/2022 06:03:01 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[platillo](
    [id] [int] NOT NULL,
    [descripcion_platillo] [varchar](5000) NULL,
    [nombre] [varchar](100) NULL,
    [precio] [float] NULL,
    [stock] [int] NULL,
    [vigencia] [bit] NULL,
    [categoria_id] [int] NULL,
    [foto_id] [bigint] NULL,
    [recomendado] [bit] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[usuario]    Script Date: 11/10/2022 06:03:01 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[usuario](
    [id] [int] NOT NULL,
    [clave] [varchar](20) NULL,
    [email] [varchar](500) NULL,
    [vigencia] [bit] NULL,
    [cliente_id] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    INSERT [dbo].[categoria] ([id], [nombre], [vigencia], [foto_id]) VALUES (1, N'Tallarines', 1, 8)
    GO
    INSERT [dbo].[categoria] ([id], [nombre], [vigencia], [foto_id]) VALUES (2, N'Arroz', 1, 9)
    GO
    INSERT [dbo].[categoria] ([id], [nombre], [vigencia], [foto_id]) VALUES (3, N'Postres', 1, 22)
    GO
    INSERT [dbo].[cliente] ([id], [departamento], [direccion_envio], [distrito], [nombres], [num_doc], [provincia], [tipo_doc], [foto_id], [apellido_materno], [apellido_paterno], [telefono]) VALUES (1, N'Lima', N'av. los rosales', N'Carabayllo', N'Angie ', N'78019778', N'Lima', N'DNI', 2, N'Jimenez', N'Luyo', N'917967148')
    GO
    INSERT [dbo].[cliente] ([id], [departamento], [direccion_envio], [distrito], [nombres], [num_doc], [provincia], [tipo_doc], [foto_id], [apellido_materno], [apellido_paterno], [telefono]) VALUES (2, N'Lima', N'av. los olivos', N'Los Olivos', N'Jose Luis', N'56654123', N'Lima', N'DNI', 3, N'Jimenez', N'Calderon', N'963159632')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (1, 0, N'A', N'.jpg', N'0fa5c76a-521e-4fb5-b9c9-1d84a183d892', N'Arroz con pato')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (2, 0, N'A', N'.jpg', N'37813d3d-da13-4777-bf14-da55f376e69b', N'Angie Photo')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (3, 0, N'A', N'.jpg', N'8609515d-d99c-406e-9729-abdf1f00175d', N'Jorge Photo')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (4, 0, N'A', N'.jpg', N'2ef59ec9-d6f4-4dbc-b2ef-050ec63231d7', N'profilePh168202117195')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (6, 0, N'A', N'.jpg', N'51bae59b-a942-44a5-bc51-d7025c742603', N'profilePh2182021143528')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (7, 0, N'A', N'.jpg', N'0e50bd47-3325-40ef-976e-3b8394a76c58', N'profilePh218202115471')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (8, 0, N'A', N'.png', N'4ccffdc9-7beb-4d7b-9056-1a92414c0fb7', N'Tallarines')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (9, 0, N'A', N'.png', N'353d7d4d-8e02-4acc-a311-35664c574b72', N'Arroz')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (10, 0, N'A', N'.png', N'42402522-20fe-4492-8632-d3cffbfa79df', N'Arroz Chaufa')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (11, 0, N'A', N'.png', N'd5e6d889-de10-4bbb-984d-a42cb69f2ce3', N'Causa Limeña')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (12, 0, N'A', N'.png', N'd3682e52-9932-4093-a5fa-0be72668990c', N'Saltado de Carne')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (13, 0, N'A', N'.png', N'7d743dab-55f0-4e2e-84f6-01f968da1c57', N'Ají de Gallina')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (14, 0, N'A', N'.png', N'5b21f3a6-b117-445a-9155-e1d4d1a2d072', N'Locro de Zapallo')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (15, 0, N'A', N'.png', N'6a3acd4d-a554-4b0d-ba34-8512021d0a5b', N'Arroz con Pollo')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (16, 0, N'A', N'.png', N'56b67c0f-94f3-4366-bf36-f376119d4f06', N'Tallarines Rojos')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (17, 0, N'A', N'.png', N'd3c03e01-aeff-4bb1-9c41-f59db483dbd5', N'Seco de Cabrito')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (18, 0, N'A', N'.png', N'93b013a8-5801-4d8c-9ebe-7c3f2ee52ae5', N'Humitas')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (19, 0, N'A', N'.png', N'c0d7483f-b37f-40a6-a98d-b975ae64d08c', N'Queso Helado')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (20, 0, N'A', N'.png', N'ea79db70-4557-43c6-9dbc-4edb0e6f77e5', N'Mondonguito')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (21, 0, N'A', N'.png', N'89a37742-9eb2-4727-95a5-aa59eb713908', N'Tallarines Verdes')
    GO
    INSERT [dbo].[documento_almacenado] ([id], [eliminado], [estado], [extension], [file_name], [nombre]) VALUES (22, 0, N'A', N'.jpg', N'569ef8c3-0c11-4047-9218-d7094d39406d', N'Postres')
    GO
    INSERT [dbo].[platillo] ([id], [descripcion_platillo], [nombre], [precio], [stock], [vigencia], [categoria_id], [foto_id], [recomendado]) VALUES (1, N'Es un sabroso plato muy popular en Perú que se prepara con arroz frito, diversas carnes, verduras y salsa de soja. Posiblemente es uno de los platos más consumidos en la gastronomía peruana por su fácil elaboración y su rico sabor. Hay muchas variedades ya que puede prepararse con pollo, carne de ternera, huevo o salchicha.', N'Arroz Chaufa', 15, 50, 1, 2, 10, 1)
    GO
    INSERT [dbo].[platillo] ([id], [descripcion_platillo], [nombre], [precio], [stock], [vigencia], [categoria_id], [foto_id], [recomendado]) VALUES (2, N'El arroz con pollo es un plato típico de América Latina y España 1? con variaciones regionales según el país. Consiste en arroz cocinado con pollo, en presas o desmechado, verduras (ají pimentón, zanahoria en cubos, apio, habichuelas, cebolla, maíz desgranado, aceitunas, arvejas, alcaparras), y sazonado con especias (laurel, tomillo, cilantro, ajo)', N'Arroz con Pollo', 20, 50, 1, 2, 15, 1)
    GO
    INSERT [dbo].[platillo] ([id], [descripcion_platillo], [nombre], [precio], [stock], [vigencia], [categoria_id], [foto_id], [recomendado]) VALUES (3, N'Los Tallarines rojos con pollo es un plato de fondo que se come mucho en el Perú. Este plato es una fusión de la comida peruana e italiana, ya que se origina en el spaghetti ala bolognese.', N'Tallarines Rojos', 6, 50, 1, 1, 16, 1)
    GO
    INSERT [dbo].[platillo] ([id], [descripcion_platillo], [nombre], [precio], [stock], [vigencia], [categoria_id], [foto_id], [recomendado]) VALUES (4, N'Una de las comidas de la costar que suele acompañar los platos de carne, se tratan de unos tallarines a base de leche evaporada, espinaca, nueces pecanas, albahaca y parmesano. Todos estos ingredientes forman la característica salsa verde.', N'Tallarines Verdes', 12, 50, 1, 1, 21, 1)
    GO
    INSERT [dbo].[platillo] ([id], [descripcion_platillo], [nombre], [precio], [stock], [vigencia], [categoria_id], [foto_id], [recomendado]) VALUES (5, N'Como su nombre indica, el arroz con pato es un plato de arroz, picante y ácido, cuyos ingredientes principales son el pato, macerado en ajo y vinagre, ají amarillo que le da el picor y un arroz verdoso gracias al culantro que se añade.? Es común añadir en la cocción una cantidad al gusto de cerveza negra o de chicha de jora.? Se sirve acompañado con salsa criolla. Existen variantes que remplazan el culantro por palillo, para darle un color amarillo.', N'Arroz con Pato', 25, 50, 1, 2, 1, 1)
    GO
    INSERT [dbo].[platillo] ([id], [descripcion_platillo], [nombre], [precio], [stock], [vigencia], [categoria_id], [foto_id], [recomendado]) VALUES (6, N'El siguiente plato se sirve con una base de arroz blanco y papas, se prepara un sofrito con ají amarillo, ajo, pan, cebolla y parmesano, se le añade la gallina hervida desmenuzada y nueces molidas. Listo para servir.', N'Ají de Gallina', 18, 50, 1, 2, 13, 1)
    GO
    INSERT [dbo].[platillo] ([id], [descripcion_platillo], [nombre], [precio], [stock], [vigencia], [categoria_id], [foto_id], [recomendado]) VALUES (7, N'Uno de los platos típicos de la costa, también conocido como guiso de auyama o de calabaza. Básicamente se trata de un locro de zapallo y papa, acompañado de maíz, cebolla, ajo, guisantes, sazonado con orégano y sal al gusto, y aceite. Es un plato que suele acompañarse con arroz.', N'Locro de Zapallo', 25, 50, 1, 2, 14, 1)
    GO
    INSERT [dbo].[usuario] ([id], [clave], [email], [vigencia], [cliente_id]) VALUES (1, N'angie123', N'angieluyo123@hotmail.com', 1, 1)
    GO
    INSERT [dbo].[usuario] ([id], [clave], [email], [vigencia], [cliente_id]) VALUES (2, N'joseluis123', N'joseluiscalderon91@hotmail.com', 1, 2)
    GO
ALTER TABLE [dbo].[categoria] ADD  DEFAULT (NULL) FOR [nombre]
    GO
ALTER TABLE [dbo].[categoria] ADD  DEFAULT (NULL) FOR [vigencia]
    GO
ALTER TABLE [dbo].[categoria] ADD  DEFAULT (NULL) FOR [foto_id]
    GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [departamento]
    GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [direccion_envio]
    GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [distrito]
    GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [nombres]
    GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [num_doc]
    GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [provincia]
    GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [tipo_doc]
    GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [foto_id]
    GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [apellido_materno]
    GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [apellido_paterno]
    GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [telefono]
    GO
ALTER TABLE [dbo].[detalle_pedido] ADD  DEFAULT (NULL) FOR [cantidad]
    GO
ALTER TABLE [dbo].[detalle_pedido] ADD  DEFAULT (NULL) FOR [precio]
    GO
ALTER TABLE [dbo].[detalle_pedido] ADD  DEFAULT (NULL) FOR [pedido_id]
    GO
ALTER TABLE [dbo].[detalle_pedido] ADD  DEFAULT (NULL) FOR [platillo_id]
    GO
ALTER TABLE [dbo].[documento_almacenado] ADD  DEFAULT (NULL) FOR [estado]
    GO
ALTER TABLE [dbo].[documento_almacenado] ADD  DEFAULT (NULL) FOR [extension]
    GO
ALTER TABLE [dbo].[documento_almacenado] ADD  DEFAULT (NULL) FOR [file_name]
    GO
ALTER TABLE [dbo].[documento_almacenado] ADD  DEFAULT (NULL) FOR [nombre]
    GO
ALTER TABLE [dbo].[pedido] ADD  DEFAULT (NULL) FOR [anular_pedido]
    GO
ALTER TABLE [dbo].[pedido] ADD  DEFAULT (NULL) FOR [fecha_compra]
    GO
ALTER TABLE [dbo].[pedido] ADD  DEFAULT (NULL) FOR [monto]
    GO
ALTER TABLE [dbo].[pedido] ADD  DEFAULT (NULL) FOR [cliente_id]
    GO
ALTER TABLE [dbo].[platillo] ADD  DEFAULT (NULL) FOR [descripcion_platillo]
    GO
ALTER TABLE [dbo].[platillo] ADD  DEFAULT (NULL) FOR [nombre]
    GO
ALTER TABLE [dbo].[platillo] ADD  DEFAULT (NULL) FOR [precio]
    GO
ALTER TABLE [dbo].[platillo] ADD  DEFAULT (NULL) FOR [stock]
    GO
ALTER TABLE [dbo].[platillo] ADD  DEFAULT (NULL) FOR [vigencia]
    GO
ALTER TABLE [dbo].[platillo] ADD  DEFAULT (NULL) FOR [categoria_id]
    GO
ALTER TABLE [dbo].[platillo] ADD  DEFAULT (NULL) FOR [foto_id]
    GO
ALTER TABLE [dbo].[platillo] ADD  DEFAULT (NULL) FOR [recomendado]
    GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [clave]
    GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [email]
    GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [vigencia]
    GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [cliente_id]
    GO
ALTER TABLE [dbo].[categoria]  WITH CHECK ADD  CONSTRAINT [FKbyh5eextelhhs5gyxj7giuspd] FOREIGN KEY([foto_id])
    REFERENCES [dbo].[documento_almacenado] ([id])
    GO
ALTER TABLE [dbo].[categoria] CHECK CONSTRAINT [FKbyh5eextelhhs5gyxj7giuspd]
    GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [FKorx40wtfkkqg46bht8mt4vb3a] FOREIGN KEY([foto_id])
    REFERENCES [dbo].[documento_almacenado] ([id])
    GO
ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FKorx40wtfkkqg46bht8mt4vb3a]
    GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD  CONSTRAINT [FKgqvba9e7dildyw45u0usdj1k2] FOREIGN KEY([pedido_id])
    REFERENCES [dbo].[pedido] ([id])
    GO
ALTER TABLE [dbo].[detalle_pedido] CHECK CONSTRAINT [FKgqvba9e7dildyw45u0usdj1k2]
    GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD  CONSTRAINT [FKhyip16w63t7nx78o23cu3fks4] FOREIGN KEY([platillo_id])
    REFERENCES [dbo].[platillo] ([id])
    GO
ALTER TABLE [dbo].[detalle_pedido] CHECK CONSTRAINT [FKhyip16w63t7nx78o23cu3fks4]
    GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD  CONSTRAINT [FK30s8j2ktpay6of18lbyqn3632] FOREIGN KEY([cliente_id])
    REFERENCES [dbo].[cliente] ([id])
    GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [FK30s8j2ktpay6of18lbyqn3632]
    GO
ALTER TABLE [dbo].[platillo]  WITH CHECK ADD  CONSTRAINT [FK42mi3n2tu0656xlm58cpaojb] FOREIGN KEY([foto_id])
    REFERENCES [dbo].[documento_almacenado] ([id])
    GO
ALTER TABLE [dbo].[platillo] CHECK CONSTRAINT [FK42mi3n2tu0656xlm58cpaojb]
    GO
ALTER TABLE [dbo].[platillo]  WITH CHECK ADD  CONSTRAINT [FKkchwn4n0badohpdsfeb2qwbca] FOREIGN KEY([categoria_id])
    REFERENCES [dbo].[categoria] ([id])
    GO
ALTER TABLE [dbo].[platillo] CHECK CONSTRAINT [FKkchwn4n0badohpdsfeb2qwbca]
    GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FKp3dqdf5mc3lqr5y9p3b0omjl9] FOREIGN KEY([cliente_id])
    REFERENCES [dbo].[cliente] ([id])
    GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FKp3dqdf5mc3lqr5y9p3b0omjl9]
    GO
