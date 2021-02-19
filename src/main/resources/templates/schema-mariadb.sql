drop table if exists  anime;
drop table if exists  productora;


create table anime (
                       id          int primary key auto_increment,
                       nombre      varchar(200) not null,
                       descripcion varchar(3000),
                       imagen_url  varchar(500)
);

insert into anime
(id, nombre,                             descripcion,                                                                                                                                                                                                                                                                                                                                                                                                                                             imagen_url) values
(1, 'Naruto Shippuden',                 'Naruto quiere ser el mejor ninja en la tierra. La acción comienza tras los dos años y medio que el protagonista, Naruto Uzumaki, ha pasado entrenando con su maestro Jiraiya. En ella reaparecen todos los personajes de la serie anterior pero con más experiencia y fuerza. Además, la Organización Akatsuki entra en acción, tras su breve aparición en la parte anterior, y se revelan sus objetivos.',                                             'https://img1.ak.crunchyroll.com/i/spire4/1c1df98707aa0f22aa54342af725e48a1491245343_full.jpg'),
(2, 'Code Geass',                       'Japón ha sido conquistado y ahora se llama Área 11. Lelouch, el príncipe negro, tiene una ambición sin fin y usa el poder del Geass para construir un mundo a su medida. Sin embargo, Suzaku, el caballero blanco, aspira a un mundo justo.', 'https://img1.ak.crunchyroll.com/i/spire4/dbdf31ca078912e6cbdb048ba869296b1500579061_full.jpg'),
(3, 'One Piece',                        'Monkey. D. Luffy se rehusa a que nadie se interponga en su camino por la búsqueda para convertirse el rey de todos los piratas. Con un camino trazado por las traicioneras aguas del Grand Line y más allá, se trata de un capitán que nunca se dará por vencido hasta que consiga el tesoro más grande de la Tierra: el Legendario One Piece',                                                                                                         'https://img1.ak.crunchyroll.com/i/spire4/8056a82e973dde98ebb82abd39dc69731564519729_full.jpg'),
(4, 'Dragon Ball Z',                    'Dragon Ball Z es la continuación de la serie anime/manga Dragon Ball. En este caso se narra la aventura de la vida adulta de Son Gokū. Al mismo tiempo, también, se narra la madurez de su hijo, Gohan. El cambio entre las series es significativa, ya que en esta versión de la historia, lo cómico y el tono de aventuras que tenía la serie anterior, es relativamente dejada de lado para mostrar una historia con un toque más oscuro y serio.',  'https://bajatepelis1.webnode.es/_files/200000145-956599565b/700/zBM3raZddhsAl9N2sNz0A8PIUud.jpg'),
(5, 'Fullmetal Alchemist: Brotherhood', 'Los hermanos Elric rompieron uno de los más importantes tabúes de la alquimia, de modo que Ed perdió casi la mitad de su cuerpo, ahora reemplazado por partes mecánicas, y su hermano menor Al, quedó convertido en un alma ligada a una armadura. Ambos buscarán la forma de recuperar sus cuerpos, resolver uno de los grandes misterios de la alquimia y recuperar a su madre.',                                                                     'https://img1.ak.crunchyroll.com/i/spire4/fabddf1040abbd18948b9aacc18011b31475523493_full.jpg'),
(6, 'Hunter x Hunter',                  'Gon, un joven que vive en Isla Ballena, sueña con convertirse en un Cazador como lo era su padre, el cual se fue cuando Gon todavía era un niño.',                                                                                                                                                                                                                                                                                                      'https://img1.ak.crunchyroll.com/i/spire3/cbb55a6382682bf71e91f685c6473c5a1487736090_full.jpg'),
(7, 'Death Note',                       'Cuando un estudiante japones se adueña de un cuaderno místico, descubre que tiene la facultad de matar a cualquiera cuyo nombre escriba en el cuaderno.',                                                                                                                                                                                                                                                                                               'https://img1.ak.crunchyroll.com/i/spire4/697c8b5ff2f49a97348b5507c06e11831576116356_full.jpg'),
(8, 'One Punch Man',                    'Saitama comenzó a hacer de héroe por pura afición, y tras tres años de un durísimo entrenamiento consiguió tal nivel de fuerza que puede acabar con cualquier enemigo de un solo puñetazo. Ahora la vida emocionante que esperaba tener se ha convertido en una de tedio absoluto, pero ¿habrá alguien a su nivel entre todos los héroes del mundo? ¿Y un villano capaz de hacerle sombra?',                                                            'https://img1.ak.crunchyroll.com/i/spire2/486f88e5889422c72ab7b12a58f794721554828665_full.jpg');

create table productora (
    id int primary key auto_increment,
    nombre varchar(200) not null,
    sitio_web varchar(500)
);

insert into productora
(id, nombre,            sitio_web) values
(1, 'Toei Animation', 'https://www.toei-animation.com/'),
(2, 'Pierrot', 'https://www.toei-animation.com/'),
(3, 'Nippon Animation', 'http://www.nipponanimation.com/'),
(4, 'Sunrise', 'http://www.sunrise-inc.co.jp/'),
(5, 'Bones', 'http://www.bones.co.jp/'),
(6, 'Madhouse', 'http://www.madhouse.co.jp/'),
(7, 'Wit Studio', 'http://www.witstudio.co.jp/');

alter table anime
add column productora_id int,
add foreign key (productora_id) references productora(id);

update anime set productora_id = 1 where id in (3, 4);
update anime set productora_id = 2 where id in (1);
update anime set productora_id = 3 where id in (6);
update anime set productora_id = 4 where id in (2);
update anime set productora_id = 5 where id in (5);
update anime set productora_id = 6 where id in (7,8);

alter table anime
modify productora_id int not null;