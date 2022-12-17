---
## Front matter
title: "Отчёта по лабораторной работе"
subtitle: "Лабораторная работа №8"
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

Изучение команд условного и безусловного переходов. Приобретение навыков написания программ с использованием переходов. Знакомство с назначением и структурой файла листинга.


# Выполнение лабораторной работы

1. создаю каталог для программ лабораторной работы, перехожу в него и создаю файл (рис. [-@fig:001])

![создание каталога,переход в него, создание файла](image/pic1.png){ #fig:001 width=70% }

2. ввожу текст программы, создаю файл, запускаю его (рис. [-@fig:002])

![пример работы программы](image/pic2.png){ #fig:002 width=70% }

3. ввожу текст другой программы, создаю файл, запускаю его (рис. [-@fig:003]). вношу изменения чтобы изменить выводящееся сообщение (рис. [-@fig:004])(рис. [-@fig:005])

![пример работы программы](image/pic3.png){ #fig:003 width=70% }
![текст программы](image/pic4.png){ #fig:004 width=70% }
![пример работы программы](image/pic5.png){ #fig:005 width=70% }

3. создаю файл lab8-2.asm в каталоге ~/work/arch-pc/lab08. внимательно
изучаю текст программы из листинга 8.3 и ввожу в lab8-2.asm. (рис. [-@fig:006])

![пример работы программы](image/pic6.png){ #fig:006 width=70% }

4. открываю файл листинга lab8-2.lst с помощью любого текстового редактора,
например mcedit (рис. [-@fig:007])

![пример работы программы](image/pic7.png){ #fig:007 width=70% }

5. открываю файл с программой lab8-2.asm и в любой инструкции с двумя операндами удаляю один операнд. выполняю трансляцию с получением файла ластинга (рис. [-@fig:008]).создаётся файл lab8-2.lst, в терминале добавляется сообщение об ошибке в тексте программы

![результат запуска программы](image/pic8.png){ #fig:008 width=70% }


# Задание для самостоятельной работы

1. пишу программу для вычисления наименьшего числа и проверяю с помощью чисел из 10 варианта (рис. [-@fig:009]) (рис. [-@fig:010])

![текст программы](image/pic9.png){ #fig:009 width=70% }
![пример работы программы](image/pic10.png){ #fig:010 width=70% }


2. пишу программу, которая вычисляет значение функций для введённых с клавиатуры данных из варианта 10. создаю исполняемый файл и проверяю его работу (рис. [-@fig:009]) (рис. [-@fig:010])

![текст программы](image/pic11.png){ #fig:011 width=70% }
![пример работы программы](image/pic12.png){ #fig:012 width=70% }

# Выводы

изучила команды условного и безусловного перехода. приобрела навыки написания программ с использованием переходов. познакомилась с назначением и структурой файла листинга.

