% ACM_PROC_ARTICLE-SP.CLS - VERSION 3.2SP
% COMPATIBLE WITH THE "SIG-ALTERNATE" V2.4
% Gerald Murray - April 22nd. 2009
%
% ---- Start of 'updates'  ----
%
% April 22nd. 2009 - Fixed 'Natbib' incompatibility problem - Gerry
% April 22nd. 2009 - Fixed 'Babel' incompatibility problem - Gerry
% April 22nd. 2009 - Inserted various bug-fixes and improvements - Gerry
%
% To produce Type 1 fonts in the document plus allow for 'normal LaTeX accenting' in the critical areas;
% title, author block, section-heads, etc. etc. 
% i.e. the whole purpose of this version update is to NOT resort to 'inelegant accent patches'.
% After much research, three extra .sty packages were added to the the tail (ae, aecompl, aeguill) to solve,
% in particular, the accenting problem(s). We _could_ ask authors (via instructions/sample file) to 'include' these in
% the source .tex file - in the preamble - but if everything is already provided ('behind the scenes' - embedded IN the .cls)
% then this is less work for authors and also makes everything appear 'vanilla'.
% NOTE: all 'patchwork accenting" has been commented out (here) and is no longer 'used' in the sample .tex file (either).
% Gerry June 2007
%
% Rule widths changed to .5, author count (>6) fixed, roll-back for Type 3 problem. Gerry March 20th. 2007
% Changes made to 'modernize' the fontnames but esp. for MikTeX users V2.4/2.5 - Nov. 30th. 2006
% Updated the \email definition to allow for its use inside of 'shared affiliations' - Nov. 30th. 2006
% Fixed the 'section number depth value' - Nov. 30th. 2006
%
% Footnotes inside table cells using \minipage (Oct. 2002)
% Georgia fixed bug in sub-sub-section numbering in paragraphs (July 29th. 2002)
% JS/GM fix to vertical spacing before Proofs (July 30th. 2002)
%
% Allowance made to switch default fonts between those systems using
% normal/modern font names and those using 'Type 1' or 'Truetype' fonts.
% See LINE NUMBER 269 for details.
% Also provided for enumerated/annotated Corollaries 'surrounded' by
% enumerated Theorems (line 844).
% Gerry November 11th. 1999
%
% This 'sp' version does NOT produce the permission block.
%
% Major change in January 2000 was to include a "blank line" in between
% new paragraphs. This involved major changes to the, then, acmproc-sp.cls  1.0SP
% file, precipitating a 'new' name: "acm_proc_article-sp.cls" V2.01SP.
%
% ---- End of 'updates' ----
%
\def\fileversion{V3.2SP}         % for ACM's tracking purposes
\def\filedate{April 22, 2009}    % Gerry Murray's tracking data
\def\docdate {Wednesday 22nd. April 2009} % Gerry Murray (with deltas to doc}
\usepackage{epsfig}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{amsfonts}
% Need this for accents in Arial/Helvetica
%\usepackage[T1]{fontenc}  % Gerry March 12, 2007 - causes Type 3 problems (body text)
%\usepackage{textcomp}
%
% ACM_PROC_ARTICLE-SP  DOCUMENT STYLE
% G.K.M. Tobin August-October 1999
%    adapted from ARTICLE document style by Ken Traub, Olin Shivers
%    also using elements of esub2acm.cls
% LATEST REVISION V3.2SP - APRIL 2009
% ARTICLE DOCUMENT STYLE -- Released 16 March 1988
%    for LaTeX version 2.09
% Copyright (C) 1988 by Leslie Lamport
%
%
%%% ACM_PROC_ARTICLE-SP is a document style for producing two-column camera-ready pages for
%%% ACM conferences, according to ACM specifications.  The main features of
%%% this style are:
%%%
%%% 1)  Two columns.
%%% 2)  Side and top margins of 4.5pc, bottom margin of 6pc, column gutter of
%%%     2pc, hence columns are 20pc wide and 55.5pc tall.  (6pc =3D 1in, approx)
%%% 3)  First page has title information, and an extra 6pc of space at the
%%%     bottom of the first column for the ACM copyright notice.
%%% 4)  Text is 9pt on 10pt baselines; titles (except main) are 9pt bold.
%%%
%%%
%%% There are a few restrictions you must observe:
%%%
%%% 1)  You cannot change the font size; ACM wants you to use 9pt.
%%% 3)  You must start your paper with the \maketitle command.  Prior to the
%%%     \maketitle you must have \title and \author commands.  If you have a
%%%     \date command it will be ignored; no date appears on the paper, since
%%%     the proceedings will have a date on the front cover.
%%% 4)  Marginal paragraphs, tables of contents, lists of figures and tables,
%%%     and page headings are all forbidden.
%%% 5)  The `figure' environment will produce a figure one column wide; if you
%%%     want one that is two columns wide, use `figure*'.
%%%
%
%%% Copyright Space:
%%% This style automatically leaves 1" blank space at the bottom of page 1/
%%% column 1.  This space can optionally be filled with some text using the
%%% \toappear{...} command.  If used, this command must be BEFORE the \maketitle
%%% command.  If this command is defined AND [preprint] is on, then the
%%% space is filled with the {...} text (at the bottom); otherwise, it is
%%% blank.  If you use \toappearbox{...} instead of \toappear{...} then a
%%% box will be drawn around the text (if [preprint] is on).
%%%
%%% A typical usage looks like this:
%%%     \toappear{To appear in the Ninth AES Conference on Medievil Lithuanian
%%%               Embalming Technique, June 1991, Alfaretta, Georgia.}
%%% This will be included in the preprint, and left out of the conference
%%% version.
%%%
%%% WARNING:
%%% Some dvi-ps converters heuristically allow chars to drift from their
%%% true positions a few pixels. This may be noticeable with the 9pt sans-serif
%%% bold font used for section headers.
%%% You may turn this hackery off via the -e option:
%%%     dvips -e 0 foo.dvi >foo.ps
%%%
\typeout{Document Class 'acm_proc_article-sp' <22nd. April '09>.  Modified by G.K.M. Tobin}
\typeout{Based in part upon document Style `acmconf' <22 May 89>. Hacked 4/91 by}
\typeout{shivers@cs.cmu.edu, 4/93 by theobald@cs.mcgill.ca}
\typeout{Excerpts were taken from (Journal Style) 'esub2acm.cls'.}
\typeout{****** Bugs/comments/suggestions  to Gerry Murray -- murray@hq.acm.org ******}

\oddsidemargin 4.5pc
\evensidemargin 4.5pc
\advance\oddsidemargin by -1in  % Correct for LaTeX gratuitousness
\advance\evensidemargin by -1in % Correct for LaTeX gratuitousness
\marginparwidth 0pt             % Margin pars are not allowed.
\marginparsep 11pt              % Horizontal space between outer margin and
                                % marginal note

                                % Top of page:
\topmargin 4.5pc                % Nominal distance from top of page to top of
                                % box containing running head.
\advance\topmargin by -1in      % Correct for LaTeX gratuitousness
\headheight 0pt                 % Height of box containing running head.
\headsep 0pt                    % Space between running head and text.
                                % Bottom of page:
\footskip 30pt                  % Distance from baseline of box containing foot
                                % to baseline of last line of text.
\@ifundefined{footheight}{\newdimen\footheight}{}% this is for LaTeX2e
\footheight 12pt                % Height of box containing running foot.


%% Must redefine the top margin so there's room for headers and
%% page numbers if you are using the preprint option. Footers
%% are OK as is. Olin.
\advance\topmargin by -37pt     % Leave 37pt above text for headers
\headheight 12pt                % Height of box containing running head.
\headsep 25pt                   % Space between running head and text.

\textheight 666pt       % 9 1/4 column height
\textwidth 42pc         % Width of text line.
                        % For two-column mode:
\columnsep 2pc          %    Space between columns
\columnseprule 0pt      %    Width of rule between columns.
\hfuzz 1pt              % Allow some variation in column width, otherwise it's
                        % too hard to typeset in narrow columns.

\footnotesep 5.6pt      % Height of strut placed at the beginning of every
                        % footnote =3D height of normal \footnotesize strut,
                        % so no extra space between footnotes.

\skip\footins 8.1pt plus 4pt minus 2pt  % Space between last line of text and
                                        % top of first footnote.
\floatsep 11pt plus 2pt minus 2pt       % Space between adjacent floats moved
                                        % to top or bottom of text page.
\textfloatsep 18pt plus 2pt minus 4pt   % Space between main text and floats
                                        % at top or bottom of page.
\intextsep 11pt plus 2pt minus 2pt      % Space between in-text figures and
                                        % text.
\@ifundefined{@maxsep}{\newdimen\@maxsep}{}% this is for LaTeX2e
\@maxsep 18pt                           % The maximum of \floatsep,
                                        % \textfloatsep and \intextsep (minus
                                        % the stretch and shrink).
\dblfloatsep 11pt plus 2pt minus 2pt    % Same as \floatsep for double-column
                                        % figures in two-column mode.
\dbltextfloatsep 18pt plus 2pt minus 4pt% \textfloatsep for double-column
                                        % floats.
\@ifundefined{@dblmaxsep}{\newdimen\@dblmaxsep}{}% this is for LaTeX2e
\@dblmaxsep 18pt                        % The maximum of \dblfloatsep and
                                        % \dbltexfloatsep.
\@fptop 0pt plus 1fil    % Stretch at top of float page/column. (Must be
                         % 0pt plus ...)
\@fpsep 8pt plus 2fil    % Space between floats on float page/column.
\@fpbot 0pt plus 1fil    % Stretch at bottom of float page/column. (Must be
                         % 0pt plus ... )
\@dblfptop 0pt plus 1fil % Stretch at top of float page. (Must be 0pt plus ...)
\@dblfpsep 8pt plus 2fil % Space between floats on float page.
\@dblfpbot 0pt plus 1fil % Stretch at bottom of float page. (Must be
                         % 0pt plus ... )
\marginparpush 5pt       % Minimum vertical separation between two marginal
                         % notes.

\parskip 0pt                % Extra vertical space between paragraphs.
                    % Set to 0pt outside sections, to keep section heads
                    % uniformly spaced.  The value of parskip is set
                    % to leading value _within_ sections.
                    % 12 Jan 2000 gkmt
\parindent 0pt                % Width of paragraph indentation.
\partopsep 2pt plus 1pt minus 1pt% Extra vertical space, in addition to
                                 % \parskip and \topsep, added when user
                                 % leaves blank line before environment.

\@lowpenalty   51       % Produced by \nopagebreak[1] or \nolinebreak[1]
\@medpenalty  151       % Produced by \nopagebreak[2] or \nolinebreak[2]
\@highpenalty 301       % Produced by \nopagebreak[3] or \nolinebreak[3]

\@beginparpenalty -\@lowpenalty % Before a list or paragraph environment.
\@endparpenalty   -\@lowpenalty % After a list or paragraph environment.
\@itempenalty     -\@lowpenalty % Between list items.

%\@namedef{ds@10pt}{\@latexerr{The `10pt' option is not allowed in the `acmconf'
\@namedef{ds@10pt}{\ClassError{The `10pt' option is not allowed in the `acmconf'	% January 2008
  document style.}\@eha}
%\@namedef{ds@11pt}{\@latexerr{The `11pt' option is not allowed in the `acmconf'
\@namedef{ds@11pt}{\ClassError{The `11pt' option is not allowed in the `acmconf'	% January 2008
  document style.}\@eha}
%\@namedef{ds@12pt}{\@latexerr{The `12pt' option is not allowed in the `acmconf'
\@namedef{ds@12pt}{\ClassError{The `12pt' option is not allowed in the `acmconf'	% January 2008
  document style.}\@eha}

\@options

\lineskip 2pt           % \lineskip is 1pt for all font sizes.
\normallineskip 2pt
\def\baselinestretch{1}

\abovedisplayskip 9pt plus2pt minus4.5pt%
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip  \z@ plus3pt%
\belowdisplayshortskip  5.4pt plus3pt minus3pt%
\let\@listi\@listI     % Setting of \@listi added 9 Jun 87

\def\small{\@setsize\small{9pt}\viiipt\@viiipt
\abovedisplayskip 7.6pt plus 3pt minus 4pt%
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ plus2pt%
\belowdisplayshortskip 3.6pt plus2pt minus 2pt
\def\@listi{\leftmargin\leftmargini %% Added 22 Dec 87
\topsep 4pt plus 2pt minus 2pt\parsep 2pt plus 1pt minus 1pt
\itemsep \parsep}}

\def\footnotesize{\@setsize\footnotesize{9pt}\ixpt\@ixpt
\abovedisplayskip 6.4pt plus 2pt minus 4pt%
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ plus 1pt%
\belowdisplayshortskip 2.7pt plus 1pt minus 2pt
\def\@listi{\leftmargin\leftmargini %% Added 22 Dec 87
\topsep 3pt plus 1pt minus 1pt\parsep 2pt plus 1pt minus 1pt
\itemsep \parsep}}

\newcount\aucount
\newcount\originalaucount
\newdimen\auwidth
\auwidth=\textwidth
\newdimen\auskip
\newcount\auskipcount
\newdimen\auskip
\global\auskip=1pc
\newdimen\allauboxes
\allauboxes=\auwidth
\newtoks\addauthors
\newcount\addauflag
\global\addauflag=0 %Haven't shown additional authors yet

\newtoks\subtitletext
\gdef\subtitle#1{\subtitletext={#1}}

\gdef\additionalauthors#1{\addauthors={#1}}

\gdef\numberofauthors#1{\global\aucount=#1
\ifnum\aucount>3\global\originalaucount=\aucount \global\aucount=3\fi %g}  % 3 OK - Gerry March 2007
\global\auskipcount=\aucount\global\advance\auskipcount by 1
\global\multiply\auskipcount by 2
\global\multiply\auskip by \auskipcount
\global\advance\auwidth by -\auskip
\global\divide\auwidth by \aucount}

% \and was modified to count the number of authors.  GKMT 12 Aug 1999
\def\alignauthor{%                  % \begin{tabular}
\end{tabular}%
  \begin{tabular}[t]{p{\auwidth}}\centering}%


%  *** NOTE *** NOTE *** NOTE *** NOTE ***
%  If you have 'font problems' then you may need
%  to change these, e.g. 'arialb' instead of "arialbd".
%  Gerry Murray 11/11/1999
%  *** OR ** comment out block A and activate block B or vice versa.
% **********************************************
%
%  -- Start of block A -- (Type 1 or Truetype fonts)
%\newfont{\secfnt}{timesbd at 12pt} % was timenrb originally - now is timesbd
%\newfont{\secit}{timesbi at 12pt}   %13 Jan 00 gkmt
%\newfont{\subsecfnt}{timesi at 11pt} % was timenrri originally - now is timesi
%\newfont{\subsecit}{timesbi at 11pt} % 13 Jan 00 gkmt -- was times changed to timesbi gm 2/4/2000
%                         % because "normal" is italic, "italic" is Roman
%\newfont{\ttlfnt}{arialbd at 18pt} % was arialb originally - now is arialbd
%\newfont{\ttlit}{arialbi at 18pt}    % 13 Jan 00 gkmt
%\newfont{\subttlfnt}{arial at 14pt} % was arialr originally - now is arial
%\newfont{\subttlit}{ariali at 14pt} % 13 Jan 00 gkmt
%\newfont{\subttlbf}{arialbd at 14pt}  % 13 Jan 00 gkmt
%\newfont{\aufnt}{arial at 12pt} % was arialr originally - now is arial
%\newfont{\auit}{ariali at 12pt} % 13 Jan 00 gkmt
%\newfont{\affaddr}{arial at 10pt} % was arialr originally - now is arial
%\newfont{\affaddrit}{ariali at 10pt} %13 Jan 00 gkmt
%\newfont{\eaddfnt}{arial at 12pt} % was arialr originally - now is arial
%\newfont{\ixpt}{times at 9pt} % was timenrr originally - now is times
%\newfont{\confname}{timesi at 8pt} % was timenrri - now is timesi
%\newfont{\crnotice}{times at 8pt} % was timenrr originally - now is times
%\newfont{\ninept}{times at 9pt} % was timenrr originally - now is times
% *********************************************
%  -- End of block A --
%
%
% -- Start of block B -- UPDATED FONT NAMES
% *********************************************
% Gerry Murray 11/30/2006
% *********************************************
\newfont{\secfnt}{ptmb8t at 12pt}
\newfont{\secit}{ptmbi8t at 12pt}    %13 Jan 00 gkmt
\newfont{\subsecfnt}{ptmri8t at 11pt}
\newfont{\subsecit}{ptmbi8t at 11pt}  % 
\newfont{\ttlfnt}{phvb8t at 18pt}
\newfont{\ttlit}{phvbo8t at 18pt}    % GM 2/4/2000
\newfont{\subttlfnt}{phvr8t at 14pt}
\newfont{\subttlit}{phvro8t at 14pt} % GM 2/4/2000
\newfont{\subttlbf}{phvb8t at 14pt}  % 13 Jan 00 gkmt
\newfont{\aufnt}{phvr8t at 12pt}
\newfont{\auit}{phvro8t at 12pt}     % GM 2/4/2000
\newfont{\affaddr}{phvr8t at 10pt}
\newfont{\affaddrit}{phvro8t at 10pt} % GM 2/4/2000
\newfont{\eaddfnt}{phvr8t at 12pt}
\newfont{\ixpt}{ptmr8t at 9pt}
\newfont{\confname}{ptmri8t at 8pt}
\newfont{\crnotice}{ptmr8t at 8pt}
\newfont{\ninept}{ptmr8t at 9pt}
% +++++++++++++++++++++++++++++++++++++++++++++
% -- End of block B --

%\def\email#1{{{\eaddfnt{\vskip 4pt#1}}}}
% If we have an email, inside a "shared affiliation" then we need the following instead
\def\email#1{{{\eaddfnt{\par #1}}}}       % revised  - GM - 11/30/2006

\def\addauthorsection{\ifnum\originalaucount>6  % was 3 - Gerry March 2007
    \section{Additional Authors}\the\addauthors
  \fi}

\newcount\savesection
\newcount\sectioncntr
\global\sectioncntr=1

\setcounter{secnumdepth}{3}

\def\appendix{\par
\section*{APPENDIX}
\setcounter{section}{0}
 \setcounter{subsection}{0}
 \def\thesection{\Alph{section}} }


\leftmargini 22.5pt
\leftmarginii 19.8pt    % > \labelsep + width of '(m)'
\leftmarginiii 16.8pt   % > \labelsep + width of 'vii.'
\leftmarginiv 15.3pt    % > \labelsep + width of 'M.'
\leftmarginv 9pt
\leftmarginvi 9pt

\leftmargin\leftmargini
\labelsep 4.5pt
\labelwidth\leftmargini\advance\labelwidth-\labelsep

\def\@listI{\leftmargin\leftmargini \parsep 3.6pt plus 2pt minus 1pt%
\topsep 7.2pt plus 2pt minus 4pt%
\itemsep 3.6pt plus 2pt minus 1pt}

\let\@listi\@listI
\@listi

\def\@listii{\leftmargin\leftmarginii
   \labelwidth\leftmarginii\advance\labelwidth-\labelsep
   \topsep 3.6pt plus 2pt minus 1pt
   \parsep 1.8pt plus 0.9pt minus 0.9pt
   \itemsep \parsep}

\def\@listiii{\leftmargin\leftmarginiii
    \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
    \topsep 1.8pt plus 0.9pt minus 0.9pt
    \parsep \z@ \partopsep 1pt plus 0pt minus 1pt
    \itemsep \topsep}

\def\@listiv{\leftmargin\leftmarginiv
     \labelwidth\leftmarginiv\advance\labelwidth-\labelsep}

\def\@listv{\leftmargin\leftmarginv
     \labelwidth\leftmarginv\advance\labelwidth-\labelsep}

\def\@listvi{\leftmargin\leftmarginvi
     \labelwidth\leftmarginvi\advance\labelwidth-\labelsep}

\def\labelenumi{\theenumi.}
\def\theenumi{\arabic{enumi}}

\def\labelenumii{(\theenumii)}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}

\def\labelenumiii{\theenumiii.}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}

\def\labelenumiv{\theenumiv.}
\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}

\def\labelitemi{$\bullet$}
\def\labelitemii{\bf --}
\def\labelitemiii{$\ast$}
\def\labelitemiv{$\cdot$}

\def\verse{\let\\=\@centercr
  \list{}{\itemsep\z@ \itemindent -1.5em\listparindent \itemindent
          \rightmargin\leftmargin\advance\leftmargin 1.5em}\item[]}
\let\endverse\endlist

\def\quotation{\list{}{\listparindent 1.5em
    \itemindent\listparindent
    \rightmargin\leftmargin \parsep 0pt plus 1pt}\item[]}
\let\endquotation=\endlist

\def\quote{\list{}{\rightmargin\leftmargin}\item[]}
\let\endquote=\endlist

\def\descriptionlabel#1{\hspace\labelsep \bf #1}
\def\description{\list{}{\labelwidth\z@ \itemindent-\leftmargin
       \let\makelabel\descriptionlabel}}

\let\enddescription\endlist

\def\theequation{\arabic{equation}}

\arraycolsep 4.5pt   % Half the space between columns in an array environment.
\tabcolsep 5.4pt     % Half the space between columns in a tabular environment.
\arrayrulewidth .5pt % Width of rules in array and tabular environment. % (was .4) updated Gerry March 20 2007
\doublerulesep 1.8pt % Space between adjacent rules in array or tabular env.

\tabbingsep \labelsep   % Space used by the \' command.  (See LaTeX manual.)

\skip\@mpfootins =\skip\footins

\fboxsep =2.7pt      % Space left between box and text by \fbox and \framebox.
\fboxrule =.5pt      % Width of rules in box made by \fbox and \framebox. % (was .4) updated Gerry March 20 2007

\def\thepart{\Roman{part}} % Roman numeral part numbers.
\def\thesection       {\arabic{section}}
\def\thesubsection    {\thesection.\arabic{subsection}}
%\def\thesubsubsection {\thesubsection.\arabic{subsubsection}} % GM 7/30/2002
%\def\theparagraph     {\thesubsubsection.\arabic{paragraph}}  % GM 7/30/2002
\def\thesubparagraph  {\theparagraph.\arabic{subparagraph}}

\def\@pnumwidth{1.55em}
\def\@tocrmarg {2.55em}
\def\@dotsep{4.5}
\setcounter{tocdepth}{3}

%\def\tableofcontents{\@latexerr{\tableofcontents: Tables of contents are not
%  allowed in the `acmconf' document style.}\@eha}

\def\tableofcontents{\ClassError{%
    \string\tableofcontents\space is not allowed in the `acmconf' document	% January 2008
    style}\@eha}

\def\l@part#1#2{\addpenalty{\@secpenalty}
   \addvspace{2.25em plus 1pt}  % space above part line
   \begingroup
   \@tempdima 3em       % width of box holding part number, used by
     \parindent \z@ \rightskip \@pnumwidth      %% \numberline
     \parfillskip -\@pnumwidth
     {\large \bf        % set line in \large boldface
     \leavevmode        % TeX command to enter horizontal mode.
     #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
     \nobreak           % Never break after part entry
   \endgroup}

\def\l@section#1#2{\addpenalty{\@secpenalty} % good place for page break
   \addvspace{1.0em plus 1pt}   % space above toc entry
   \@tempdima 1.5em             % width of box holding section number
   \begingroup
     \parindent \z@ \rightskip \@pnumwidth
     \parfillskip -\@pnumwidth
     \bf                        % Boldface.
     \leavevmode                % TeX command to enter horizontal mode.
      \advance\leftskip\@tempdima %% added 5 Feb 88 to conform to
      \hskip -\leftskip           %% 25 Jan 88 change to \numberline
     #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
   \endgroup}


\def\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\def\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\def\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\def\l@subparagraph{\@dottedtocline{5}{10em}{5em}}

%\def\listoffigures{\@latexerr{\listoffigures: Lists of figures are not
%  allowed in the `acmconf' document style.}\@eha}

\def\listoffigures{\ClassError{%
    \string\listoffigures\space is not allowed in the `acmconf' document	% January 2008
    style}\@eha}

\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}

%\def\listoftables{\@latexerr{\listoftables: Lists of tables are not
%  allowed in the `acmconf' document style.}\@eha}
%\let\l@table\l@figure

\def\listoftables{\ClassError{%
    \string\listoftables\space is not allowed in the `acmconf' document		% January 2008
    style}\@eha}
 \let\l@table\l@figure

\def\footnoterule{\kern-3\p@
  \hrule width .5\columnwidth   % (was .4) updated Gerry March 20 2007
  \kern 2.6\p@}                 % The \hrule has default height of .4pt % (was .4) updated Gerry March 20 2007
% ------
\long\def\@makefntext#1{\noindent 
%\hbox to .5em{\hss$^{\@thefnmark}$}#1}   % original
\hbox to .5em{\hss\textsuperscript{\@thefnmark}}#1}  % C. Clifton / GM Oct. 2nd. 2002
% -------

\long\def\@maketntext#1{\noindent
#1}

\long\def\@maketitlenotetext#1#2{\noindent
            \hbox to 1.8em{\hss$^{#1}$}#2}

\setcounter{topnumber}{2}
\def\topfraction{.7}
\setcounter{bottomnumber}{1}
\def\bottomfraction{.3}
\setcounter{totalnumber}{3}
\def\textfraction{.2}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}

\long\def\@makecaption#1#2{
   \vskip \baselineskip
   \setbox\@tempboxa\hbox{\textbf{#1: #2}}
   \ifdim \wd\@tempboxa >\hsize % IF longer than one line:
       \textbf{#1: #2}\par               %   THEN set as ordinary paragraph.
     \else                      %   ELSE  center.
       \hbox to\hsize{\hfil\box\@tempboxa\hfil}\par
   \fi}

\@ifundefined{figure}{\newcounter {figure}} % this is for LaTeX2e

\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Figure \thefigure}
\def\figure{\@float{figure}}
%\let\endfigure\end@float
\def\endfigure{\end@float} 		% Gerry January 2008
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}

\@ifundefined{table}{\newcounter {table}} % this is for LaTeX2e

\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table \thetable}
\def\table{\@float{table}}
%\let\endtable\end@float
\def\endtable{\end@float}		% Gerry January 2008
\@namedef{table*}{\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}

\newtoks\titleboxnotes
\newcount\titleboxnoteflag

\def\maketitle{\par
 \begingroup
   \def\thefootnote{\fnsymbol{footnote}}
   \def\@makefnmark{\hbox
       to 0pt{$^{\@thefnmark}$\hss}}
     \twocolumn[\@maketitle]
\@thanks
 \endgroup
 \setcounter{footnote}{0}
 \let\maketitle\relax
 \let\@maketitle\relax
 \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\gdef\@subtitle{}\let\thanks\relax
 \@copyrightspace}

%% CHANGES ON NEXT LINES
\newif\if@ll % to record which version of LaTeX is in use

\expandafter\ifx\csname LaTeXe\endcsname\relax % LaTeX2.09 is used
\else% LaTeX2e is used, so set ll to true
\global\@lltrue
\fi

\if@ll
  \NeedsTeXFormat{LaTeX2e}
  \ProvidesClass{acm_proc_article-sp} [2009/04/22 - V3.2SP - based on esub2acm.sty <23 April 96>]
  \RequirePackage{latexsym}% QUERY: are these two really needed?
  \let\dooptions\ProcessOptions
\else
  \let\dooptions\@options
\fi
%% END CHANGES

\def\@height{height}
\def\@width{width}
\def\@minus{minus}
\def\@plus{plus}
\def\hb@xt@{\hbox to}
\newif\if@faircopy
\@faircopyfalse
\def\ds@faircopy{\@faircopytrue}

\def\ds@preprint{\@faircopyfalse}

\@twosidetrue
\@mparswitchtrue
\def\ds@draft{\overfullrule 5\p@}
%% CHANGE ON NEXT LINE
\dooptions

\lineskip \p@
\normallineskip \p@
\def\baselinestretch{1}
\def\@ptsize{0} %needed for amssymbols.sty

%% CHANGES ON NEXT LINES
\if@ll% allow use of old-style font change commands in LaTeX2e
\@maxdepth\maxdepth
%
\DeclareOldFontCommand{\rm}{\ninept\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*{\cal}{\@fontswitch{\relax}{\mathcal}}
\DeclareRobustCommand*{\mit}{\@fontswitch{\relax}{\mathnormal}}
\fi
%
\if@ll
 \renewcommand{\rmdefault}{cmr}  % was 'ttm'
% Note! I have also found 'mvr' to work ESPECIALLY well.
% Gerry - October 1999
% You may need to change your LV1times.fd file so that sc is
% mapped to cmcsc - -for smallcaps -- that is if you decide
% to change {cmr} to {times} above. (Not recommended)
  \renewcommand{\@ptsize}{}
  \renewcommand{\normalsize}{%
    \@setfontsize\normalsize\@ixpt{10.5\p@}%\ninept%
    \abovedisplayskip 6\p@ \@plus2\p@ \@minus\p@
    \belowdisplayskip \abovedisplayskip
    \abovedisplayshortskip 6\p@ \@minus 3\p@
    \belowdisplayshortskip 6\p@ \@minus 3\p@
    \let\@listi\@listI
  }
\else
  \def\@normalsize{%changed next to 9 from 10
    \@setsize\normalsize{9\p@}\ixpt\@ixpt
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus\p@
    \belowdisplayskip \abovedisplayskip
    \abovedisplayshortskip 6\p@ \@minus 3\p@
    \belowdisplayshortskip 6\p@ \@minus 3\p@
    \let\@listi\@listI
  }%
\fi
\if@ll
  \newcommand\scriptsize{\@setfontsize\scriptsize\@viipt{8\p@}}
  \newcommand\tiny{\@setfontsize\tiny\@vpt{6\p@}}
  \newcommand\large{\@setfontsize\large\@xiipt{14\p@}}
  \newcommand\Large{\@setfontsize\Large\@xivpt{18\p@}}
  \newcommand\LARGE{\@setfontsize\LARGE\@xviipt{20\p@}}
  \newcommand\huge{\@setfontsize\huge\@xxpt{25\p@}}
  \newcommand\Huge{\@setfontsize\Huge\@xxvpt{30\p@}}
\else
  \def\scriptsize{\@setsize\scriptsize{8\p@}\viipt\@viipt}
  \def\tiny{\@setsize\tiny{6\p@}\vpt\@vpt}
  \def\large{\@setsize\large{14\p@}\xiipt\@xiipt}
  \def\Large{\@setsize\Large{18\p@}\xivpt\@xivpt}
  \def\LARGE{\@setsize\LARGE{20\p@}\xviipt\@xviipt}
  \def\huge{\@setsize\huge{25\p@}\xxpt\@xxpt}
  \def\Huge{\@setsize\Huge{30\p@}\xxvpt\@xxvpt}
\fi
\normalsize

% make aubox hsize/number of authors up to 3, less gutter
% then showbox gutter showbox gutter showbox -- GKMT Aug 99
\newbox\@acmtitlebox
\def\@maketitle{\newpage
 \null
 \setbox\@acmtitlebox\vbox{%
\baselineskip 20pt
\vskip 2em                   % Vertical space above title.
   \begin{center}
    {\ttlfnt \@title\par}       % Title set in 18pt Helvetica (Arial) bold size.
    \vskip 1.5em                % Vertical space after title.
%This should be the subtitle.
{\subttlfnt \the\subtitletext\par}\vskip 1.25em%\fi
    {\baselineskip 16pt\aufnt   % each author set in \12 pt Arial, in a
     \lineskip .5em             % tabular environment
     \begin{tabular}[t]{c}\@author
     \end{tabular}\par}
    \vskip 1.5em               % Vertical space after author.
   \end{center}}
 \dimen0=\ht\@acmtitlebox
 \advance\dimen0 by -12.75pc\relax % Increased space for title box -- KBT
 \unvbox\@acmtitlebox
 \ifdim\dimen0<0.0pt\relax\vskip-\dimen0\fi}


\newcount\titlenotecount
\global\titlenotecount=0
\newtoks\tntoks
\newtoks\tntokstwo
\newtoks\tntoksthree
\newtoks\tntoksfour
\newtoks\tntoksfive

\def\abstract{
\ifnum\titlenotecount>0 % was =1
    \insert\footins{%
    \reset@font\footnotesize
        \interlinepenalty\interfootnotelinepenalty
        \splittopskip\footnotesep
        \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
        \hsize\columnwidth \@parboxrestore
        \protected@edef\@currentlabel{%
        }%
        \color@begingroup
\ifnum\titlenotecount=1
      \@maketntext{%
         \raisebox{4pt}{$\ast$}\rule\z@\footnotesep\ignorespaces\the\tntoks\@finalstrut\strutbox}%
\fi
\ifnum\titlenotecount=2
      \@maketntext{%
      \raisebox{4pt}{$\ast$}\rule\z@\footnotesep\ignorespaces\the\tntoks\par\@finalstrut\strutbox}%
\@maketntext{%
         \raisebox{4pt}{$\dagger$}\rule\z@\footnotesep\ignorespaces\the\tntokstwo\@finalstrut\strutbox}%
\fi
\ifnum\titlenotecount=3
      \@maketntext{%
         \raisebox{4pt}{$\ast$}\rule\z@\footnotesep\ignorespaces\the\tntoks\par\@finalstrut\strutbox}%
\@maketntext{%
         \raisebox{4pt}{$\dagger$}\rule\z@\footnotesep\ignorespaces\the\tntokstwo\par\@finalstrut\strutbox}%
\@maketntext{%
         \raisebox{4pt}{$\ddagger$}\rule\z@\footnotesep\ignorespaces\the\tntoksthree\@finalstrut\strutbox}%
\fi
\ifnum\titlenotecount=4
      \@maketntext{%
         \raisebox{4pt}{$\ast$}\rule\z@\footnotesep\ignorespaces\the\tntoks\par\@finalstrut\strutbox}%
\@maketntext{%
         \raisebox{4pt}{$\dagger$}\rule\z@\footnotesep\ignorespaces\the\tntokstwo\par\@finalstrut\strutbox}%
\@maketntext{%
         \raisebox{4pt}{$\ddagger$}\rule\z@\footnotesep\ignorespaces\the\tntoksthree\par\@finalstrut\strutbox}%
\@maketntext{%
         \raisebox{4pt}{$\S$}\rule\z@\footnotesep\ignorespaces\the\tntoksfour\@finalstrut\strutbox}%
\fi
\ifnum\titlenotecount=5
      \@maketntext{%
         \raisebox{4pt}{$\ast$}\rule\z@\footnotesep\ignorespaces\the\tntoks\par\@finalstrut\strutbox}%
\@maketntext{%
         \raisebox{4pt}{$\dagger$}\rule\z@\footnotesep\ignorespaces\the\tntokstwo\par\@finalstrut\strutbox}%
\@maketntext{%
         \raisebox{4pt}{$\ddagger$}\rule\z@\footnotesep\ignorespaces\the\tntoksthree\par\@finalstrut\strutbox}%
\@maketntext{%
         \raisebox{4pt}{$\S$}\rule\z@\footnotesep\ignorespaces\the\tntoksfour\par\@finalstrut\strutbox}%
\@maketntext{%
         \raisebox{4pt}{$\P$}\rule\z@\footnotesep\ignorespaces\the\tntoksfive\@finalstrut\strutbox}%
\fi
   \color@endgroup} %g}
\fi
\setcounter{footnote}{0}
\section*{ABSTRACT}\normalsize %\the\parskip \the\baselineskip%\ninept
}

\def\endabstract{\if@twocolumn\else\endquotation\fi}

\def\keywords{\if@twocolumn
\section*{Keywords}
\else \small
\quotation
\fi}

% I've pulled the check for 2 cols, since proceedings are _always_
% two-column  11 Jan 2000 gkmt
\def\terms{%\if@twocolumn
\section*{General Terms}
%\else \small
%\quotation\the\parskip
%\fi}
}

% -- Classification needs to be a bit smart due to optionals - Gerry/Georgia November 2nd. 1999
\newcount\catcount
\global\catcount=1

\def\category#1#2#3{%
\ifnum\catcount=1
\section*{Categories and Subject Descriptors}
\advance\catcount by 1\else{\unskip; }\fi
    \@ifnextchar [{\@category{#1}{#2}{#3}}{\@category{#1}{#2}{#3}[]}%
}

\def\@category#1#2#3[#4]{%
    \begingroup
        \let\and\relax
            #1 [\textbf{#2}]%
            \if!#4!%
                \if!#3!\else : #3\fi
            \else
                :\space
                \if!#3!\else #3\kern\z@---\hskip\z@\fi
                \textit{#4}%
            \fi
    \endgroup
}
%

%%% This section (written by KBT) handles the 1" box in the lower left
%%% corner of the left column of the first page by creating a picture,
%%% and inserting the predefined string at the bottom (with a negative
%%% displacement to offset the space allocated for a non-existent
%%% caption).
%%%
\newtoks\copyrightnotice
\def\ftype@copyrightbox{8}
\def\@copyrightspace{
\@float{copyrightbox}[b]
\begin{center}
\setlength{\unitlength}{1pc}
\begin{picture}(20,6) %Space for copyright notice
\put(0,-0.95){\crnotice{\@toappear}}
\end{picture}
\end{center}
\end@float}

\def\@toappear{} % Default setting blank - commands below change this.
\long\def\toappear#1{\def\@toappear{\parbox[b]{20pc}{\baselineskip 9pt#1}}}
\def\toappearbox#1{\def\@toappear{\raisebox{5pt}{\framebox[20pc]{\parbox[b]{19pc}{#1}}}}}

\newtoks\conf
\newtoks\confinfo
\def\conferenceinfo#1#2{\global\conf={#1}\global\confinfo{#2}}


%\def\marginpar{\@latexerr{The \marginpar command is not allowed in the
%  `acmconf' document style.}\@eha}

\def\marginpar{\ClassError{%
    \string\marginpar\space is not allowed in the `acmconf' document		% January 2008
    style}\@eha}

\mark{{}{}}     % Initializes TeX's marks

\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}

\def\@begintheorem#1#2{%
    \trivlist
    \item[%
        \hskip 10\p@
        \hskip \labelsep
        {{\sc #1}\hskip 5\p@\relax#2.}%
    ]
    \it
}
\def\@opargbegintheorem#1#2#3{%
    \trivlist
    \item[%
        \hskip 10\p@
        \hskip \labelsep
        {\sc #1\ #2\             % This mod by Gerry to enumerate corollaries
   \setbox\@tempboxa\hbox{(#3)}  % and bracket the 'corollary title'
        \ifdim \wd\@tempboxa>\z@ % and retain the correct numbering of e.g. theorems
            \hskip 5\p@\relax    % if they occur 'around' said corollaries.
            \box\@tempboxa       % Gerry - Nov. 1999.
        \fi.}%
    ]
    \it
}
\newif\if@qeded
\global\@qededfalse

% -- original
%\def\proof{%
%  \vspace{-\parskip} % GM July 2000 (for tighter spacing)
%    \global\@qededfalse
%    \@ifnextchar[{\@xproof}{\@proof}%
%}
% -- end of original

% (JSS) Fix for vertical spacing bug - Gerry Murray July 30th. 2002
\def\proof{%
\vspace{-\lastskip}\vspace{-\parsep}\penalty-51%
\global\@qededfalse
\@ifnextchar[{\@xproof}{\@proof}%
}

\def\endproof{%
    \if@qeded\else\qed\fi
    \endtrivlist
}
\def\@proof{%
    \trivlist
    \item[%
        \hskip 10\p@
        \hskip \labelsep
        {\sc Proof.}%
    ]
    \ignorespaces
}
\def\@xproof[#1]{%
    \trivlist
    \item[\hskip 10\p@\hskip \labelsep{\sc Proof #1.}]%
    \ignorespaces
}
\def\qed{%
    \unskip
    \kern 10\p@
    \begingroup
        \unitlength\p@
        \linethickness{.4\p@}%
        \framebox(6,6){}%
    \endgroup
    \global\@qededtrue
}

\def\newdef#1#2{%
    \expandafter\@ifdefinable\csname #1\endcsname
        {\@definecounter{#1}%
         \expandafter\xdef\csname the#1\endcsname{\@thmcounter{#1}}%
         \global\@namedef{#1}{\@defthm{#1}{#2}}%
         \global\@namedef{end#1}{\@endtheorem}%
    }%
}
\def\@defthm#1#2{%
    \refstepcounter{#1}%
    \@ifnextchar[{\@ydefthm{#1}{#2}}{\@xdefthm{#1}{#2}}%
}
\def\@xdefthm#1#2{%
    \@begindef{#2}{\csname the#1\endcsname}%
    \ignorespaces
}
\def\@ydefthm#1#2[#3]{%
    \trivlist
    \item[%
        \hskip 10\p@
        \hskip \labelsep
        {\it #2%
%         \savebox\@tempboxa{#3}%
         \saveb@x\@tempboxa{#3}%		% January 2008
         \ifdim \wd\@tempboxa>\z@
            \ \box\@tempboxa
         \fi.%
        }]%
    \ignorespaces
}
\def\@begindef#1#2{%
    \trivlist
    \item[%
        \hskip 10\p@
        \hskip \labelsep
        {\it #1\ \rm #2.}%
    ]%
}
\def\theequation{\arabic{equation}}

\newcounter{part}
\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\def\thepart{\Roman{part}}
\def\thesection{\arabic{section}}
\def\thesubsection{\thesection.\arabic{subsection}}
\def\thesubsubsection{\thesubsection.\arabic{subsubsection}} %removed \subsecfnt 29 July 2002 gkmt
\def\theparagraph{\thesubsubsection.\arabic{paragraph}} %removed \subsecfnt 29 July 2002 gkmt

\newif\if@uchead
\@ucheadfalse

%% CHANGES: NEW NOTE
%% NOTE: OK to use old-style font commands below, since they were
%% suitably redefined for LaTeX2e
%% END CHANGES
\setcounter{secnumdepth}{3}
\def\part{%
    \@startsection{part}{9}{\z@}{-10\p@ \@plus -4\p@ \@minus -2\p@}
        {4\p@}{\normalsize\@ucheadtrue}%
}

% Rationale for changes made in next four definitions:
% "Before skip" is made elastic to provide some give in setting columns (vs.
% parskip, which is non-elastic to keep section headers "anchored" to their
% subsequent text.
%
% "After skip" is minimized -- BUT setting it to 0pt resulted in run-in heads, despite
% the documentation asserted only after-skip < 0pt would have result.
%
% Baselineskip added to style to ensure multi-line section titles, and section heads
% followed by another section head rather than text, are decently spaced vertically.
% 12 Jan 2000 gkmt
\def\section{%
    \@startsection{section}{1}{\z@}{-10\p@ \@plus -4\p@ \@minus -2\p@}%
    {0.5pt}{\baselineskip=14pt\secfnt\@ucheadtrue}%
}

\def\subsection{%
    \@startsection{subsection}{2}{\z@}{-10\p@ \@plus -4\p@ \@minus -2\p@}
    {0.5pt}{\baselineskip=14pt\secfnt}%
}
\def\subsubsection{%
    \@startsection{subsubsection}{3}{\z@}{-10\p@ \@plus -4\p@ \@minus -2\p@}%
    {0.5pt}{\baselineskip=14pt\subsecfnt}%
}

%\def\paragraph{%
%    \vskip 12pt\@startsection{paragraph}{3}{\z@}{6\p@ \@plus \p@}% original
%    {-5\p@}{\subsecfnt}%
%}
%  If one wants sections, subsections and subsubsections numbered,
%  but not paragraphs, one usually sets secnumepth to 3.
%  For that, the "depth" of paragraphs must be given correctly
%  in the definition (``4'' instead of ``3'' as second argument
%  of @startsection):
\def\paragraph{%
    \vskip 12pt\@startsection{paragraph}{4}{\z@}{6\p@ \@plus \p@}%    % GM and Wolfgang May - 11/30/06
    {-5\p@}{\subsecfnt}%
}

\let\@period=.
\def\@startsection#1#2#3#4#5#6{%
        \if@noskipsec  %gkmt, 11 aug 99
        \global\let\@period\@empty
        \leavevmode
        \global\let\@period.%
    \fi
    \par
    \@tempskipa #4\relax
    \@afterindenttrue
    \ifdim \@tempskipa <\z@
        \@tempskipa -\@tempskipa
        \@afterindentfalse
    \fi
    %\if@nobreak  11 Jan 00 gkmt
        %\everypar{}
    %\else
        \addpenalty\@secpenalty
        \addvspace\@tempskipa
    %\fi
    \parskip=0pt
    \@ifstar
        {\@ssect{#3}{#4}{#5}{#6}}
        {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}%
}


\def\@ssect#1#2#3#4#5{%
  \@tempskipa #3\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #4{%
        \@hangfrom{\hskip #1}%
          \interlinepenalty \@M #5\@@par}%
    \endgroup
  \else
    \def\@svsechd{#4{\hskip #1\relax #5}}%
  \fi
  \vskip -10.5pt  %gkmt, 7 jan 00 -- had been -14pt, now set to parskip
  \@xsect{#3}\parskip=10.5pt} % within the starred section, parskip = leading 12 Jan 2000 gkmt


\def\@sect#1#2#3#4#5#6[#7]#8{%
    \ifnum #2>\c@secnumdepth
        \let\@svsec\@empty
    \else
        \refstepcounter{#1}%
        \edef\@svsec{%
            \begingroup
                %\ifnum#2>2 \noexpand\rm \fi % changed to next 29 July 2002 gkmt
            \ifnum#2>2 \noexpand#6 \fi
                \csname the#1\endcsname
            \endgroup
            \ifnum #2=1\relax .\fi
            \hskip 1em
        }%
    \fi
    \@tempskipa #5\relax
    \ifdim \@tempskipa>\z@
        \begingroup
            #6\relax
            \@hangfrom{\hskip #3\relax\@svsec}%
            \begingroup
                \interlinepenalty \@M
                \if@uchead
                    \uppercase{#8}%
                \else
                    #8%
                \fi
                \par
            \endgroup
        \endgroup
        \csname #1mark\endcsname{#7}%
        \vskip -10.5pt  % -14pt gkmt, 11 aug 99 -- changed to -\parskip 11 Jan 2000
      \addcontentsline{toc}{#1}{%
            \ifnum #2>\c@secnumdepth \else
                \protect\numberline{\csname the#1\endcsname}%
            \fi
            #7%
        }%
    \else
        \def\@svsechd{%
            #6%
            \hskip #3\relax
            \@svsec
            \if@uchead
                \uppercase{#8}%
            \else
                #8%
            \fi
            \csname #1mark\endcsname{#7}%
            \addcontentsline{toc}{#1}{%
                \ifnum #2>\c@secnumdepth \else
                    \protect\numberline{\csname the#1\endcsname}%
                \fi
                #7%
            }%
        }%
    \fi
    \@xsect{#5}\parskip=10.5pt% within the section, parskip = leading 12 Jan 2000 gkmt
}
\def\@xsect#1{%
    \@tempskipa #1\relax
    \ifdim \@tempskipa>\z@
        \par
        \nobreak
        \vskip \@tempskipa
        \@afterheading
    \else
        \global\@nobreakfalse
        \global\@noskipsectrue
        \everypar{%
            \if@noskipsec
                \global\@noskipsecfalse
                \clubpenalty\@M
                \hskip -\parindent
                \begingroup
                    \@svsechd
                    \@period
                \endgroup
                \unskip
                \@tempskipa #1\relax
                \hskip -\@tempskipa
            \else
                \clubpenalty \@clubpenalty
                \everypar{}%
            \fi
        }%
    \fi
    \ignorespaces
}

\def\@trivlist{%
    \@topsepadd\topsep
    \if@noskipsec
        \global\let\@period\@empty
        \leavevmode
        \global\let\@period.%
    \fi
    \ifvmode
        \advance\@topsepadd\partopsep
    \else
        \unskip
        \par
    \fi
    \if@inlabel
        \@noparitemtrue
        \@noparlisttrue
    \else
        \@noparlistfalse
        \@topsep\@topsepadd
    \fi
    \advance\@topsep \parskip
    \leftskip\z@skip
    \rightskip\@rightskip
    \parfillskip\@flushglue
    \@setpar{\if@newlist\else{\@@par}\fi}
    \global\@newlisttrue
    \@outerparskip\parskip
}

%%% Actually, 'abbrev' works just fine as the default - Gerry Feb. 2000
%%% Bibliography style.

\parindent 0pt
\typeout{Using 'Abbrev' bibliography style}
\newcommand\bibyear[2]{%
    \unskip\quad\ignorespaces#1\unskip
    \if#2..\quad \else \quad#2 \fi
}
\newcommand{\bibemph}[1]{{\em#1}}
\newcommand{\bibemphic}[1]{{\em#1\/}}
\newcommand{\bibsc}[1]{{\sc#1}}
\def\@normalcite{%
    \def\@cite##1##2{[##1\if@tempswa , ##2\fi]}%
}
\def\@citeNB{%
    \def\@cite##1##2{##1\if@tempswa , ##2\fi}%
}
\def\@citeRB{%
    \def\@cite##1##2{##1\if@tempswa , ##2\fi]}%
}
\def\start@cite#1#2{%
    \edef\citeauthoryear##1##2##3{%
        ###1%
        \ifnum#2=\z@ \else\ ###2\fi
    }%
    \ifnum#1=\thr@@
        \let\@@cite\@citeyear
    \else
        \let\@@cite\@citenormal
    \fi
    \@ifstar{\@citeNB\@@cite}{\@normalcite\@@cite}%
}
%\def\cite{\start@cite23}
\DeclareRobustCommand\cite{\start@cite23}		% January 2008
\def\citeNP{\cite*}					% No Parentheses e.g. 5
%\def\citeA{\start@cite10}
\DeclareRobustCommand\citeA{\start@cite10}		% January 2008
\def\citeANP{\citeA*}
%\def\shortcite{\start@cite23}				
\DeclareRobustCommand\shortcite{\start@cite23}		% January 2008
\def\shortciteNP{\shortcite*}
%\def\shortciteA{\start@cite20}
\DeclareRobustCommand\shortciteA{\start@cite20}		% January 2008
\def\shortciteANP{\shortciteA*}
%\def\citeyear{\start@cite30}
\DeclareRobustCommand\citeyear{\start@cite30}		% January 2008
\def\citeyearNP{\citeyear*}
%\def\citeN{%
\DeclareRobustCommand\citeN{%				% January 2008
    \@citeRB
    \def\citeauthoryear##1##2##3{##1\ [##3%
        \def\reserved@a{##1}%
        \def\citeauthoryear####1####2####3{%
            \def\reserved@b{####1}%
            \ifx\reserved@a\reserved@b
                ####3%
            \else
                \errmessage{Package acmart Error: author mismatch
                         in \string\citeN^^J^^J%
                    See the acmart package documentation for explanation}%
            \fi
        }%
    }%
    \@ifstar\@citeyear\@citeyear
}
%\def\shortciteN{%
\DeclareRobustCommand\shortciteN{%			% January 2008
    \@citeRB
    \def\citeauthoryear##1##2##3{##2\ [##3%
        \def\reserved@a{##2}%
        \def\citeauthoryear####1####2####3{%
            \def\reserved@b{####2}%
            \ifx\reserved@a\reserved@b
                ####3%
            \else
                \errmessage{Package acmart Error: author mismatch
                         in \string\shortciteN^^J^^J%
                    See the acmart package documentation for explanation}%
            \fi
        }%
    }%
    \@ifstar\@citeyear\@citeyear % changed from  "\@ifstart" 12 Jan 2000 gkmt
}

\def\@citenormal{%
    \@ifnextchar [{\@tempswatrue\@citex;}%
% original                 {\@tempswafalse\@citex,[]}% was ; Gerry 2/24/00
{\@tempswafalse\@citex[]}%  	% GERRY FIX FOR BABEL 3/20/2009
}

\def\@citeyear{%
    \@ifnextchar [{\@tempswatrue\@citex,}%
% original                  {\@tempswafalse\@citex,[]}%
{\@tempswafalse\@citex[]}%	%  GERRY FIX FOR BABEL 3/20/2009
}

\def\@citex#1[#2]#3{%
    \let\@citea\@empty
    \@cite{%
        \@for\@citeb:=#3\do{%
            \@citea
% original            \def\@citea{#1 }%
            \def\@citea{#1, }% 	% GERRY FIX FOR BABEL 3/20/2009 -- SO THAT YOU GET [1, 2] IN THE BODY TEXT
            \edef\@citeb{\expandafter\@iden\@citeb}%
            \if@filesw
                \immediate\write\@auxout{\string\citation{\@citeb}}%
            \fi
            \@ifundefined{b@\@citeb}{%
                {\bf ?}%
                \@warning{%
                    Citation `\@citeb' on page \thepage\space undefined%
                }%
            }%
            {\csname b@\@citeb\endcsname}%
        }%
    }{#2}%
}
%\let\@biblabel\@gobble   % Dec. 2008 - Gerry
% ----
\def\@biblabelnum#1{[#1]} % Gerry's solution #1 - for Natbib 
\let\@biblabel=\@biblabelnum  % Gerry's solution #1 - for Natbib
\def\newblock{\relax} % Gerry Dec. 2008
% ---
\newdimen\bibindent
\setcounter{enumi}{1}
\bibindent=0em
\def\thebibliography#1{% 
\ifnum\addauflag=0\addauthorsection\global\addauflag=1\fi
     \section[References]{%    <=== OPTIONAL ARGUMENT ADDED HERE
        {References} % was uppercased but this affects pdf bookmarks (SP/GM October 2004)
         \@mkboth{{\refname}}{{\refname}}%
     }%
     \list{[\arabic{enumi}]}{%
         \settowidth\labelwidth{[#1]}%
         \leftmargin\labelwidth
         \advance\leftmargin\labelsep
         \advance\leftmargin\bibindent
         \parsep=0pt\itemsep=1pt % GM July 2000
         \itemindent -\bibindent
         \listparindent \itemindent
         \usecounter{enumi}
     }%
     \let\newblock\@empty
     \raggedright % GM July 2000
     \sloppy
     \sfcode`\.=1000\relax
}


\gdef\balancecolumns
{\vfill\eject
\global\@colht=\textheight
\global\ht\@cclv=\textheight
}

\newcount\colcntr
\global\colcntr=0
%\newbox\savebox
\newbox\saveb@x				% January 2008

\gdef \@makecol {%
\global\advance\colcntr by 1
\ifnum\colcntr>2 \global\colcntr=1\fi
   \ifvoid\footins
     \setbox\@outputbox \box\@cclv
   \else
     \setbox\@outputbox \vbox{%
\boxmaxdepth \@maxdepth
       \@tempdima\dp\@cclv
       \unvbox \@cclv
       \vskip-\@tempdima
       \vskip \skip\footins
       \color@begingroup
         \normalcolor
         \footnoterule
         \unvbox \footins
       \color@endgroup
       }%
   \fi
   \xdef\@freelist{\@freelist\@midlist}%
   \global \let \@midlist \@empty
   \@combinefloats
   \ifvbox\@kludgeins
     \@makespecialcolbox
   \else
     \setbox\@outputbox \vbox to\@colht {%
\@texttop
       \dimen@ \dp\@outputbox
       \unvbox \@outputbox
   \vskip -\dimen@
       \@textbottom
       }%
   \fi
   \global \maxdepth \@maxdepth
}
\def\titlenote{\@ifnextchar[\@xtitlenote{\stepcounter\@mpfn
\global\advance\titlenotecount by 1
\ifnum\titlenotecount=1
    \raisebox{9pt}{$\ast$}
\fi
\ifnum\titlenotecount=2
    \raisebox{9pt}{$\dagger$}
\fi
\ifnum\titlenotecount=3
    \raisebox{9pt}{$\ddagger$}
\fi
\ifnum\titlenotecount=4
\raisebox{9pt}{$\S$}
\fi
\ifnum\titlenotecount=5
\raisebox{9pt}{$\P$}
\fi
         \@titlenotetext
}}

\long\def\@titlenotetext#1{\insert\footins{%
\ifnum\titlenotecount=1\global\tntoks={#1}\fi
\ifnum\titlenotecount=2\global\tntokstwo={#1}\fi
\ifnum\titlenotecount=3\global\tntoksthree={#1}\fi
\ifnum\titlenotecount=4\global\tntoksfour={#1}\fi
\ifnum\titlenotecount=5\global\tntoksfive={#1}\fi
    \reset@font\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
    \protected@edef\@currentlabel{%
    }%
    \color@begingroup
   \color@endgroup}}

%%%%%%%%%%%%%%%%%%%%%%%%%
\ps@plain
\baselineskip=11pt
\let\thepage\relax % For  NO page numbers - Gerry Nov. 30th. 1999
\def\setpagenumber#1{\global\setcounter{page}{#1}}
%\pagenumbering{arabic}  % Arabic page numbers but commented out for NO page numbes - Gerry Nov. 30th. 1999
\twocolumn             % Double column.
\flushbottom           % Even bottom -- alas, does not balance columns at end of document
\pagestyle{plain}

% Need Copyright Year and Copyright Data to be user definable (in .tex file).
% Gerry Nov. 30th. 1999
\newtoks\copyrtyr
\newtoks\acmcopyr
\newtoks\boilerplate
\def\CopyrightYear#1{\global\copyrtyr{#1}}
\def\crdata#1{\global\acmcopyr{#1}}
\def\permission#1{\global\boilerplate{#1}}
%
\newtoks\copyrightetc
\global\copyrightetc{\ } %  Need to have 'something' so that adequate space is left for pasting in a line if "confinfo" is supplied.

\toappear{\the\boilerplate\par
{\confname{\the\conf}} \the\confinfo\par \the\copyrightetc}
% End of ACM_PROC_ARTICLE-SP.CLS -- V3.2SP - 04/22/2009 --
% Gerry Murray -- Wednesday April 22nd. 2009
%
% The following section (i.e. 3 .sty inclusions) was added in May 2007 so as to fix the problems that many
% authors were having with accents. Sometimes accents would occur, but the letter-character would be of a different
% font. Conversely the letter-character font would be correct but, e.g. a 'bar' would appear superimposed on the
% character instead of, say, an unlaut/diaresis. Sometimes the letter-character would NOT appear at all.
% Using [T1]{fontenc} outright was not an option as this caused 99% of the authors to 'produce' a Type-3 (bitmapped)
% PDF file - useless for production. 
%
% For proper (font) accenting we NEED these packages to be part of the .cls file i.e. 'ae', 'aecompl' and 'aeguil' 
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%% This is file `ae.sty' 
\def\fileversion{1.3}
\def\filedate{2001/02/12}
\NeedsTeXFormat{LaTeX2e}
%\ProvidesPackage{ae}[\filedate\space\fileversion\space  % GM
% Almost European Computer Modern]                       % GM - keeping the log file clean(er)
\newif\if@ae@slides \@ae@slidesfalse
\DeclareOption{slides}{\@ae@slidestrue}
\ProcessOptions
\fontfamily{aer}
\RequirePackage[T1]{fontenc}
\if@ae@slides
    \renewcommand{\sfdefault}{laess}
    \renewcommand{\rmdefault}{laess} % no roman
    \renewcommand{\ttdefault}{laett}
\else
    \renewcommand{\sfdefault}{aess}
    \renewcommand{\rmdefault}{aer}
    \renewcommand{\ttdefault}{aett}
\fi
\endinput
%% 
%% End of file `ae.sty'.
%
%
\def\fileversion{0.9}
\def\filedate{1998/07/23}
\NeedsTeXFormat{LaTeX2e}
%\ProvidesPackage{aecompl}[\filedate\space\fileversion\space   % GM
%T1 Complements for AE fonts (D. Roegel)]                      % GM -- keeping the log file clean(er)
 
\def\@ae@compl#1{{\fontencoding{T1}\fontfamily{cmr}\selectfont\symbol{#1}}}
\def\guillemotleft{\@ae@compl{19}}
\def\guillemotright{\@ae@compl{20}}
\def\guilsinglleft{\@ae@compl{14}}
\def\guilsinglright{\@ae@compl{15}}
\def\TH{\@ae@compl{222}}
\def\NG{\@ae@compl{141}}
\def\ng{\@ae@compl{173}}
\def\th{\@ae@compl{254}}
\def\DJ{\@ae@compl{208}}
\def\dj{\@ae@compl{158}}
\def\DH{\@ae@compl{208}}
\def\dh{\@ae@compl{240}}
\def\@perthousandzero{\@ae@compl{24}}
\def\textperthousand{\%\@perthousandzero}
\def\textpertenthousand{\%\@perthousandzero\@perthousandzero}
\endinput
%
%
%% This is file `aeguill.sty' 
% This file gives french guillemets (and not guillemots!)
% built with the Polish CMR fonts (default), WNCYR fonts, the LASY fonts 
% or with the EC fonts. 
% This is useful in conjunction with the ae package
% (this package loads the ae package in case it has not been loaded)
%  and with or without the french(le) package.
%
% In order to get the guillemets, it is necessary to either type
% \guillemotleft and \guillemotright, or to use an 8 bit encoding
% (such as ISO-Latin1) which selects these two commands, 
% or, if you use the french package (but not the frenchle package), 
% to type << or >>.
%
% By default, you get the Polish CMR guillemets; if this package is loaded
% with the `cm' option, you get the LASY guillemets; with `ec,' you
% get the EC guillemets, and with `cyr,' you get the cyrillic guillemets.
%
% In verbatim mode, you always get the EC/TT guillemets.
%
% The default option is interesting in conjunction with PDF,
% because there is a Type 1 version of the Polish CMR fonts
% and these guillemets are very close in shape to the EC guillemets.
% There are no free Type 1 versions of the EC fonts.
%
% Support for Polish CMR guillemets was kindly provided by 
% Rolf Niepraschk <niepraschk@ptb.de> in version 0.99 (2000/05/22).
% Bernd Raichle provided extensive simplifications to the code
% for version 1.00.
%
% This package is released under the LPPL.
%
% Changes:
%   Date        version
%   2001/04/12  1.01    the frenchle and french package are now distinguished.
%
\def\fileversion{1.01}
\def\filedate{2001/04/12}
\NeedsTeXFormat{LaTeX2e}
%\ProvidesPackage{aeguill}[2001/04/12 1.01 %    % GM
%AE fonts with french guillemets (D. Roegel)]   % GM - keeping the log file clean(er)
%\RequirePackage{ae}  % GM May 2007 - already embedded here

\newcommand{\@ae@switch}[4]{#4}
\DeclareOption{ec}{\renewcommand\@ae@switch[4]{#1}}
\DeclareOption{cm}{\renewcommand\@ae@switch[4]{#2}}
\DeclareOption{cyr}{\renewcommand\@ae@switch[4]{#3}}
\DeclareOption{pl}{\renewcommand\@ae@switch[4]{#4}}
\ExecuteOptions{pl}
\ProcessOptions

%
% Load necessary packages
%
\@ae@switch{% ec
  % do nothing
}{% cm
  \RequirePackage{latexsym}%  GM - May 2007 - already 'mentioned as required' up above
}{% cyr
  \RequirePackage[OT2,T1]{fontenc}%
}{% pl
  \RequirePackage[OT4,T1]{fontenc}%
}

% The following command will be compared to \frenchname,
% as defined in french.sty and frenchle.sty.
\def\aeguillfrenchdefault{french}%

\let\guill@verbatim@font\verbatim@font
\def\verbatim@font{\guill@verbatim@font\ecguills{cmtt}%
                   \let\guillemotleft\@oguills\let\guillemotright\@fguills}

\begingroup \catcode`\<=13 \catcode`\>=13
\def\x{\endgroup
 \def\ae@lfguill{<<}%
 \def\ae@rfguill{>>}%
}\x

\newcommand{\ecguills}[1]{%
  \def\selectguillfont{\fontencoding{T1}\fontfamily{#1}\selectfont}%
  \def\@oguills{{\selectguillfont\symbol{19}}}%
  \def\@fguills{{\selectguillfont\symbol{20}}}%
  } 

\newcommand{\aeguills}{%
  \ae@guills
  % We redefine \guillemotleft and \guillemotright
  % in order to catch them when they are used 
  % with \DeclareInputText (in latin1.def for instance)
  % We use \auxWARNINGi as a safe indicator that french.sty is used.
  \gdef\guillemotleft{\ifx\auxWARNINGi\undefined
                         \@oguills % neither french.sty nor frenchle.sty
                      \else
                         \ifx\aeguillfrenchdefault\frenchname
                           \ae@lfguill  % french.sty
                         \else
                           \@oguills    % frenchle.sty
                         \fi
                      \fi}%
  \gdef\guillemotright{\ifx\auxWARNINGi\undefined
                         \@fguills % neither french.sty nor frenchle.sty
                       \else
                         \ifx\aeguillfrenchdefault\frenchname
                           \ae@rfguill  % french.sty
                         \else
                           \@fguills    % frenchle.sty
                         \fi
                       \fi}%
  }

%
% Depending on the class option
% define the internal command \ae@guills
\@ae@switch{% ec
  \newcommand{\ae@guills}{%
    \ecguills{cmr}}%
}{% cm
  \newcommand{\ae@guills}{%
    \def\selectguillfont{\fontencoding{U}\fontfamily{lasy}%
            \fontseries{m}\fontshape{n}\selectfont}%
    \def\@oguills{\leavevmode\nobreak
                \hbox{\selectguillfont (\kern-.20em(\kern.20em}\nobreak}%
    \def\@fguills{\leavevmode\nobreak
                \hbox{\selectguillfont \kern.20em)\kern-.2em)}%
                \ifdim\fontdimen\@ne\font>\z@\/\fi}}%
}{% cyr
  \newcommand{\ae@guills}{%
    \def\selectguillfont{\fontencoding{OT2}\fontfamily{wncyr}\selectfont}%
    \def\@oguills{{\selectguillfont\symbol{60}}}%
    \def\@fguills{{\selectguillfont\symbol{62}}}}
}{% pl
  \newcommand{\ae@guills}{%
    \def\selectguillfont{\fontencoding{OT4}\fontfamily{cmr}\selectfont}%
    \def\@oguills{{\selectguillfont\symbol{174}}}%
    \def\@fguills{{\selectguillfont\symbol{175}}}}
}


\AtBeginDocument{%
  \ifx\GOfrench\undefined
    \aeguills
  \else
    \let\aeguill@GOfrench\GOfrench
    \gdef\GOfrench{\aeguill@GOfrench \aeguills}%
  \fi
  }

\endinput
%


