CREATE DATABASE db_micartaonline;

USE db_micartaonline;

--
--

CREATE TABLE `tb_user_pass` (
  `id` int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL,
  `user_id` varchar(50)  NOT NULL,
  `password_recover` varchar(50) NOT NULL,
  `email` varchar(50)  NOT NULL,
  `register_date` datetime NOT NULL,
  `connection_last` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_pass`
--
INSERT INTO `tb_user_pass` (`id`, `user`, `password`, `user_id`, `password_recover`, `email`, `register_date`, `connection_last`) VALUES
(1, 'jorge', '$2y$12$0ETg03pqVguE6Lj8M8Cbi.JE5ghqEgL1tEgG6fjad4kloVxZ6QXeu', 'jorge', '', 'jorgeordonezmorales@gmail.com', '2021-02-19 12:30:06', '2021-06-01 11:20:39')


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_user`
--


CREATE TABLE `tb_user_data_enterprice` (
  `id` int(10) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `template` enum('aaron','liam','magui','magdy') NOT NULL,
  `color_web1` varchar(50) NOT NULL,
  `color_web2` varchar(50) NOT NULL,
  `color_font` varchar(50) NOT NULL,
  `enterprice_name` varchar(50) NOT NULL,
  `web_name` varchar(150) NOT NULL,
  `social_network` text NOT NULL,
  `choose_social_network` text NOT NULL,
  `sw_elements` text NOT NULL,
  `about_us_title` varchar(100) NOT NULL,
  `about_us` text NOT NULL,
  `currency` enum('1','2','3') NOT NULL,
  `logo` varchar(100) NOT NULL,
  `front_page` text NOT NULL,
  `menu_images` text NOT NULL,
  `menu_text` text NOT NULL,
  `drinks` text NOT NULL,
  `drinks_text` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `schedule` text NOT NULL,
  `google_ubication` varchar(300) NOT NULL,
  `direction` varchar(150) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `accept_cards` varchar(20) NOT NULL,
  `wifi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_user`
--

INSERT INTO `tb_user_data_enterprice` (`id`, `user_id`, `template`, `color_web1`, `color_web2`, `color_font`, `enterprice_name`, `web_name`, `social_network`, `choose_social_network`, `sw_elements`, `about_us_title`, `about_us`, `currency`, `logo`, `front_page`, `menu_images`, `menu_text`, `drinks`, `drinks_text`, `email`, `telephone`, `schedule`, `google_ubication`, `direction`, `postal_code`, `city`, `state`, `country`, `accept_cards`, `wifi`) VALUES
(1, 'jorge', 'magui', 'rgba(241, 132, 230, 0.85)', 'rgb(8, 247, 65)', 'rgb(255,255,255)', 'Aloc_raise Restaurante-bar', 'aloc_raise-restaurante-bar-d67326a22642a324aa1b0745f2f17abb', 'a:5:{s:9:\"instagram\";s:17:\"www.instagram.com\";s:7:\"twitter\";s:15:\"www.twitter.com\";s:8:\"facebook\";s:16:\"www.facebook.com\";s:8:\"linkedin\";s:16:\"www.linkedin.com\";s:4:\"line\";s:0:\"\";}', 'a:4:{i:0;s:9:\"instagram\";i:1;s:7:\"twitter\";i:2;s:8:\"facebook\";i:3;s:8:\"linkedin\";}', 'a:6:{s:6:\"swwifi\";s:1:\"1\";s:17:\"swaceptartarjetas\";s:1:\"1\";s:11:\"swinstagram\";s:1:\"1\";s:9:\"swtwitter\";s:1:\"1\";s:10:\"swfacebook\";s:1:\"1\";s:10:\"swlinkedin\";s:1:\"1\";}', 'El mejor restaurante de Loja', 'a:4:{i:0;s:674:\"Te invito a mi restaurante\r\npasa, te voy a mostrar\r\nlos pinchitos y raciones\r\nque te voy apreparar    \";i:1;s:736:\"En esta casa somos reales, decimos lo siento, comentemos errores, damos segundas oportunidades. Nos divertimos, abrazamos, perdonamos, amamos. Somos una familia. \";i:2;s:671: \"Habrá paella de risas\r\nternera a la luz de luna\r\nrellenos de amor eterno\r\ny gambas a la dulzura         \";i:3;s:736:\"En esta casa somos reales, decimos lo siento, comentemos errores, damos segundas oportunidades. Nos divertimos, abrazamos, perdonamos, amamos. Somos una familia.                                    \";}', '1', 'a:1:{i:0;s:36:\"eedb0f0e36d116dee105d025583a0586.jpg\";}', 'a:6:{i:0;s:36:\"8ea7d70b45ce97b41dca114c56f0d404.jpg\";i:1;s:36:\"cc17d9cb1c3c1dc7fe27fe15f44d3133.jpg\";i:2;s:36:\"3dd3c8cb3838886c3a85a19406b1ab34.jpg\";i:3;s:36:\"feec2ca47133d51335c46b9b11b569d3.jpg\";i:4;s:36:\"98df12d2feb56af4977171bc7f75cdf4.jpg\";i:5;s:36:\"5f05721cc8991c96f75d45c7360eb858.gif\";}', 'a:6:{i:0;s:36:\"5a7cd1bc987aa1bba962ee1700a2e810.jpg\";i:1;s:36:\"e3f463efb53bf31750b38a1489991ecd.jpg\";i:2;s:36:\"ad876f20cc0adf02b444bcfb76509480.jpg\";i:3;s:36:\"65fb324eee6cc62b0bea16d6f3cd5cd5.jpg\";i:4;s:36:\"d5910798bf435419dba3c5a4f903794c.jpg\";i:5;s:36:\"688f147add6ff06d8ba6cf62b2b228b6.jpg\";}', 'a:7:{i:0;a:10:{i:0;s:14:\"PARA COMPARTIR\";i:1;a:14:{i:0;s:40:\"CROQUETAS DE JAM&Oacute;N IB&Eacute;RICO\";i:1;s:0:\"\";i:2;s:5:\"12,90\";i:3;s:10:\"cacahuetes\";i:4;s:10:\"crustaceos\";i:5;s:13:\"frutoscascara\";i:6;s:6:\"gluten\";i:7;s:6:\"huevos\";i:8;s:7:\"lacteos\";i:9;s:8:\"moluscos\";i:10;s:7:\"mostaza\";i:11;s:7:\"pescado\";i:12;s:6:\"sesamo\";i:13;s:4:\"soya\";}i:2;a:17:{i:0;s:20:\"PARRILLA DE VERDURAS\";i:1;s:103:\"Con tomate, pimientos rojos, pimientos verdes, calabacines, esp&aacute;rragos verdes, setas,y cebolleta\";i:2;s:5:\"12,00\";i:3;s:10:\"altramuces\";i:4;s:4:\"apio\";i:5;s:14:\"azufresulfitos\";i:6;s:10:\"cacahuetes\";i:7;s:10:\"crustaceos\";i:8;s:13:\"frutoscascara\";i:9;s:6:\"gluten\";i:10;s:6:\"huevos\";i:11;s:7:\"lacteos\";i:12;s:8:\"moluscos\";i:13;s:7:\"mostaza\";i:14;s:7:\"pescado\";i:15;s:6:\"sesamo\";i:16;s:4:\"soya\";}i:3;a:6:{i:0;s:23:\"CALAMARES A LA ANDALUZA\";i:1;s:22:\"Aros de calamar fritos\";i:2;s:5:\"10,50\";i:3;s:10:\"crustaceos\";i:4;s:6:\"gluten\";i:5;s:8:\"moluscos\";}i:4;a:6:{i:0;s:25:\"GAMBAS ROJAS A LA PLANCHA\";i:1;s:24:\"Con panecillos de tumaca\";i:2;s:5:\"12,00\";i:3;s:10:\"crustaceos\";i:4;s:6:\"gluten\";i:5;s:8:\"moluscos\";}i:5;a:3:{i:0;s:27:\"JAM&Oacute;N IB&Eacute;RICO\";i:1;s:0:\"\";i:2;s:5:\"19,50\";}i:6;a:3:{i:0;s:24:\"TABLA DE IB&Eacute;RICOS\";i:1;s:54:\"Lomo, chorizo, salchich&oacute;n, jam&oacute;n y queso\";i:2;s:5:\"16,50\";}i:7;a:5:{i:0;s:16:\"PULPO A LA BRASA\";i:1;s:19:\"Con patatas cocidas\";i:2;s:5:\"24,90\";i:3;s:10:\"crustaceos\";i:4;s:8:\"moluscos\";}i:8;a:5:{i:0;s:17:\"FOIE GRAS DE PATO\";i:1;s:42:\"Con tostas de pan integral, pasas y nueces\";i:2;s:5:\"12,00\";i:3;s:13:\"frutoscascara\";i:4;s:6:\"sesamo\";}i:9;a:3:{i:0;s:20:\"HUMMUS V DFGDFGDFGFD\";i:1;s:40:\"Garbanzos, aceite y piment&oacute;n rojo\";i:2;s:4:\"7,50\";}}i:1;a:8:{i:0;s:9:\"ENSALADAS\";i:1;a:8:{i:0;s:12:\"C&Eacute;SAR\";i:1;s:91:\"Pollo, lechuga mezclun, langostinos, queso parmes&aacute;no, salsa c&eacute;sar y pan frito\";i:2;s:4:\"6,90\";i:3;s:10:\"crustaceos\";i:4;s:6:\"gluten\";i:5;s:6:\"huevos\";i:6;s:7:\"lacteos\";i:7;s:7:\"pescado\";}i:2;a:5:{i:0;s:5:\"MIXTA\";i:1;s:96:\"Mezclun, at&uacute;n, tomate, aceitunas, huevos cocidos, ma&iacute;z y esp&aacute;rragos blancos\";i:2;s:4:\"6,50\";i:3;s:6:\"huevos\";i:4;s:7:\"lacteos\";}i:3;a:6:{i:0;s:23:\"ENSALADA DE TOMATE RAFF\";i:1;s:24:\"Con panecillos de tumaca\";i:2;s:4:\"7,90\";i:3;s:10:\"cacahuetes\";i:4;s:6:\"gluten\";i:5;s:7:\"mostaza\";}i:4;a:9:{i:0;s:35:\"ENSALADA DE QUESO DE CABRA Y NUECES\";i:1;s:62:\"Mezclun, tomates cherry, nueces, queso de cabra y jam&oacute;n\";i:2;s:5:\"10,90\";i:3;s:10:\"altramuces\";i:4;s:14:\"azufresulfitos\";i:5;s:10:\"cacahuetes\";i:6;s:13:\"frutoscascara\";i:7;s:6:\"huevos\";i:8;s:7:\"lacteos\";}i:5;a:6:{i:0;s:29:\"ENSALADA DE QUINOA Y AGUACATE\";i:1;s:66:\"Mezclun, tomate, tiras de pollo, aguacate, quinoa, chipotle y miel\";i:2;s:5:\"10,90\";i:3;s:10:\"cacahuetes\";i:4;s:10:\"crustaceos\";i:5;s:7:\"mostaza\";}i:6;a:5:{i:0;s:25:\"ENSALADA DE SALM&Oacute;M\";i:1;s:95:\"Brotes tiernos con dados de salm&oacute;n a la plancha, aguacate, tomates cherry y cebolla roja\";i:2;s:5:\"10,90\";i:3;s:6:\"gluten\";i:4;s:7:\"pescado\";}i:7;a:7:{i:0;s:17:\"BURRATA CON PESTO\";i:1;s:65:\"Burrata de b&uacute;fala , pesto, brotes tiernos y tomates cherry\";i:2;s:4:\"8,50\";i:3;s:6:\"gluten\";i:4;s:6:\"huevos\";i:5;s:7:\"lacteos\";i:6;s:4:\"soya\";}}i:2;a:7:{i:0;s:25:\"SANDWICHES Y HAMBURGUESAS\";i:1;a:5:{i:0;s:30:\"HAMBURGUESA CON QUESO DE CABRA\";i:1;s:83:\"Pan artesanal, carne de ternera 100%, queso de cabra, tomate y cebolla caramelizada\";i:2;s:5:\"11,90\";i:3;s:6:\"gluten\";i:4;s:6:\"huevos\";}i:2;a:7:{i:0;s:29:\"HAMBURGUESA CON BACON Y QUESO\";i:1;s:88:\"Pan artesanal, carne de ternera 100%, queso chedar, bacon, huevo frito, lechuga y tomate\";i:2;s:5:\"11,90\";i:3;s:6:\"gluten\";i:4;s:6:\"huevos\";i:5;s:7:\"lacteos\";i:6;s:7:\"mostaza\";}i:3;a:4:{i:0;s:24:\"HAMBURGUESA DE SOLOMILLO\";i:1;s:58:\"Pan artesanal, solomillo de ternera 100%, verduras frescas\";i:2;s:5:\"12,90\";i:3;s:6:\"gluten\";}i:4;a:7:{i:0;s:28:\"HAMBURGUESA DE SALM&Oacute;N\";i:1;s:131:\"Pan artesanal, filete de salm&oacute;n a la plancha, r&uacute;cula, tomate, salsa t&aacute;rtara, pepinillos y cebolla caramelizada\";i:2;s:4:\"9,90\";i:3;s:6:\"huevos\";i:4;s:7:\"lacteos\";i:5;s:7:\"mostaza\";i:6;s:7:\"pescado\";}i:5;a:8:{i:0;s:34:\"SANDWICH CLUB &quot;EL PUNTO&quot;\";i:1;s:97:\"Rebanadas de pan gallego, r&uacute;cula, huevo cocido, pollo, queso, tomate, salsa t&aacute;rtara\";i:2;s:4:\"8,00\";i:3;s:6:\"gluten\";i:4;s:6:\"huevos\";i:5;s:7:\"lacteos\";i:6;s:7:\"mostaza\";i:7;s:6:\"sesamo\";}i:6;a:3:{i:0;s:51:\"Estos platos se acompa&ntilde;a con patatas caseras\";i:1;s:0:\"\";i:2;s:0:\"\";}}i:3;a:6:{i:0;s:6:\"CARNES\";i:1;a:3:{i:0;s:22:\"SOLOMILLO A LA PLANCHA\";i:1;s:44:\"Con patatas fritas y pimientos padr&oacute;n\";i:2;s:5:\"19,00\";}i:2;a:3:{i:0;s:8:\"ENTRECOT\";i:1;s:44:\"Con patatas fritas y pimientos padr&oacute;n\";i:2;s:5:\"14,00\";}i:3;a:3:{i:0;s:23:\"CHULET&Oacute;N (2 pax)\";i:1;s:44:\"Con patatas fritas y pimientos padr&oacute;n\";i:2;s:5:\"39,00\";}i:4;a:3:{i:0;s:21:\"PICA&Ntilde;A (2 pax)\";i:1;s:44:\"Con patatas fritas y pimientos padr&oacute;n\";i:2;s:5:\"36,00\";}i:5;a:3:{i:0;s:16:\"TOMAHAWK (2 pax)\";i:1;s:44:\"Con patatas fritas y pimientos padr&oacute;n\";i:2;s:5:\"44,00\";}}i:4;a:5:{i:0;s:21:\"ESPECIAL NI&Ntilde;OS\";i:1;a:4:{i:0;s:21:\"ESPECIAL NI&Ntilde;OS\";i:1;s:0:\"\";i:2;s:2:\"12\";i:3;s:6:\"gluten\";}i:2;a:6:{i:0;s:21:\"ESPECIAL NI&Ntilde;OS\";i:1;s:0:\"\";i:2;s:2:\"23\";i:3;s:10:\"crustaceos\";i:4;s:13:\"frutoscascara\";i:5;s:6:\"gluten\";}i:3;a:5:{i:0;s:21:\"ESPECIAL NI&Ntilde;OS\";i:1;s:0:\"\";i:2;s:2:\"32\";i:3;s:6:\"gluten\";i:4;s:6:\"huevos\";}i:4;a:4:{i:0;s:21:\"ESPECIAL NI&Ntilde;OS\";i:1;s:0:\"\";i:2;s:2:\"44\";i:3;s:6:\"gluten\";}}i:5;a:4:{i:0;s:8:\"PESCADOS\";i:1;a:4:{i:0;s:8:\"PESCADOS\";i:1;s:0:\"\";i:2;s:2:\"12\";i:3;s:7:\"pescado\";}i:2;a:4:{i:0;s:8:\"PESCADOS\";i:1;s:0:\"\";i:2;s:2:\"23\";i:3;s:7:\"pescado\";}i:3;a:4:{i:0;s:8:\"PESCADOS\";i:1;s:0:\"\";i:2;s:2:\"21\";i:3;s:7:\"pescado\";}}i:6;a:4:{i:0;s:7:\"dessertS\";i:1;a:8:{i:0;s:7:\"Helados\";i:1;s:42:\"Chocolate, Vainilla, Yogurt,  Lim&oacute;n\";i:2;s:4:\"6,00\";i:3;s:13:\"frutoscascara\";i:4;s:6:\"gluten\";i:5;s:6:\"huevos\";i:6;s:7:\"lacteos\";i:7;s:4:\"soya\";}i:2;a:6:{i:0;s:8:\"Natillas\";i:1;s:0:\"\";i:2;s:4:\"8,00\";i:3;s:6:\"huevos\";i:4;s:7:\"lacteos\";i:5;s:4:\"soya\";}i:3;a:9:{i:0;s:18:\"Tarta tat&iacute;n\";i:1;s:0:\"\";i:2;s:5:\"10,00\";i:3;s:13:\"frutoscascara\";i:4;s:6:\"gluten\";i:5;s:6:\"huevos\";i:6;s:7:\"lacteos\";i:7;s:8:\"moluscos\";i:8;s:6:\"sesamo\";}}}', 'a:3:{i:0;s:36:\"ea9135a877f4b48948c37f0f26990192.jpg\";i:1;s:36:\"ea9135a877f4b48948c37f0f26990192.jpg\";i:2;s:36:\"16318c6b9cf0d8cf5ebff04f1d5c0130.jpg\";}', 'a:4:{i:0;a:9:{i:0;s:7:\"CERVEZA\";i:1;a:3:{i:0;s:11:\"CA&Ntilde;A\";i:1;s:0:\"\";i:2;s:4:\"1,50\";}i:2;a:3:{i:0;s:23:\"CA&Ntilde;A SIN ALCOHOL\";i:1;s:0:\"\";i:2;s:4:\"1,50\";}i:3;a:3:{i:0;s:11:\"COPA (33cl)\";i:1;s:0:\"\";i:2;s:4:\"2,20\";}i:4;a:3:{i:0;s:23:\"COPA SIN ALCOHOL (33cl)\";i:1;s:0:\"\";i:2;s:4:\"2,20\";}i:5;a:3:{i:0;s:13:\"TERCIO 5*****\";i:1;s:0:\"\";i:2;s:4:\"2,20\";}i:6;a:3:{i:0;s:27:\"TERCIO ALAMBRA RESERVA 1925\";i:1;s:0:\"\";i:2;s:4:\"2,50\";}i:7;a:3:{i:0;s:26:\"TERCIO ESTRELLA DE GALICIA\";i:1;s:0:\"\";i:2;s:4:\"2,20\";}i:8;a:3:{i:0;s:28:\"BOTELL&Iacute;N MAHOU 5*****\";i:1;s:0:\"\";i:2;s:4:\"1,50\";}}i:1;a:9:{i:0;s:9:\"REFRESCOS\";i:1;a:3:{i:0;s:16:\"REFRESCOS VARIOS\";i:1;s:77:\"Coca cola, coca cola light, coca cola zero, fanta lim&oacute;n, fanta naranja\";i:2;s:4:\"2,20\";}i:2;a:3:{i:0;s:6:\"NESTEA\";i:1;s:16:\"Nestea, aquarius\";i:2;s:4:\"2,60\";}i:3;a:3:{i:0;s:5:\"ZUMOS\";i:1;s:38:\"Naranja, pi&ntilde;a, melocot&oacute;n\";i:2;s:4:\"2,50\";}i:4;a:3:{i:0;s:23:\"SOLAN DE CABRAS (500cl)\";i:1;s:0:\"\";i:2;s:4:\"1,80\";}i:5;a:3:{i:0;s:20:\"SOLAN DE CABRAS (1L)\";i:1;s:0:\"\";i:2;s:4:\"2,80\";}i:6;a:3:{i:0;s:20:\"VICHY CATAL&Aacute;N\";i:1;s:0:\"\";i:2;s:4:\"2,20\";}i:7;a:3:{i:0;s:13:\"SAN PELEGRINO\";i:1;s:0:\"\";i:2;s:4:\"2,50\";}i:8;a:3:{i:0;s:7:\"PERRIER\";i:1;s:0:\"\";i:2;s:4:\"2,50\";}}i:2;a:6:{i:0;s:13:\"VINOS BLANCOS\";i:1;a:3:{i:0;s:15:\"RUEDA (Botella)\";i:1;s:15:\"Copa 4,00&euro;\";i:2;s:5:\"15,00\";}i:2;a:3:{i:0;s:25:\"ALBARI&Ntilde;O (Botella)\";i:1;s:15:\"Copa 5,00&euro;\";i:2;s:5:\"19,00\";}i:3;a:3:{i:0;s:11:\"RIAS BAIXAS\";i:1;s:0:\"\";i:2;s:5:\"20,00\";}i:4;a:3:{i:0;s:5:\"RIOJA\";i:1;s:0:\"\";i:2;s:5:\"18,00\";}i:5;a:3:{i:0;s:18:\"RIBERA DE GUADIANA\";i:1;s:0:\"\";i:2;s:5:\"35,00\";}}i:3;a:10:{i:0;s:12:\"VINOS TINTOS\";i:1;a:3:{i:0;s:5:\"RIOJA\";i:1;s:15:\"Copa 4,00&euro;\";i:2;s:5:\"15,00\";}i:2;a:3:{i:0;s:16:\"RIBERA DEL DUERO\";i:1;s:15:\"Copa 5,00&euro;\";i:2;s:5:\"15,00\";}i:3;a:3:{i:0;s:4:\"TORO\";i:1;s:0:\"\";i:2;s:5:\"20,00\";}i:4;a:3:{i:0;s:17:\"VINO DE LA TIERRA\";i:1;s:0:\"\";i:2;s:5:\"25,00\";}i:5;a:3:{i:0;s:6:\"BIERZO\";i:1;s:0:\"\";i:2;s:5:\"22,00\";}i:6;a:3:{i:0;s:15:\"VINOS DE MADRID\";i:1;s:0:\"\";i:2;s:5:\"18,00\";}i:7;a:3:{i:0;s:7:\"JUMILLA\";i:1;s:0:\"\";i:2;s:5:\"23,00\";}i:8;a:3:{i:0;s:5:\"YECLA\";i:1;s:0:\"\";i:2;s:5:\"25,00\";}i:9;a:8:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:10:\"altramuces\";i:4;s:4:\"apio\";i:5;s:14:\"azufresulfitos\";i:6;s:10:\"cacahuetes\";i:7;s:13:\"frutoscascara\";}}}', 'alocraise@gmail.com', 'a:1:{i:0;s:13:\"+593985646545\";}', 'a:6:{i:0;s:17:\"Lunes 9:00 a 0:00\";i:1;s:18:\"Martes 9:00 a 0:00\";i:2;s:22:\"Miércoles 9:00 a 0:00\";i:3;s:18:\"Jueves 9:00 a 0:00\";i:4;s:19:\"Viernes 9:00 a 0:00\";i:5;s:25:\"Sábado y Domingo cerrado\";}', 'https://goo.gl/maps/5pTQRGfn8XtE4N8a7', 'Calle Riofr&iacute;o 45 local2B', '2598766', 'Loja', 'Loja', 'Ecuador', '', 'a:2:{s:9:\"wifi_name\";s:9:\"alocraise\";s:9:\"wifi_pass\";s:7:\"PtRt258\";}')

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_user`
--
ALTER TABLE `tb_user_data_enterprice`
  ADD PRIMARY KEY (`id`);
COMMIT;

--
-- Estructura de tabla para la tabla `tb_menu_day`
--

CREATE TABLE `tb_menu_day` (
  `id` int(10) PRIMARY KEY NOT NULL ,
  `user_id` varchar(50)  NOT NULL,
  `first_plate` text  NOT NULL,
  `second_plate` text  NOT NULL,
  `dessert` text  NOT NULL,
  `includes` text NOT NULL,
  `price` float NOT NULL,
  `sw_menu_images` enum('1','')  NOT NULL,
  `img_menu_images` varchar(100)  NOT NULL
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_menu_day`
--

INSERT INTO `tb_menu_day` (`id`, `user_id`, `first_plate`, `second_plate`,`dessert`, `includes`, `price`,`sw_menu_images`, `img_menu_images`) VALUES
(1, 'jorge', 'a:5:{i:0;s:30:\"Ensalada de tomate y ventresca\";i:1;s:19:\"Cazuela de Judiones\";i:2;s:16:\"Gazpacho Andaluz\";i:3;s:17:\"Paella valenciana\";i:4;s:25:\"Tallarines a la Carbonara\";}', 'a:5:{i:0;s:20:\"Pollo a la pepitoria\";i:1;s:39:\"Lomo de vaca asado con patatas al horno\";i:2;s:37:\"Dorada a la sal con patatas panaderas\";i:3;s:24:\"Confit de Pato agridulce\";i:4;s:22:\"Merluza en salsa verde\";}', '','Incluye pan drinks y dessert', 25, '', 'a:1:{i:0;s:36:\"29938cae6727790a47491882e556fce7.jpg\";}')

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `user_pass`
--

CREATE TABLE `tb_personal_data_user` (
  `id` int(10) NOT NULL PRIMARY KEY ,
  `user_id` varchar(50)  NOT NULL,
  `password_recover` varchar(50) NOT NULL,
  `email` varchar(50)  NOT NULL,
  `names` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `id_card` varchar(15) NOT NULL,
  `date_birth` varchar(50)  NOT NULL,
  `direction` varchar(70) NOT NULL,
  `direction_number` int(10) NOT NULL,
  `plant` varchar(30) NOT NULL,
  `postal_code` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `telephone` varchar(30)  NOT NULL,
  `register_date` datetime NOT NULL,
  `connection_last` datetime NOT NULL,
  `subscription_name` varchar(70) NOT NULL,
  `subscription_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_personales`
--

INSERT INTO `tb_personal_data_user` (`id`, `user_id`, `password_recover`, `email`, `names`, `surname`, `id_card`, `date_birth`, `direction`, `direction_number`, `plant`, `postal_code`, `city`, `state`, `country`, `telephone`, `register_date`, `connection_last`, `subscription_name`, `subscription_price`) VALUES
(1, 'jorge', '', 'jorgeordonezmorales@gmail.com', '', '', '', '', '', 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0)

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `comments`
--
CREATE TABLE `tb_comments` (
  `id` int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `user` varchar(50)  NOT NULL,
   `email` varchar(70)  NOT NULL,
  `content` varchar(255) NOT NULL,
  `reply` text NOT NULL,
  `status` enum('1','2') NOT NULL,
  `registration_date` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--

--
--
-- Volcado de datos para la tabla `user_pass`
--
-- ----------------------------------------------------
--
-- Estructura de tabla para la tabla `menssages`
--
CREATE TABLE `tb_messages` (
  `id` int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `email` varchar(70)  NOT NULL,
  `name` varchar(50) NOT NULL,
  `affair` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `registration_date` datetime NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `numero_contrato` int(50)  NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `id` int(10) NOT NULL  ,
  `user_id` varchar(50)  NOT NULL,
  `servicio` varchar(100)  NOT NULL,
  `fecha_creado_contrato` datetime NOT NULL,
  `fecha_final_contrato` date NOT NULL,
  `comentario` varchar(255)  NOT NULL,
  `state` enum('generado','activo', 'anulado', 'vencido','otro') NOT NULL
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
 AUTO_INCREMENT = 1000
;

--
-- Volcado de datos para la tabla `user_pass`
--


-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `numero_factura` int(50)  NOT NULL PRIMARY KEY  AUTO_INCREMENT,
  `id` int(10) NOT NULL,
  `user_id` varchar(50)  NOT NULL,
  `fecha_creada` datetime NOT NULL,
  `servicio` varchar(100)  NOT NULL,
  `importe` float  NOT NULL,
  `comentario` varchar(255)  NOT NULL,
  `state` enum('generada','enviada', 'cobrada', 'rechazada', 'devuelta','otro' ) NOT NULL

 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
 AUTO_INCREMENT = 1000
;

--
-- Volcado de datos para la tabla `user_pass`
--


-- --------------------------------------------------------


--
-- Índices para tablas volcadas
--

