Pupjibaro
=========

Remaster de Puppy retro-precise, repo de actualizaciones

*Leer en diferente lenguaje: [Español](README.md), [English](README.en.md), [Français](README.fr.md).*

### Versiones actualizadas de Pupjibaro

Proximamente.

- Pjibaro Versión para equipos de hasta 512 de Ram

- Pjibaro Versión para equipos mayores de 512 de ram

- Pupjibaro Wheezy versión con kernel actualizado
 
### Versiones Anteriores

### [Link de descarga version oficial Pupjibaro-1.0.4](https://drive.google.com/file/d/0BxItoYDp0CNqVW9pY3BlcnAwaGc/edit?usp=sharing)

### [Mirror en Mega 'Pupjibaro-1.0.4'](https://mega.co.nz/#!AxVSlCJJ!3tOyIQcmC1j7z29zWT0pBlCk1MoGtr-FYpBtgW22LNA)

MD5SUM - 7ad3d996ca337c1fd12b8ef87d3c4f4f   Pupjibaro-1.0.4-03052014.iso   199 MB

###  [Pupjibaro_devx_full "Librerias para Compilar"](https://www.dropbox.com/s/2nd7dp55mkb87by/devx_Full_Pupjibaro.sfs)

### [Mirror 'Pupjibaro_devx_full'](https://drive.google.com/file/d/0BxItoYDp0CNqZmhsb0NEemV6Wlk/edit?usp=sharing)

MD5SUM - 463da70bc5c1d516d972b023985aca14   devx_Full_Pupjibaro.sfs   238 MB

### [Mirror en archive.org 'por Ally'](https://archive.org/details/Puppy_Linux_Pubjibaro)

### [Archivo .exe para instalarse en windows xp/7](https://drive.google.com/file/d/0B-wRih_DOXG0MjF6dzJhbHVzMGM/edit?usp=sharing) 

### Actualizaciones ( Ver CHANGELOG )
------------------------------------


## PuppyLinux versión Pupjibaro-1.0.4 
=====================================
[![screenshot](http://s5.postimg.org/ib59srb8l/pjibaro.gif)](http://s5.postimg.org/ib59srb8l/pjibaro.gif)

Pupjibaro es un remaster de la versión oficial de Puppylinux retro precise 5.7.1
pensada en usuarios con equipos modestos 256 - 1 Giga de ram y con pocos conocimientos
sobre linux, por lo que cuenta con una serie de asistentes y aplicaciones que hacen más
fácil el uso de esta versión, traducida en un 95% ( en proceso de traducción ) 
El remasterizado a cargo de 2 usuarios conocidos en el universo Puppy como desarrolladores
de otras versiones importantes en español, nilsonmorales y josejp2424, uno de nacionalidad 
Salvadoreño y el otro Argentino, hicieron sociedad y crearon este remaster con algunas 
variantes del original detalladas más adelante.

### El perro Jíbaro

Esta especie pertenece a los mamíferos cimarrones, introducidos en Cuba durante
la colonización española. El Perro doméstico se convierte en jíbaros una vez que 
abandonan las casas y se internaron en los bosques.

Cuando se internaron en los bosques, modificaron sus caracteres y hábitos, y evolucionaron
en una nueva raza silvestre, acentuada en sus descendientes.

De ahi el codename para la version de Puppylinux Pupjibaro.

[FUENTE](http://www.ecured.cu/index.php/Perro_jíbaro)

### Repositorios de paquetes

[Repositorio Puppylinux precise oficial](http://distro.ibiblio.org/puppylinux/pet_packages-precise/)

[Repositorio Wuala](https://www.wuala.com/josejp2424/puppy-es/programas)

[Repositorio Dropbox](https://www.dropbox.com/sh/7cpbzfboqw8x167/qD9vt3Urzl)

### Caracteristicas 
| Caracteristica | Detalle |
| -------------- | ------- |
| Arquitectura | i386 |
| Kernel | 3.2.48 |
| Escritorio | Openbox, Lxpanel |
| Administrador de archivos | Rox + opciones click derecho. |
| Multilingue | Soporta la mayoria de idiomas con su respectivo paquete de idiomas |
| Requerimientos minimos | Pentium 4 256 ram (Para una mayor experiencia con 512 basta) |
| Navegador por defecto | Firefox 17.0.9 y 36.0.4 |
| Gestor de paquetes | Ppm Puppy packages manager |
| Editor de texto | Geany, Abiword |
| Terminal | Roxterm |
| Reproductor de Audio y video | Audacious, VLC |
| Cliente de chat | Xchat |
| Administrador de Impresión | Cups |

### Otras caracteristicas

- Centro de control en el systray

- Se agregaron librerias Python

- Nueva interfaz de apagado ( Gracias a KuLuSz )

- Selector de temas Xchat ( por josejp2424 )

- Notificador de bateria baja para Notebooks y Laptops ( Aviso al 10%, se apagará guardando
  los cambios al 5%)

- Notificador minimalista de eventos dunst ( por nilsonmorales )

- Youtube-dl + Youtube-dl-gui ( por josejp2424 )

- Florence teclado en pantalla

- Interfaz de actualizacion de flashplayer GetFlashPlayer

- Interfaz de instalacion de Libre Office  GetLibreOffice

- Fulldevx ( herramientas de desarrollo y compilación con más programas )

- Poedit, edit-SFS, edit-mo, ccgit, git, edit-initrd.gz, kernel sources incluidas 
en el Fulldevx

### Atajos del teclado

De forma sencilla Pupjibaro viene con algunos atajos del teclado útiles para el usuario

C = Ctrl

A = Alt

Ejemplo: C-A-g    tres teclas a la vez sin importar si es mayúscula o minúscula

| Secuencia | Acción | Detalle |
| --------- | ------ | ------- |
| C-A-g | geany | Editor de texto |  
| C-A-h | htop | Visor de procesos | 
| C-A-r | roxterm | La terminal |  
| C-A-f | rox | El administrador de archivos | 
| C-A-x | xchat | Cliente de chat |
| A-f9 | xorgwizard | El asistente de video |
| A-f6 | gtk-shutdown | Interfaz de apagado | 
| Tecla windows | El menú | Despliega el lxpanel menú |
| PrintScreen | Screnshot | Toma una captura de tu escritorio |

El archivo ~/.config/openbox/rc.xml contiene el detalle completo de los atajos del teclado. 

### Compatibilidad

Pupjibaro al ser un remasterizado de Puppylinux retro precise puede ser compatible con todos
los paquetes de puppy precise y retro precise ademas de paquetes Debian Wheezy y Ubuntu Precise
Pangolin, como tambien derivados retro precise de Puppy.
Pupjibaro no cuenta con servidor de paquetes propio, los desarrolladores ofrecemos nuestros paquetes
atravez de sitios como wuala, dropbox, copy.com, yandex, ubuntuone entre otros.

### Sobre las actualizaciones

Las actualizaciones de Pupjibaro pueden agregarse de 2 formas:

Manual:: Pueden clonar este repositorio desde github y aplicar los cambios directamente en sus
directorios respectivos.

Jibaupdate:: Los desarrolladores ofrecerán pets de actualizaciones llamados jibaupdates con la 
estructura de todos los archivos contemplados en este proyecto, un jibaupdate se conformará de
la siguiente manera. 

Nombre-dia-mes-año-versión de Pupjibaro.   Ejemplo:: jibaupdate_26102014-1.0.3.pet 

Asi los usuarios sabrán la fecha que se lanzó la actualización y la versión de Pupjibaro.

Los jibaupdates no modificarán la apariencia por si ya fué modificada por el usuario, solamente

ajustes a programas o configuraciones que no funcionen bien, traducciones etc.

### Trucos y Tips



### Exención de responsabilidad

Los desarrolladores de Pupjibaro no pretendemos ser irrespetuosos de la filosofia GNU, si algunas aplicaciones
son consideradas no-libres o privativas, estan en su derecho de no usar la distro, nuestro enfoque primordial son
los usuarios con pocos conocimientos sobre linux para que puedan tener una experiencia mas amigable
al entorno linux, asi sucesivamente van conociendo acerca de las grandes ventajas y virtudes de usar Linux.

Pupjibaro hereda posibles bugs de la versión oficial retro precise, asi que cualquier problema favor leer antes en la 
sección de bugs del foro [Murga Linux](http://www.murga-linux.com/puppy/viewtopic.php?t=87712). nosotros por nuestra parte tambien nos mantendremos informados de los
mismos para ir incorporando los bugfixes que los desarrolladores expertos vayan haciendo.

Este repositorio-proyecto cuenta con una sección para reporte de fallos, comentarios y preguntas. 

woofwoof.

Este readme se irá editando con los pormenores de la iso.

[Galeria de imágenes de woofshahenzup](http://postimg.org/gallery/b4ohylc4/)

[Galeria de imágenes de josejp2424]()

[Comentarios](https://github.com/Woofshahenzup/Pupjibaro/issues?labels=Reportar+bugs%2CPreguntas%2CComentarios&page=1&state=open)

[Preguntas](https://github.com/Woofshahenzup/Pupjibaro/issues?labels=Reportar+bugs%2CComentarios%2CPreguntas&page=1&state=open)

[Reportar fallos y bugs](https://github.com/Woofshahenzup/Pupjibaro/issues?labels=Preguntas%2CComentarios&page=1&state=open)

