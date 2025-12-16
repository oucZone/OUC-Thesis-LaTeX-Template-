
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oucthesis}[OUC Thesis Template]


\newif\ifouc@pdf
\DeclareOption{print}{\ouc@pdffalse}
\DeclareOption{pdf}{\ouc@pdftrue}

\newif\ifouc@enmac
\ouc@enmacfalse
\DeclareOption{enmac}{\ouc@enmactrue}

\newif\ifouc@count
\ouc@countfalse
\DeclareOption{count}{\ouc@counttrue}

\PassOptionsToClass{openany}{ctexbook}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ExecuteOptions{print}
\ProcessOptions\relax

\PassOptionsToClass{scheme=chinese}{ctexbook}
\PassOptionsToPackage{quiet}{xeCJK}
\LoadClass[UTF8,a4paper,zihao=-4,twoside]{ctexbook}[2017/04/01]
\PassOptionsToClass{scheme=chinese}{ctexbook}
% ===============================================
% Required Package
\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\RequirePackage[driver=xetex]{geometry}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{color}
\RequirePackage{titletoc}
\RequirePackage{caption}
\RequirePackage[perpage]{footmisc}
\RequirePackage{url}
\RequirePackage{calc}
\RequirePackage{dashrule}
\RequirePackage{algorithm}
\RequirePackage{algorithmicx}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{bashful}
\RequirePackage{xstring}
\RequirePackage{geometry}
\RequirePackage{ctex}
\RequirePackage{letltxmacro}
\ifouc@pdf
\RequirePackage{hyperref}
\else
\fi

% ===============================================
% Changable parameters
\newcommand\ouc@atendpackage{\csname ctex_at_end_package:nn\endcsname}
\ouc@atendpackage{hyperref}{
  \hypersetup{
    bookmarksnumbered  = true,
    bookmarksopen      = true,
    bookmarksopenlevel = 1,
    linktoc            = all,
    unicode            = true,
    psdextra           = true,
  }
  \ifouc@pdf
    \hypersetup{
      colorlinks = true,
      % allcolors  = blue,
      allcolors  = black,
    }
  \else
    \hypersetup{hidelinks}
  \fi
}

% ===============================================
% Word Count
\newcommand{\wordcount}[0]{%
	\immediate\write18{texcount -1 -sum main.tex > words.count }%
	\input{words.count}%
}

% ===============================================
% Custom Command

\renewenvironment{titlepage}{%
  \clearpage
  \thispagestyle{empty}%
}{\clearpage}

\newcommand\blankpage{%
  \null
  \thispagestyle{empty}%
  \addtocounter{page}{-1}%
  \newpage
}

\newcommand\zhspace[1][1]{\hspace{#1\ccwd}}

% ===============================================
% Fonts Setting

\newdimen\bp@
\bp@=1bp
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12\bp@}{23\bp@}%
  \abovedisplayskip 12\bp@ \@plus3\bp@ \@minus7\bp@
  \abovedisplayshortskip \z@ \@plus3\bp@
  \belowdisplayshortskip 6.5\bp@ \@plus3.5\bp@ \@minus3\bp@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI
}
\normalsize
\renewcommand\small{%
  \@setfontsize\small{10.5\bp@}{19.25\bp@}%
  \abovedisplayskip 10.5\bp@ \@plus3\bp@ \@minus6\bp@
  \abovedisplayshortskip \z@ \@plus3\bp@
  \belowdisplayshortskip 6.5\bp@ \@plus3.5\bp@ \@minus3\bp@
  \belowdisplayskip \abovedisplayskip
}
\renewcommand\footnotesize{%
  \@setfontsize\footnotesize{9\bp@}{16.5\bp@}%
  \abovedisplayskip 9\bp@ \@plus2\bp@ \@minus5\bp@
  \abovedisplayshortskip \z@ \@plus3\bp@
  \belowdisplayshortskip 6\bp@ \@plus3\bp@ \@minus3\bp@
  \belowdisplayskip \abovedisplayskip
}
\renewcommand\scriptsize{\@setfontsize\scriptsize{7.5\bp@}{13.75\bp@}}
\renewcommand\tiny{\@setfontsize\tiny{6.5\bp@}{11.92\bp@}}
\renewcommand\large{\@setfontsize\large{15\bp@}{27.5\bp@}}
\renewcommand\Large{\@setfontsize\Large{18\bp@}{33\bp@}}
\renewcommand\LARGE{\@setfontsize\LARGE{22\bp@}{40.33\bp@}}
\renewcommand\huge{\@setfontsize\huge{24\bp@}{44\bp@}}
\renewcommand\Huge{\@setfontsize\Huge{26\bp@}{47.67\bp@}}

\linespread{1}\selectfont
\newcommand\ouc@setchinese{%
  \xeCJKResetPunctClass
}
\newcommand\ouc@setenglish{%
  \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
  \xeCJKDeclareCharClass{HalfRight}{%
    "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A%
  }%
}
\ouc@setchinese

% ===============================================
% Page Format 

% \geometry{
%   paper      = a4paper,
%   vmargin    = 25mm,
%   hmargin    = 25mm,
%   headheight = 15mm,
%   headsep    = 0.44cm,
%   footskip   = 0.79cm,
% }

% \geometry{
%   paper      = a4paper,
%   vmargin    = 2.7cm,
%   hmargin    = 2.7cm,
%   headheight = 0.75cm,
%   headsep    = 0.29cm,
%   footskip   = 0.79cm,
% }
\geometry{
  paper      = a4paper,
  vmargin    = 2.7cm,
  hmargin    = 2.7cm,
  headheight = 0.75cm,
  headsep    = 0.56cm,
  footskip   = 0.79cm,
}

\pagestyle{fancy}
\let\sectionmark\@gobble
\renewcommand\headrulewidth{0.5\p@}

% ===============================================
% Header Format
\newcommand\ouc@wordcount{\wordcount}

\newcommand\ouc@hf@font{\fontsize{10.5\bp@}{12\bp@}\selectfont}
\newcommand\ouc@header{\@title}
\fancypagestyle{title}{%
  \fancyhf{}%
  \fancyhead[CO]{\ouc@hf@font 中国海洋大学博士学位论文} % 奇数页页眉
  \fancyhead[CE]{\ouc@hf@font\ouc@header} % 偶数页页眉
  \fancyfoot[C]{\ouc@hf@font\thepage}%
  \renewcommand{\headrulewidth}{0.4pt} % 添加页眉下划线
  \ifouc@count
    \fancyfoot[R]{\color{gray}\ouc@hf@font \ouc@wordcount}%
  \fi
}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt}
  \fancyhead[C]{}
  \fancyfoot[C]{\ouc@hf@font\thepage}%
}


% ===============================================
% Pre Content Format 
\ctexset{
  chapter = {
    name        = {,},
    format      = \centering\sffamily\fontsize{16\bp@}{26.67\bp@}\selectfont,
    nameformat  = {},
    number      = \thechapter,
    aftername   = \hspace{\ccwd},
    beforeskip  = 24\bp@,
    afterskip   = 18\bp@,
    fixskip     = true,
  },
}

% ===============================================
% Define Information

\newcommand*{\entitle}[1]{
  \def\ouc@entitle{#1}
}
\newcommand*{\advisor}[1]{
  \def\ouc@advisor{#1}
}
\newcommand*{\mythanks}[1]{
  \def\ouc@mythanks{#1}
}

\newcommand*{\keywords}[1]{
  \def\ouc@keywords{#1}
}

\newcommand*{\enkeywords}[1]{
  \def\ouc@enkeywords{#1}
}
% ===============================================
% Define Page Style


% Abstract
\NewDocumentCommand\ouc@chapter{o m}{%
  \IfValueTF{#1}% 检查是否提供了可选参数
  {
    \chaptermark{#1}% 页眉使用可选参数
    \makeatletter
    \c@secnumdepth=-1 % 抑制章节编号
    \makeatother
    \chapter[#1]{#2}% 目录显示 #1，正文显示 #2
  }{
    \chaptermark{#2}% 页眉使用必选参数
    \makeatletter
    \c@secnumdepth=-1 % 抑制章节编号
    \makeatother
    \chapter{#2}% 
  }%
}
\newcommand\pagenumberingnoreset[1]{\gdef\thepage{\csname @#1\endcsname\c@page}}


% Abstract
\let\standardclearpage\clearpage
\newenvironment{abstract}{%
  \clearpage
  \pagestyle{plain}
  \pagenumberingnoreset{Roman}
  \ouc@setchinese
  \let\clearpage\relax
  \ouc@chapter[摘\hspace{46pt}要]{摘\zhspace[2]要}
  \let\clearpage\standardclearpage
  \vspace{1em}
}{
  \noindent\hangindent=4\ccwd\relax
  \clearpage
  \pagenumberingnoreset{arabic}
}

\newfontface\timesfont{Times New Roman}

\newenvironment{enabstract}{%
  \clearpage
  \pagestyle{plain}
  \pagenumberingnoreset{Roman}
  \ouc@setenglish
  \let\clearpage\relax
  \ouc@chapter[ABSTRACT]{\timesfont{ABSTRACT}}
  \let\clearpage\standardclearpage
  \vspace{1em}
}{
  \noindent\hangindent=4\ccwd\relax
  \clearpage
  \pagenumberingnoreset{arabic}
}



% TOC: 英文目录设置
\newcommand\engcontentsname{\timesfont{Contents}}
\newcommand\tableofengcontents{%
  \pagestyle{plain}
  \pagenumberingnoreset{Roman}
  \renewcommand{\headrulewidth}{0pt} % 取消页眉横线
  \chapter*{\engcontentsname}%
  \@starttoc{toe}%
  % \clearpage
}
\newcommand\addengcontents[2]{%
    \addcontentsline{toe}{#1}{\protect\numberline{\csname the#1\endcsname}#2}}
\newcommand\addengcontent[2]{\addcontentsline{toe}{#1}{#2}}
\newcommand\enchapter[1]{\addengcontents{chapter}{#1}}
\newcommand\ensection[1]{\addengcontents{section}{#1}}
\newcommand\ensubsection[1]{\addengcontents{subsection}{#1}}



% TOC: 中文目录格式设置
\renewcommand{\contentsname}{目\zhspace[2]录}
\renewcommand\tableofcontents{%
  \pagestyle{plain}
  \pagenumberingnoreset{Roman}
  \renewcommand{\headrulewidth}{0pt} % 取消页眉横线
  \chapter*{\contentsname}%
  \@starttoc{toc}%
  \clearpage
}

\newcommand\ouc@leaders{\titlerule*[4\bp@]{\textperiodcentered}}

\titlecontents{chapter}
[\z@]{\fontsize{14\bp@}{25.67\bp@}\selectfont}
{\contentspush{\thecontentslabel\unskip\hspace{\ccwd}}}{}
{\unskip\hspace{\ccwd}\ouc@leaders\contentspage}
\titlecontents{section}
[\ccwd]{\normalsize}
{\contentspush{\thecontentslabel\hspace{\ccwd}}}{}
{ \ouc@leaders\contentspage}
\titlecontents{subsection}
[2\ccwd]{\normalsize}
{\contentspush{\thecontentslabel\hspace{\ccwd}}}{}
{ \ouc@leaders\contentspage}









% ===============================================
% Main Content Format 
    
\renewcommand\chapter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \global\@topnum\z@
  \@afterindenttrue
  \secdef\@chapter\@schapter
}


\newfontface\timesfont{Times New Roman}
\renewcommand\mainmatter{
  \clearpage
  \pagestyle{title}
  \setcounter{page}{1}
  \ctexset{
    chapter = {
      format      = \sffamily\fontsize{16\bp@}{26.67\bp@}\selectfont\centering\timesfont,
      aftername   = \zhspace[0.5],
      beforeskip  = 24pt,
      afterskip   = 18pt,
      fixskip     = True,
    },
    section = {
      format = \sffamily\fontsize{14\bp@}{25.67\bp@}\selectfont\timesfont,
      aftername   = \zhspace[0.5],
      beforeskip  = 24pt,
      afterskip   = 6pt,
      fixskip     = True,
    },
    subsection = {
      format    = \sffamily\fontsize{12\bp@}{22\bp@}\selectfont\timesfont,
      aftername   = \zhspace[0.5],
      beforeskip  = 12pt,
      afterskip   = 6pt,
      fixskip     = True,
      indent    = \z@,
    },
    % subsubsection = {
    %   format    = \rmfamily\fontsize{12\bp@}{22\bp@}\selectfont\timesfont,
    %   aftername   = \zhspace[0.5],
    %   fixskip     = True,
    %   indent    = \ccwd,
    % },
    subsubsection = {
      format    = \bfseries\rmfamily\fontsize{12\bp@}{22\bp@}\selectfont\timesfont,
      aftername   = \zhspace[0.5],
      beforeskip  = 2pt,
      afterskip   = 2pt,
      fixskip     = True,
      indent    = 2\ccwd,
    },
    paragraph = {
      format    = \rmfamily\fontsize{12\bp@}{20\bp@}\selectfont\timesfont,
      aftername = \zhspace[0],
      fixskip   = True,
      indent    = \ccwd,
    },
  }
}


% Caption Stype
\renewcommand{\thetable}{\thechapter-\arabic{table}~}
\renewcommand{\thefigure}{\thechapter-\arabic{figure}~}
\counterwithin{algorithm}{chapter}
\renewcommand{\thealgorithm}{\thechapter-\arabic{algorithm}}
\floatname{algorithm}{算法}
\DeclareCaptionLabelSeparator{space}{ }
\captionsetup{
   labelsep=space
}


% 注释表
% \newenvironment{abbreviation}{%
%   \clearpage
%   \makeafter
%   \ouc@setchinese
%   \ouc@chapter{注释表}
% }{\clearpage}

\let\standardclearpage\clearpage
\newenvironment{abbreviation}{%
  \clearpage
  \pagestyle{plain}
  \pagenumberingnoreset{Roman}
  \ouc@setchinese
  \let\clearpage\relax
  \ouc@chapter[注\hspace{16pt}释\hspace{16pt}表]{注~~释~~表}
  \let\clearpage\standardclearpage
  \vspace{1em}
}{
  \noindent\hangindent=4\ccwd\relax
  \clearpage
  \pagenumberingnoreset{arabic}
}

% \newenvironment{abbreviation}{%
%   \clearpage
%   \makeafter
%   \ouc@setchinese
%   \ouc@chapter{注~~释~~表}
% }{\clearpage}




% 自定义图标题格式
\newcommand{\figurecaption}[2]{%
    % \vspace{4pt} 
    \caption[#1]{%
        \centering \quad #1 \\[6pt] % 在中文和英文之间增加6pt的垂直间距
        \centering \textnormal{Fig.}~\thefigure\quad #2
    }
}

% 自定义表格标题格式
\newcommand{\tablecaption}[2]{%
    \caption[#1]{%
        \centering \quad #1 \\[6pt] % 在中文和英文之间增加6pt的垂直间距
        \centering \textnormal{Table.}~\thetable\quad #2 \\[6pt] 
    }
}

% 设置中英文标题格式
\captionsetup[figure]{
    labelsep=space,   % 中文标题和编号之间空格
    format=hang,      % 标题悬挂
    singlelinecheck=false,  % 允许多行显示
    font={small},     % 小号字体
    position=below,   % 标题放在图片下方
    skip=5pt          % 图形与标题之间的间距
}

\captionsetup[table]{
    labelsep=space,
    format=hang,
    singlelinecheck=false,
    font={small},
    position=below,
    skip=5pt
}


\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\RequirePackage{mathtools}
\newtagform{test}[]{（}{）}
\usetagform{test}

% ===============================================
% Tail Content Format 
\newcommand\makeafter{
  \clearpage
  \ctexset{
    chapter = {
      name        = {,},
      format      = \centering\sffamily\fontsize{16\bp@}{26.67\bp@}\selectfont,
      nameformat  = {},
      number      = \thechapter,
      aftername   = \hspace{\ccwd},
      beforeskip  = 24\bp@,
      afterskip   = 18\bp@,
      fixskip     = true,
    },
    section = {
      name        = {,},
      format      = \centering\sffamily\bfseries\normalsize\selectfont,
      nameformat  = {},
      number      = \thechapter,
      aftername   = \hspace{\ccwd},
      beforeskip  = 24\bp@,
      afterskip   = 18\bp@,
      fixskip     = true,
    },
  }
}

\newcommand\bibstyle@super{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\citestyle{super}
\renewcommand\bibfont{\fontsize{10.5\bp@}{20\bp@}\selectfont}
\setlength{\bibsep}{0\p@ \@plus.2\p@}
\setlength{\bibhang}{2\ccwd}
\renewcommand\@biblabel[1]{[#1]\hfill}

\renewcommand\bibsection{%
  \makeafter
  \ouc@chapter{\bibname}%
}

\newenvironment{ackonwlegmentback}{%
  \clearpage
  \makeafter
  \ouc@setchinese
  \ouc@chapter[致\hspace{28pt}谢]{致\zhspace[2]谢}
}{
  \clearpage
}

\newenvironment{achievement}{%
  \clearpage
  \makeafter
  \ouc@setchinese
  \ouc@chapter{攻读博士学位期间取得的研究成果}
}{\clearpage}

\newenvironment{profile}{%
  \clearpage
  \makeafter
  \ouc@setchinese
  \ouc@chapter{作者简介}
}{\clearpage}





