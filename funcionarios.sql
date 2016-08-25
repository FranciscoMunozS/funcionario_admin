-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-08-2016 a las 15:47:19
-- Versión del servidor: 5.5.46
-- Versión de PHP: 5.3.10-1ubuntu3.21

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `funcionarios2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionarios`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `unidad` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fono` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=166 ;

--
-- Volcado de datos para la tabla `funcionarios`
--

INSERT INTO `employee` (`id`, `nombre`, `file`, `division`, `unidad`, `email`, `fono`) VALUES
(1, 'Adolfo Pardo', 'uploads/adolfo_pardo.jpg', 'División Administración y Finanzas', 'Oficina de Partes', 'apardo@goredelosrios.cl', 2284358),
(2, 'Alejandra Moll', 'uploads/alejandra_moll.jpg', 'División Análisis Control y Gestión', 'Programación de Inversiones', 'amoll@goredelosrios.cl', 2284346),
(3, 'Alejandro Abarca', 'uploads/alejandro_abarca.jpg', 'Auditoria Interna', 'Auditoria Interna', 'aabarca@goredelosrios.cl', 2284321),
(4, 'Alejandro Gallardo ', 'uploads/alejandro_gallardo.jpg', 'División Análisis Control y Gestión', 'Profesional  ', 'agallardo@goredelosrios.cl', 2284386),
(5, 'Alvaro Saravia ', 'uploads/alvaro_saravia.jpg', 'División AdministraciÃ³n y Finanzas', 'Profesional de Adquisiciones', 'asaravia@goredelosrios.cl', 2284318),
(7, 'Alejandro Kohler', 'uploads/alejandro_kohler.jpg', 'División Análisis Control y Gestión', 'Participación Ciudadana', 'akohler@goredelosrios.cl', 2283845),
(8, 'Andrea Ramirez', 'uploads/andrea_ramirez.jpg', 'Gabinete', 'Periodista', 'aramirez@goredelosrios.cl', 22834206),
(10, 'Andres Reyes ', 'uploads/andres_reyes.jpg', 'División Administración y Finanzas', 'Auxiliar', 'wreyes@goredelosrios.cl', 2284377),
(11, 'Angela Rodriguez', 'uploads/angela_rodriguez.jpg', 'División Análisis Control y Gestión', 'Encargada', 'arodrÃ­guez@goredelosrios.cl', 2284336),
(12, 'Angelica Bidegain', 'uploads/Angelica.jpg', 'Intendencia', 'Secretaria Interior', 'abidegain@interior.gov.cl', 2283830),
(13, 'Ana Jara', 'uploads/anita_jara.jpg', 'División Planificación y Desarrollo', 'Secretaria de Diplade', 'ajara@goredelosrios.cl', 2284330),
(14, 'Armando Ortega', 'uploads/armando_ortega.jpg', 'Consejo Regional', 'Administrativo Core', 'aortega@goredelosrios.cl', 2284381),
(15, 'Armin Fernandez', 'uploads/armin_fernandez.jpg', 'División Análisis Control y Gestión', 'Unidad de Electrificación Rural', 'afernandez@goredelosrios.cl', 2284354),
(16, 'Arnoldo Jaramillo', 'uploads/no_profile.jpg', 'Interior', 'Dpto. de Finanzas', 'ajaramillo@interior.gov.cl', 2283802),
(17, 'Beatriz Parra', 'uploads/beatriz_parra.jpg', 'División Planificación y Desarrollo', 'División de Planificación', 'bparra@goredelosrios.cl', 2284387),
(19, 'Camila Matus', 'uploads/camila_matus.jpg', 'Gabinete', 'Dpto. Jurídico', 'cmatus@goredelosrios.cl', 2284309),
(20, 'Carmen Gloria Vargas', 'uploads/carmen_vargas.jpg', 'División Análisis Control y Gestión', 'Secretaria Unidad de  Deporte', 'cvargas@goredelosrios.cl', 2284363),
(22, 'Carlos Baeza', 'uploads/carlos_baeza.jpg', 'División Análisis Control y Gestión', 'Abogado ', 'cabeza@goredelosrios.cl', 2284313),
(23, 'Carlos Moreno', 'uploads/carlos_moreno.jpg', 'División Planificación y Desarrollo', 'Profesional Pir', 'cmoreno@goredelosrios.cl', 2284383),
(25, 'Carolina Villanueva', 'uploads/carolina_villanueva.jpg', 'División Análisis Control y Gestión', 'Secretaria  División', 'cvillanueva@goredelosrios.cl', 2284308),
(26, 'Cecil Zuñiga', 'uploads/cecil_zuniga.jpg', 'División Análisis Control y Gestión', 'Encargado de Deportes ', 'czuniga@goredelosrios.cl', 2284384),
(27, 'Cecilia Alamos', 'uploads/cecilia_alamos.jpg', 'División Análisis Control y Gestión', 'Secretaria Dpto. Jurí­dico', 'calamos@goredelosrio.cl', 2284388),
(28, 'Cecilia Quintana', 'uploads/cecilia_quintana.jpg', 'División Planificación y Desarrollo', 'Encargada de Planificación EstratÃ©gica', 'cquintana@goredelosrios.cl', 2284335),
(29, 'Cecilia Candia', 'uploads/cecilia_candia.jpg', 'División Administración y Finanzas', 'Encargada Servicios Generales', 'ccandia@goredelosrios.cl', 2284398),
(30, 'Cesar Acuña', 'uploads/cesar_acuna.jpg', 'División Planificación y Desarrollo', 'Profesional Planificación', 'cacuna@goredelosrios.cl', 2284337),
(31, 'Cesar Perez', 'uploads/cesar_perez.jpg', 'División Administración y Finanzas', 'Encargado Dpto. de Finanzas ', 'cperez@goredelosrios.cl', 2284349),
(32, 'Christian Burgos', 'uploads/christian_burgos.jpg', 'División Administración y Finanzas', 'Dpto. de Finanzas', 'cburgos@goredelosrio.cl', 2284303),
(33, 'Claudia Jara', 'uploads/claudia_jara.jpg', 'División Administración y Finanzas', 'Dpto. Finanzas', 'cjara@goredelosrios.cl', 2284392),
(34, 'Claudio Reyes', 'uploads/claudio_reyes.jpg', 'División Administración y Finanzas', 'Conductor', 'creyes@goredelosrios.cl', 97377993),
(35, 'Cristobal Sandoval ', 'uploads/cristobal_sandoval.jpg', 'Diplade', 'Encargado Participación Ciudadana', 'csandoval @goredelosrios.cl', 2283882),
(36, 'Cristian Aguilar', 'uploads/cristian_aguilar.jpg', 'División Administración y Finanzas', 'Finanzas', 'caguilar@goredelosrios.cl', 2284389),
(37, 'Cristian Muñoz', 'uploads/cristian_munoz.jpg', 'División Planificación y Desarrollo', 'Profesional Pir', 'cmunozj@goredelosrios.cl', 2284379),
(39, 'Egon Montecinos', 'uploads/egon_montecinos.jpg', 'Intendente', 'Intendente', 'emontecinos@goredelosrios.cl', 2283838),
(40, 'Erwin Rosas', 'uploads/erwin_rosas.jpg', 'Gabinete', 'Administrador Regional', 'erosas@goredelosrios.cl', 2283899),
(41, 'Edith Monardez', 'uploads/edith_monardez.jpg', 'División Análisis Control y Gestión', 'Analista de Inversiones', 'emonardez@goredelosrios.cl', 2284342),
(42, 'Elisa Soto', 'uploads/elisa_soto.jpg', 'División Planificación y Desarrollo', 'Profesional de  Planificación', 'esoto@goredelosrios.cl', 2284364),
(43, 'Eric Vidal', 'uploads/eric_vidal.jpg', 'División Administración y Finanzas', 'Amplificación  GORE', 'evidal@goredelosrios.cl', 2284326),
(44, 'Estefani Baima', 'uploads/estefani_baima.jpg', 'Gabinete', 'Organizaciones Sociales', 'ebaima@goredelosrios.cl', 2284385),
(45, 'Felipe Lopez', 'uploads/felipe_lopez.jpg', 'Interior', 'Organizaciones Sociales', 'flopez@interior.gov.cl', 2284367),
(46, 'Felipe Schultz', 'uploads/felipe_schultz.jpg', 'División Análisis Control y Gestión', 'Residuos Solidos ', 'faschultz@goredelosrios.cl', 2284395),
(47, 'Fernando Pichaud', 'uploads/fernando_pichaud.jpg', 'Consejo Regional', 'Asesor Consejo Regional', 'fpichaud@goredelosrios.cl', 2284200),
(49, 'Gloria Barria', 'uploads/no_profile.jpg', 'División Planificación y Desarrollo', 'Profesional  Pir', 'vbarria@goredelosrios.cl', 2284322),
(50, 'Gladys Jaramillo', 'uploads/gladys_jaramillo.jpg', 'Gabinete', 'Organiz. Sociales', 'gjaramillo@goredelosrios.cl', 2284339),
(51, 'Gisela Gah', 'uploads/gisela_gah.jpg', 'División Planificación y Desarrollo', 'Participación Ciudadana', 'ggah@goredelosrios.cl', 2283887),
(52, 'Leonardo Cisterna', 'uploads/leonardo_cisterna.jpg', 'División Análisis Control y Gestión', 'Profesional R. Sólidos', 'lcisterna@goredelosrios.cl', 2284323),
(53, 'Ingrid Torres', 'uploads/ingrid_torres.jpg', 'División Administración y Finanzas', 'Depto. de Personal', 'itorres@goredelosrios.cl', 2284380),
(54, 'Ivan Madariaga', 'uploads/ivan_madariaga.jpg', 'Consejo Regional', 'Secretario Ejecutivo', 'imadariaga@goredelosrios.cl', 2284031),
(55, 'Leonardo Faundez', 'uploads/leonardo_faundez.jpg', 'División Planificación y Desarrollo', 'Jefe Diplade', 'lfaundez@goredelosrios.cl', 2284840),
(56, 'Javier Hernandez', 'uploads/javier_hernandez.jpg', 'Jurídico', 'Abogado Dpto. Jurídico', 'jhernandez@goredelosrios.cl', 2284315),
(57, 'Jeanette Bittner', 'uploads/no_profile.jpg', 'Interior', 'Relacionadora Publica Interior', 'jbittner@interior.gov.cl', 2283852),
(58, 'Joel Lineros', 'uploads/no_profile.jpg', 'Interior', 'Conductor Interior', '', 2283800),
(59, 'Joel Duran', 'uploads/joel_duran.jpg', 'División Análisis Control y Gestión', 'Analista de Inversiones  y Fril', 'jduran@goredelosrios.cl', 2284382),
(60, 'Jorge Aguila', 'uploads/jorge_aguila.jpg', 'División Administración y Finanzas', 'Auxiliar', 'jaguila@goredelosrios.cl', 2283847),
(61, 'Jorge Balboa', 'uploads/jorge_balboa.jpg', 'División Planificación y Desarrollo', 'Fomento Productivo PlanificaciÃ³n', 'jbalboa@goredelosrios.cl', 2284338),
(62, 'Jose Segovia', 'uploads/jose_segovia.jpg', 'División Administración y Finanzas', 'Serv. Generales', 'jsegovia@goredelosrios.cl', 2284348),
(63, 'Jorge Rodriguez', 'uploads/jorge_rodriguez.jpg', 'División Análisis Control y Gestión', 'Profesional de Electrificación Rural', 'jrodriguez@goredelosrios.cl', 2284376),
(64, 'Jorge Lopez', 'uploads/jorge_lopez.jpg', 'División Planificación y Desarrollo', 'Profesional Pir', 'jlopez@goredelosrios.cl', 2284379),
(65, 'Jose Riquelme', 'uploads/no_profile.jpg', 'División Planificación y Desarrollo', 'Profesional FIC', 'jriquelme@goredelosrios.cl', 2239326),
(68, 'Jovanna Barrera', 'uploads/Jovana.jpg', 'Intendencia', 'Asistente Autoria', 'jbarreram@interior.gov.cl', 2283805),
(70, 'Juan Tejeda', 'uploads/juan_tejeda.jpg', 'División Administración y Finanzas', 'Adm. Probidad y Transparencia DAF', 'jtejeda@goredelosrios.cl', 2284358),
(71, 'Juan Carlos Castillo', 'uploads/juan_castillo.jpg', 'División Análisis Control y Gestión', 'Analista de Inversiones', 'jcastillo@goredelosrios.cl', 2284334),
(72, 'Jaime Lienlaf Lienlaf', 'uploads/jaime_lienlaf.jpg', 'División Planificación y Desarrollo', 'Participación Ciudadana', 'llienlaf@goredelosrios.cl', 2283893),
(74, 'Juan Carlos Flandez', 'uploads/juan_flandez.jpg', 'División Administración y Finanzas', 'Recepción', 'jflandez@goredelosrios.cl', 2284300),
(75, 'Lorena Kiessling', 'uploads/lorena_kiessling.jpg', 'División Análisis Control y Gestión', 'Jefe División Análisis Control y Gestión', 'lkiessling@goredelosrios.cl', 2284343),
(76, 'Juan Carlos Montecinos', 'uploads/juan_montecinos.jpg', 'División Administración y Finanzas', 'Auxiliar', 'jmontecinos@goredelosrios.cl', 2284377),
(77, 'Karim Bertin', 'uploads/karim_bertin.jpg', 'División Análisis Control y Gestión', 'Analista de Inversiones', 'kbertin@goredelosrios.cl', 2284350),
(78, 'Lilian Cerda', 'uploads/lilian_cerda.jpg', 'División Administración y Finanzas', 'Encargada Dpto. de Personal', 'lcerda@goredelosrios.cl', 2284304),
(79, 'Mario Romero', 'uploads/mario_romero.jpg', 'División Análisis Control y Gestión', 'Unidad de Cultura', 'miromero@goredelosrios.cl', 2284372),
(81, 'Marcela Riquelme', 'uploads/no_profile.jpg', 'Interior', 'Secretaria Interior', 'mriquelmem@interior.gov.cl', 2283835),
(82, 'Marcela Carcamo', 'uploads/Marcela.jpg', 'Interior', 'Secretaria Interior', 'mcarcamo@interior.gov.cl', 2283877),
(83, 'Marcelo Crisostomo', 'uploads/marcelo_crisostomo.jpg', 'División Administración y Finanzas', 'Conductor', 'mcrisostomo@goredelosrios.cl', 77083029),
(84, 'Marcelo Medina', 'uploads/marcelo_medina.jpg', 'División Analisis Control y Gestión', 'Unidad de Cultura', 'mmedina@goredelosrios.cl', 2283882),
(85, 'Marcelo Romero', 'uploads/marcelo_romero.jpg', 'Auditoria Interna', 'Auditoria Interna', 'mromero@goredelosrios.cl', 2284365),
(86, 'Marcelo Vega', 'uploads/marcelo_vega.jpg', 'Gabinete', 'Comunicaciones', 'mvega@goredelosrios.cl', 2283803),
(87, 'Marco Casas', 'uploads/marco_casas.jpg', 'División Análisis Control y Gestión', 'Analista de inversiones', 'mcasas@goredelosrios.cl', 2284301),
(88, 'Marila Barrientos', 'uploads/no_profile.jpg', 'División Planificación y Desarrollo', 'Profesional Silvoagrop', 'mbarrientos@goredelosrios.cl', 2284353),
(89, 'Marjolaine Celis', 'uploads/marjolaine_celis.jpg', 'División Análisis Control y Gestión', 'Analista de inversiones', 'mcelis@goredelosrios.cl', 2284391),
(91, 'Mauricio Peña', 'uploads/mauricio_pena.jpg', 'División Planificación y Desarrollo', 'Ordenamiento Territorial Planificación', 'mpena@goredelosrios.cl', 2284333),
(92, 'Mauricio Jelves', 'uploads/mauricio_jelvez.jpg', 'División Planificación y Desarrollo', 'División de Planificación', 'mjelves@gordelosrios.cl', 2284353),
(93, 'Miguel Angel Martinez', 'uploads/miguel_martinez.jpg', 'División Planificación y Desarrollo', 'Profesional Fic', 'mmartienz@goredelosrios.cl', 2239325),
(95, 'Nelson Bustamante', 'uploads/Nelson.jpg', 'Interior', 'Conductor  Interior', 'nbustamante@interior.gov.cl', 2283805),
(97, 'Paola Hermosilla', 'uploads/paola_hermosilla.jpg', 'Gabinete', 'Encargada Dpto. JurÃ­dico', 'phermosilla@goredelosrios.cl', 2284352),
(98, 'Paola Gonzalez', 'uploads/paola_gonzalez.jpg', 'División Planificación y Desarrollo', 'Profesional Pir', 'pgonzalez@goredelosrios.cl', 2284379),
(99, 'Patricia Zapata', 'uploads/patricia_zapata.jpg', 'División Análisis Control y Gestión', 'Secretaria Fril', 'pzapata@goredelosrios.cl', 2284359),
(100, 'Patricia Duran', 'uploads/patricia_duran.jpg', 'División Análisis Control y Gestión', 'Patrimonio', 'pduran@goredelosrio.cl', 2284362),
(101, 'Patricia Henriquez', 'uploads/patricia_henriquez.jpg', 'División Análisis Control y Gestión', 'Saneamiento', 'phenriquez@goredelosrios.cl', 2284374),
(102, 'Patricio Acum', 'uploads/patricio_acum.jpg', 'División Administración y Finanzas', 'Encargado Unidad de Informática', 'pacum@goredelosrios.cl', 2284370),
(103, 'Patricio Ulloa', 'uploads/no_profile.jpg', 'División Planificación y Desarrollo', 'Profesional Participación Ciudadana', 'pulloa@goredelosrios.cl', 2283804),
(104, 'Patricio Cabrera', 'uploads/patricio_cabrera.jpg', 'División Administración y Finanzas', 'Informática', 'pcabrera@goredelosrios.cl', 2284368),
(105, 'Patricio Romero', 'uploads/patricio_romero.jpg', 'División Planificación y Desarrollo', 'Borde Costero Planificación', 'promero@goredelosrios.cl', 2284332),
(106, 'Pedro Gacitua', 'uploads/pedro_gacitua.jpg', 'División Análisis Control y Gestión', 'Jefe DAF', 'pgacitua@goredelosrios.cl', 2284312),
(107, 'Ricardo Basso', 'uploads/ricardo_basso.jpg', 'División Administración y Finanzas', 'Conductor', 'rbasso@goredelosrios.cl', 77083034),
(108, 'Rina Rivera', 'uploads/rina_rivera.jpg', 'División Administración y Finanzas', 'Secretaria  División', 'rrivera@goredelosrios.cl', 2284316),
(109, 'Rodolfo Peña', 'uploads/rodolfo_pena.jpg', 'División Análisis Control y Gestión', 'Analista de Inversiones ', 'rpena@goredelosrios.cl', 2284320),
(110, 'Rodrigo Aravena', 'uploads/rodrigo_aravena.jpg', 'Gabinete', 'Encargado de Gestión Estratégica', 'raravena@goredelosrios.cl', 2284327),
(111, 'Rodrigo Bähre', 'uploads/rodrigo_bahre.jpg', 'División Planificación y Desarrollo', 'Unidad de Asuntos Internacionales', 'rbahre@goredelosrios.cl', 2284369),
(112, 'Rosa Carcamo', 'uploads/rosa_carcamo.jpg', 'División Planificación y Desarrollo', 'Administrativo Diplade', 'rcarcamo@goredelosrios.cl', 2284341),
(113, 'Sandra Mansilla', 'uploads/sandra_mansilla.jpg', 'División Análisis Control y Gestión', 'Analista de Inversiones ', 'smansilla@goredelosrios.cl', 2284351),
(114, 'Sandra Perez', 'uploads/sandra_perez.jpg', 'División Administración y Finanzas', 'Unidad de Informática', 'sperez@goredelosrios.cl', 2284357),
(115, 'Sergio Villavicencio', 'uploads/sergio_villavicencio.jpg', 'División Análisis Control y Gestión', 'Programador de Inversiones', 'svillavicencio@goredelosrios.cl', 2284344),
(116, 'Silvia Martinez', 'uploads/silvia_martinez.jpg', 'División Administración y Finanzas', 'Secretaria  de Adquisiciones', 'smartinez@goredelosrios.cl', 2284399),
(117, 'Solange Palavecino', 'uploads/solange_palavecino.jpg', 'División Análisis Control y Gestión', 'Analista de Inversiones', 'spalavecino@goredelosrio.cl', 2284345),
(118, 'Tamara Araya', 'uploads/tamara_araya.jpg', 'División Administración y Finanzas', 'Diseñador Gráfico', 'taraya@goredelosrios.cl', 2284307),
(119, 'Valentina Mediavilla', 'uploads/valentina_mediavilla.jpg', 'División Planificación y Desarrollo', 'Borde Costero', 'vmediavilla@goredelosrios.cl', 2284331),
(120, 'Veronica Henriquez', 'uploads/veronica_henriquez.jpg', 'División Administración y Finanzas', 'Administrativa Dpto. Personal', 'vhenriquez@goredelosrios.cl', 2284396),
(121, 'Víctor Carrillo', 'uploads/victor_carillo.jpg', 'División Administración y Finanzas', 'Apoyo Finanzas', 'vcarrillo@goredelosrios.cl', 22843),
(122, 'Victor Alvarez', 'uploads/victor_alvarez.jpg', 'División Administración y Finanzas', 'Dpto. de Finanzas', 'valvarez@goredelosrios.cl', 2284319),
(123, 'Ví­ctor Hugo Velasquez', 'uploads/victor_velasquez.jpg', 'División Administración y Finanzas', 'Profesional de Finanzas', 'vvelasquez@goredelosrios.cl', 2284324),
(124, 'Viviana Rivas', 'uploads/viviana_rivas.jpg', 'División Administración y Finanzas', 'Encargada de unidad de Adquisiciones', 'vrivas@goredelosrio.cl', 2284366),
(125, 'Ximena Caro', 'uploads/ximena_caro.jpg', 'División Análisis Control y Gestión', 'Analista de Inversiones', 'xcaro@goredelosrios.cl', 2284325),
(126, 'Ximena Suarez', 'uploads/ximena_suarez.jpg', 'División Análisis Control y Gestión', 'Analista de Inversiones', 'xsuarez@goredelosrios.cl', 2284394),
(127, 'Yenny Mendez', 'uploads/yenny_mendez.jpg', 'Consejo Regional', 'Secretaria  Consejo Regional', 'ymendez@goredelosrios.cl', 2284029),
(128, 'Yéssica Gutierrez', 'uploads/yessica_gutierrez.jpg', 'División Administración y Finanzas', 'Dpto. de Finanzas', 'ygutierrez@goredelosrios.cl', 2284317),
(129, 'Zoila Reyes', 'uploads/zoila_reyes.jpg', 'División Análisis Control y Gestión', 'Secretaria', 'zreyes@goredelosrios.cl', 2284375),
(142, 'Catalina Andrea Perez Santibanez', 'uploads/Catalina Perez- Honorarios.jpg', 'Division de Análisis y Control de Gestión ', 'Saneamiento Sanitarios', 'cperezs@goredelosrios.cl', 2284361),
(143, 'Claudio Caro Jara', 'uploads/claudio_caro.jpg', 'Gabinete', 'Gestión Territorial para Zonas Rezagadas', 'caro@goredelosrios.cl', 2283885),
(144, 'Christian Winter', 'uploads/Christian.jpg', 'Intendencia', 'Seguridad Publica', 'cwinter@interior.gov.cl', 2283876),
(145, 'Evelyn Gallardo', 'uploads/Evelyn.jpg', 'Intendencia', 'Depto. Juridico y Extranjeria', 'egallardoc@interior.gov.cl', 2283881),
(146, 'Erwin Nettig', 'uploads/Erwin.jpg', 'Intendencia', 'Jefe Depto. Social', 'enettig@gmail.com', 2283830),
(147, 'Janet Bittner', 'uploads/Janet.jpg', 'Intendencia', 'Relaciones Publicas', 'jbittner@interior.gov.cl', 2283852),
(148, 'Juan Carlos Veragua', 'uploads/Veragua.jpg', 'Interior', 'Jefe Administracion y Finanzas', 'jveragua@interior.gov.cl', 2283848),
(150, 'Joel Lineros', 'uploads/Joel.jpg', 'Investigacion', 'Conductor Policial', '-', 2283800),
(151, 'Monica Cabezas', 'uploads/Monica.jpg', 'Intendencia', 'Periodista Interior', 'mpcabezas@interior.gov.cl', 2283803),
(152, 'Rodrigo Quijon', 'uploads/Quijon.jpg', 'Intendencia', 'Administrativo Finanzas', 'rquijon@interior.gov.cl', 2283877),
(154, 'Rodrigo Carrasco', 'uploads/Rodrigo.jpg', 'Investigacion', 'Apoyo Investigacion', '-', 2283800),
(155, 'Gloria Rebolledo', 'uploads/Gloria.jpg', 'Intendencia', 'Encargada Oficina Partes', 'grebolledo@interior.gov.cl', 2283847),
(156, 'Ximena Barros', 'uploads/Ximena.jpg', 'Intendencia', 'Encargada Personal', 'xbarros@interior.gov.cl', 2283802),
(157, 'Claudia Vallefin', 'uploads/claudia_vallefin.jpg', 'Consejo Regional', 'Secretaria Administrativa', 'cvallefin@goredelosrios.cl', 284393),
(158, 'Carla Vargas Pellet', 'uploads/Carla_Vargas.jpg', 'División Administración y Finanzas', 'Administrativa Finanzas', 'cvargasp@goredelosrios.cl', 0),
(159, 'Camilo Antonio Dí­az Luna', '', 'Gabinete', 'Gestión Territorial para Zonas Rezagadas', 'cdiazl@goredelosrios.cl', 2284385),
(160, 'Marco Antonio Mattar Silva', '', 'Gabinete', 'Organizaciones Sociales', 'mmattar@goredelosrios.cl', 0),
(161, 'Karin Valeska Ramírez Muñoz', '', 'Gabinete', 'Gestión Territorial para Zonas Rezagadas', 'kramirezQgoredelosrios.cl', 2284385),
(162, 'Susan del Carmen Flores Vinett', '', 'Gabinete', 'Fomento Productivo', 'sflores@goredelosrios.cl', 0),
(163, 'Jose Luis Meza Meza', '', 'Consejo Regional', 'Consejo Regional ', 'jmeza@goredelosrios.cl', 2284029),
(164, 'Andres Olave Echeñique', 'uploads/andres_olave.jpeg', 'Juridico', 'Juridico', 'aolave@goredelosrios.cl', 2284313);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
