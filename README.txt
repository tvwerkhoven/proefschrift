proefschrift - LaTeX style for a Dutch dissertation
===================================================

This is a LaTeX style for a Dutch PhD dissertation, which is typically formatted as a B5 booklet with papers or conference proceedings as chapters.

Dependencies
============

Various packages, use a distribution such as TeXlive etc. In addition to that:

- jabbrv[1]

Fonts
=====

An overview of various fonts available for LaTeX can be found at[4][5][6][7].

Bibliography
============

This template uses a modified version of yahapj.bst[2]. Other options are apj.bst, aa.bst, although these need to be modified for for use with jabbrv[3].

LaTeX tricks
============

Bibliography
------------

To use non-latin characters as initials in bibliographic references, use something like

    {Смирнов, {\relax М} {\relax С}}

instead of 

    {Смирнов, М С}.

Note that М С here are the Cyrillic letters em and es. See https://www.tug.org/TUGboat/tb27-2/tb87hufflen.pdf for details.

Page & paper size
-----------------

Dutch theses are generally printed on 240mm by 170mm paper. This has an aspect ratio of 1:1.41 or 1:√2. Other available paper sizes are listed in memoir man pages, Chapter 1. 

Relevant papersizes can be:

- smallroyalvopaper, 9.25in by 6.175in (235mm by 157mm, aspect 2:3)
- royalvopaper, 10in by 6.25in (254mm by 159mm, aspect 1:1.6 (Golden section))

Acknowledgments
===============

- The image `placeholder.pdf' was copied from Wikipedia[1]. This work has been released into the public domain by its author, Vadmium at the English Wikipedia project. This applies worldwide.
- jabbrv_yahapj.bst is a fork of yahapj.bst[2] adapted for use with jabbrv[3].
- This style is very loosely based on Alfred de Wijn's thesis, available at http://www.iluvatar.org/~dwijn/thesis

Resources
=========

- https://code.google.com/p/bibstuff/
- http://en.wikibooks.org/wiki/LaTeX/Formatting
- http://en.wikibooks.org/wiki/LaTeX/Page_Layout
- http://www.ctan.org/tex-archive/macros/xetex/latex/

References
==========

[1] https://en.wikipedia.org/wiki/File:Question_opening-closing.svg
[2] https://github.com/pkgw/yahapj/
[3] http://www.compholio.com/latex/jabbrv/
[4] http://www.tug.dk/FontCatalogue/math.html
[5] http://www.tug.dk/FontCatalogue/mathfonts.html
[6] http://tex.stackexchange.com/questions/58098/what-are-all-the-font-styles-i-can-use-in-math-mode
[7] http://latex-project.org/papers/unicode-mathematics-in-LaTeX.pdf

License
=======

Copyright 2014 Tim van Werkhoven (timvanwerkhoven@gmail.com)
 
This work is licensed under the Creative Commons
Attribution-Noncommercial-Share Alike 3.0 Unported License. To view a copy
of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or 
send a letter to Creative Commons, 171 Second Street, Suite 300, San 
Francisco, California, 94105, USA.