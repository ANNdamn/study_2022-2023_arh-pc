---
## Front matter
title: "Отчёт по лабораторной работе №5"
subtitle: "Дисциплина: Архитектура компьютера"
author: "Дикач Анна Олеговна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Освоить процедуру компиляции и сборки программ, написанных на ассемблере NASM

# Теоретическое введение

Здесь описываются теоретические аспекты, связанные с выполнением работы.

Например, в табл. [-@tbl:std-dir] приведено краткое описание стандартных каталогов Unix.

: Описание некоторых каталогов файловой системы GNU Linux {#tbl:std-dir}

| Имя каталога | Описание каталога                                                                                                          |
|--------------|----------------------------------------------------------------------------------------------------------------------------|
| `/`          | Корневая директория, содержащая всю файловую                                                                               |
| `/bin `      | Основные системные утилиты, необходимые как в однопользовательском режиме, так и при обычной работе всем пользователям     |
| `/etc`       | Общесистемные конфигурационные файлы и файлы конфигурации установленных программ                                           |
| `/home`      | Содержит домашние директории пользователей, которые, в свою очередь, содержат персональные настройки и данные пользователя |
| `/media`     | Точки монтирования для сменных носителей                                                                                   |
| `/root`      | Домашняя директория пользователя  `root`                                                                                   |
| `/tmp`       | Временные файлы                                                                                                            |
| `/usr`       | Вторичная иерархия для данных пользователя                                                                                 |

Более подробно об Unix см. в [@gnu-doc:bash;@newham:2005:bash;@zarrelli:2017:bash;@robbins:2013:bash;@tannenbaum:arch-pc:ru;@tannenbaum:modern-os:ru].

# Выполнение лабораторной работы

1. Создаю каталог для работы с программами на языке ассемблера NASM и перехожу в созданный каталог (рис.1 [-@pic1])

![Рис.1:создание каталога и переход в него](image/pic1.png){ #pic1 width=70% }
2. Создаю текстовый файл с именем hello.asm и открываю этот файл с помощь любого текстового редактора. Ввожу текст (рис.2 [-@pic2])

![Рис.2:создание текстового файла](image/pic2.png){ #pic2 width=70% }
3. Для компиляции приведённого выше текста пишу следующую команду. Проверяю  что объектный файл создан(рис.3 [-@pic3])

![Рис.3:команда для компиляции](image/pic3.png){ #pic3 width=70% }

4. Выполняю следующую команду и проверяю был ли созданы файлы (рис.4 [-@pic4])

![Рис.4:команда и проверка её работы](image/pic4.png){ #pic4 width=70% }
5. Передаю файл  в работу компоновщику и проверяю был ли создан исполняемый файл (рис.5 [-@pic5])

![Рис.5:проверка файлов](image/pic5.png){ #pic5 width=70% }
6. Запускаю на выполнение созданный исполняемый файл (рис.6 [-@pic6])

![Рис.6:созданный исполняемый файл](image/pic6.png){ #pic6 width=70% }
7. Выполняю следующую команду (рис. [-@pic1])

![Рис.:Название рисунка](image/pic1.png){ #pic1 width=70% }
8. Запускаю на выполнение созданный исполняемый файл, находящийся в текущем каталоге, с помощью команды ./hello

# Задание для самостоятельной работы

1.  В каталоге ~/work/arch-pc/lab05 с помощью команды cp создаю копию
файла hello.asm с именем lab5.asm (рис. [-@fig:001])

![Название рисунка](image/placeimg_800_600_tech.jpg){ #fig:001 width=70% }
2. Вношу изменения в текст программы (рис. [-@fig:001])

![Название рисунка](image/placeimg_800_600_tech.jpg){ #fig:001 width=70% }
3. Оттранслирую полученный текст программы lab5.asm в объектный
файл. Выполняю компоновку объектного файла и запускаю получившийся исполняемый файл (рис. [-@fig:001])

![Название рисунка](image/placeimg_800_600_tech.jpg){ #fig:001 width=70% }
4. Копирую файлы hello.asm и lab5.asm в мой локальный репозиторий
в каталог ~/work/study/2022-2023/"Архитектура компьютера"/arch-
pc/labs/lab05/. Загружаю файлы на Github.



# Выводы

Освоила процедуры компиляции и сборки программ


