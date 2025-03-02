%%
%% This is file `scnuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% scnuthesis.dtx  (with options: `cls')
%% 
%% !Mode:: "TeX:UTF-8"
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2015 by Joseph Pan <cs.wzpan@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
%% Any Suggestions : Joseph Pan <cs.wzpan@gmail.com>
%% Thanks LiuBenYuan <liubenyuan@gmail.com> for the nudtpapre class!
%% Thanks Xue Ruini <xueruini@gmail.com> for the thuthesis class!
%% Thanks sofoot for the original NUDT paper class!
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{scnuthesis}

\newif\ifismaster\ismastertrue
\newif\ifisttf\isttftrue
\DeclareOption{master}{\ismastertrue}
\DeclareOption{doctor}{\ismasterfalse}
\newif\ifisanon\isanonfalse
\DeclareOption{anon}{\isanontrue}
\newif\ifistwoside\istwosidefalse
\DeclareOption{twoside}{\istwosidetrue}
\DeclareOption{ttf}{\isttftrue}
\DeclareOption{otf}{\isttffalse}
\newif\ifisvista\isvistafalse
\DeclareOption{vista}{\isvistatrue}
\newif\ifischapter\ischapterfalse
\DeclareOption{chapterhead}{\ischaptertrue}
\DeclareOption*{\PackageWarning{scnuthesis}{Unknown Option '\CurrentOption'}}
\ProcessOptions\relax
\RequirePackage{ifthen,calc}
\ifistwoside
  \LoadClass[a4paper,12pt,openright,twoside]{book}
\else
  \LoadClass[a4paper,12pt,openany]{book}
  \fi
\RequirePackage[includeheadfoot]{geometry}
\RequirePackage[center,pagestyles]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{graphicx}
\RequirePackage[config]{subfig}
\RequirePackage{float}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{tabularx}
\RequirePackage{diagbox}
\RequirePackage[neverdecrease]{paralist}
\RequirePackage{xcolor}
\RequirePackage{amsmath,amssymb,bm}
\RequirePackage[varg]{txfonts}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage[CJKnumber,no-math,BoldFont,SlantFont]{xeCJK}
\punctstyle{hangmobanjiao}
\RequirePackage{ulem}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage[numbers,sort&compress,square]{natbib}
\RequirePackage[CJKbookmarks=true,pdfborder=0 0 1]{hyperref}
\defaultfontfeatures{Mapping=tex-text}
\xeCJKsetcharclass{"0}{"2E7F}{0}
\xeCJKsetcharclass{"2E80}{"FFFF}{1}
\newcommand\installTTF{%
  \setmainfont{Times New Roman}
  \setsansfont{Arial}
  \setmonofont{Courier New}
  \ifisvista
    \setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}
    \setCJKmonofont{KaiTi} % Pluto use LiSu Thu use Kaiti, orig is SimSun
    \setCJKfamilyfont{fs}{FangSong}
    \setCJKfamilyfont{kai}{KaiTi}
  \else
    \setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi_GB2312}]{SimSun}
    \setCJKmonofont{KaiTi_GB2312} % Pluto use LiSu Thu use Kaiti, orig is SimSun
    \setCJKfamilyfont{fs}{FangSong_GB2312}
    \setCJKfamilyfont{kai}{KaiTi_GB2312}
  \fi
  \setCJKsansfont{SimHei}
  \setCJKfamilyfont{song}{SimSun}
  \setCJKfamilyfont{hei}{SimHei}
  \setCJKfamilyfont{li}{LiSu}
  \setCJKfamilyfont{you}{YouYuan}
}
\newcommand\installOTF{%
  \setmainfont{Times New Roman} % could be changed to "Times New Roman PS Std"
  \setsansfont{Arial}
  \setmonofont{Courier New}
  \setCJKmainfont[BoldFont={Adobe Heiti Std},ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
  \setCJKsansfont{Adobe Heiti Std}
  \setCJKmonofont{Adobe Kaiti Std}
  \setCJKfamilyfont{song}{Adobe Song Std}
  \setCJKfamilyfont{hei}{Adobe Heiti Std}
  \setCJKfamilyfont{fs}{Adobe Fangsong Std}
  \setCJKfamilyfont{kai}{Adobe Kaiti Std}
  \setCJKfamilyfont{li}{Adobe Kaiti Std}
  \setCJKfamilyfont{you}{Adobe Kaiti Std}
}

\ifisttf
  \installTTF
\else
  \installOTF
\fi
\newcommand{\song}{\CJKfamily{song}}    % 宋体
\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体
\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体
\newcommand{\li}{\CJKfamily{li}}        % 隶书
\newcommand{\you}{\CJKfamily{you}}      % 幼圆
\def\songti{\song}
\def\fangsong{\fs}
\def\kaishu{\kai}
\def\heiti{\hei}
\def\lishu{\li}
\def\youyuan{\you}
\newlength\thu@linespace
\newcommand{\thu@choosefont}[2]{%
    \setlength{\thu@linespace}{#2*\real{#1}}%
    \fontsize{#2}{\thu@linespace}\selectfont}
\def\thu@define@fontsize#1#2{%
    \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{%
    \thu@choosefont{##1}{#2}}}
\thu@define@fontsize{chuhao}{42bp}
\thu@define@fontsize{xiaochu}{36bp}
\thu@define@fontsize{yihao}{26bp}
\thu@define@fontsize{xiaoyi}{24bp}
\thu@define@fontsize{erhao}{22bp}
\thu@define@fontsize{xiaoer}{18bp}
\thu@define@fontsize{sanhao}{16bp}
\thu@define@fontsize{xiaosan}{15bp}
\thu@define@fontsize{sihao}{14bp}
\thu@define@fontsize{banxiaosi}{13bp}
\thu@define@fontsize{xiaosi}{12bp}
\thu@define@fontsize{dawu}{11bp}
\thu@define@fontsize{wuhao}{10.5bp}
\thu@define@fontsize{xiaowu}{9bp}
\thu@define@fontsize{liuhao}{7.5bp}
\thu@define@fontsize{xiaoliu}{6.5bp}
\thu@define@fontsize{qihao}{5.5bp}
\thu@define@fontsize{bahao}{5bp}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}} % 上标形式引用
\newcommand{\china}{中华人民共和国}
\def\thuthesis{\textsc{Thu}-\textsc{Thesis}}
\def\nudtpaper{\textsc{Nudt}\textsc{Paper}}
\def\scnuthesis{\textsc{SCNU}\textsc{Thesis}}
\newcommand{\pozhehao}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}
\newcommand{\chapterlabel}{}
\renewcommand\contentsname{\hei 目\hspace{1em}录}
\renewcommand\listfigurename{\hei 图\hspace{1em}目\hspace{1em}录}
\renewcommand\listtablename{\hei 表\hspace{1em}目\hspace{1em}录}
\newcommand\denotationname{\hei 符号列表}
\newcommand\ackname{致\hspace{1em}谢}
\newcommand\resumename{作者攻读学位期间发表的学术论文目录}
\newcommand\statementname{华南师范大学学位论文原创性声明}
\newcommand\listequationname{公式索引}
\newcommand\equationname{公式}
\renewcommand\bibname{参考文献}
\renewcommand\indexname{索引}
\renewcommand\figurename{图}
\renewcommand\tablename{表}
\renewcommand\appendixname{附录}
\def\CJK@today{\the\year 年 \the\month 月 \the\day 日}
\newcommand\zhtoday{\CJK@today}
\geometry{top=21mm,bottom=25.5mm,left=30mm,right=30mm}
\geometry{headheight=9mm,headsep=1mm,footskip=10mm}
 \renewcommand\setheadrule[1]{%
    \ifdim#1=\z@
       \let\makeheadrule\@empty
    \else
       \def\makeheadrule{%
       \makebox[0pt][l]{\rule[.2\baselineskip]{\linewidth}{1.5pt}}%
       }%
    \fi
  }

\renewcommand{\chaptermark}[1]{\markboth{\chaptertitlename~\ #1}{}}

\renewpagestyle{plain}{
\sethead{}{\raisebox{.65\baselineskip}
  {
    \songti \wuhao
    \ifischapter % 标题作为页眉
      \ifistwoside
      {
        \ifodd \value{page} % 奇数页
        {\chaptertitle}
        \else % 偶数页
        {\@displaytitle}\fi
      }
      \else
      {\chaptertitle}\fi
      \else %标题不作为页眉
      {\@displaytitle}\fi
  }
}{}
\headrule%
\setfoot{}{{\songti \wuhao 第~\thepage~页}}{}%
\footrule%
\setfootrule{1bp}
}

\newpagestyle{mpage}{
  \sethead{}{\raisebox{.65\baselineskip}
    {
      \songti \wuhao
      \ifischapter % 标题作为页眉
        \ifistwoside
        {
          \ifodd \value{page} % 奇数页
          {第\thechapter 章\hspace{1em}\chaptertitle}
          \else % 偶数页
          {\@displaytitle}\fi
        }
        \else
        {第\thechapter 章\hspace{1em}\chaptertitle}\fi
        \else %标题不作为页眉
        {\@displaytitle}\fi
    }
  }{}
  \headrule%
  \setfoot{}{{\songti \wuhao 第~\thepage~页}}{}%
  \footrule%
  \setfootrule{1bp}
}

\newpagestyle{appendixpage}{
\sethead{}{\raisebox{.65\baselineskip}
  {
    \songti \wuhao
    \ifischapter % 标题作为页眉
      \ifistwoside
      {
        \ifodd \value{page} % 奇数页
        {附录\thechapter\hspace{1em}\chaptertitle}
        \else % 偶数页
        {\@displaytitle}\fi
      }
      \else
      {附录\thechapter\hspace{1em}\chaptertitle}\fi
      \else %标题不作为页眉
      {\@displaytitle}\fi
    }
}{}
\headrule%
\setfoot{}{{\songti \wuhao 第~\thepage~页}}{}%
\footrule%
\setfootrule{1bp}
}

\newpagestyle{emptypage}{
\sethead{}{\raisebox{.65\baselineskip}
  {
    \songti \wuhao
    \ifischapter % 标题作为页眉
      \ifistwoside
      {
        \ifodd \value{page} % 奇数页
        {\chapterlabel}
        \else % 偶数页
        {\@displaytitle}\fi
      }
      \else
      {\chapterlabel}\fi
      \else %标题不作为页眉
      {\@displaytitle}\fi
  }
}{}
\headrule%
\setfoot{}{{\songti \wuhao 第~\thepage~页}}{}%
\footrule%
\setfootrule{1bp}
}

\renewcommand\frontmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmatterfalse
    \pagenumbering{Roman}
    \pagestyle{plain}
}

\renewcommand\mainmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmattertrue

    \pagenumbering{arabic}
    \normalsize % normal, 正文开始
    \def\@tabular{\wuhao[1.25]\old@tabular} % 之后表格字体使用5号

    \pagestyle{mpage}
  }
\renewcommand\backmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \titleformat{\chapter}{\filcenter \heiti \sanhao}{附录\,\thechapter\,}{1em}{}
    \titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \heiti \xiaosi[1.25]}
      {附录\,\thecontentslabel\quad}{}
      {\hspace{.5em}\titlerule*{.}\contentspage}
      \@mainmattertrue
    \pagestyle{appendixpage}
  }
\renewcommand\cleardoublepage{\clearpage\if@openright \ifodd\c@page
  \else
  \newpage{}
  \thispagestyle{empty}
  \vspace*{\fill}
  \begin{center}
  \end{center}
  \vspace*{\fill}
  \clearpage\fi\fi%
}
%%
\newcommand\cabstractname{摘\hspace{1em}要}
\newcommand\ckeywordsname{\hspace{-2em}{\heiti \sihao 关键词：}}
\newcommand\ckeywords[1]{{\xiaosi \songti \ckeywordsname #1}}

\newcommand\eabstractname{ABSTRACT}
\newcommand\ekeywordsname{\hspace{-2em}{\textsf{KEY WORDS:}}}
\newcommand\ekeywords[1]{{\xiaosi \ekeywordsname~#1}}
\newenvironment{cabstract}{%
  {\if@openright\cleardoublepage\else\clearpage\fi}%
  \addcontentsline{toc}{chapter}{\cabstractname}%
  ~
  \begin{spacing}{2.0}
    \begin{center}{\sanhao \hei \@displaytitle}\end{center}%
  \end{spacing}
  \xiaosi \vspace{1.4pt}%
  \ifisanon{}\else{
  \begin{center}%
    \begin{tabular}[c]{ll}%
      专业名称： & \@subject \\%
      申请者：& \@author \\%
      导师： & \@supervisor \\%
    \end{tabular}%
  \end{center}%
  }\fi
  ~\\%
  ~\\%
  ~\\%
  {\heiti\xiaosan \cabstractname} %

  % \@afterheading
}
{\par\vspace{2em}\par}

\newenvironment{eabstract}{%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \addcontentsline{toc}{chapter}{\eabstractname}%
  ~
  \begin{spacing}{2.0}
    \begin{center}{\sanhao \textsf{\@entitle}}\end{center}%
  \end{spacing}
  \xiaosi \vspace{1.4pt}
  \ifisanon{}\else{
  \begin{center}%
    \begin{tabular}[c]{ll}%
      Major： & \@ensubject \\%
      Name：& \@enauthor \\%
      Supervisor： & \@ensupervisor \\%
    \end{tabular}%
  \end{center}%
  }\fi
  ~\\%
  ~\\%
  ~\\%
  {\sihao \textsf \eabstractname} %

  % \@afterheading
}
{\par\vspace{2em}\par}
\titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \heiti \xiaosi[1.25]}
    {第\CJKnumber{\thecontentslabel}章\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{section}[2em]{\songti \xiaosi[1.25]}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{subsection}[4em]{\songti \xiaosi[1.25]}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{figure}[0pt]{\songti \xiaosi[1.25]}
    {\makebox[3.5em][l]{图~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{table}[0pt]{\songti \xiaosi[1.25]}
    {\makebox[3.5em][l]{表~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\scnu@chapter\@schapter}
\def\scnu@chapter[#1]#2{
  \ifnum \c@secnumdepth >\m@ne
    \if@openright\cleardoublepage\else\clearpage\fi
    \phantomsection
    \if@mainmatter
      \refstepcounter{chapter}%
      \addcontentsline{toc}{chapter}%
        {\protect\numberline{\thechapter}#1}%
    \else
      \addcontentsline{toc}{chapter}{#1}%
    \fi
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
  \else
    \@makechapterhead{#2}%
    \@afterheading
  \fi
}
\newcommand{\sectionbreak}{%
\addpenalty{-300}%
\vspace*{0pt}%
}
\setlength{\topskip}{0pt}
\setcounter{secnumdepth}{3}
\titleformat{\chapter}{\filcenter \songti \bfseries \sanhao[1.25]}{第\CJKnumber{\thechapter}章\,}{1em}{}
\titleformat{\section}{\songti \bfseries\xiaosan[1.25]}{\thesection}{1em}{}
\titleformat{\subsection}{\songti \bfseries\sihao[1.25]}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\songti \bfseries\xiaosi[1.25]}{\thesubsubsection}{1em}{}
\titlespacing{\chapter}{0pt}{2.4ex-\topskip-\heightof{A}}{2.4ex}
\titlespacing{\section}{0pt}{2ex-\heightof{a}}{2ex}
\titlespacing{\subsection}{0em}{2ex}{2ex}
\titlespacing{\subsubsection}{0em}{1ex}{0ex}
\renewcommand\normalsize{%
  \xiaosi%
  \renewcommand{\baselinestretch}{1.4}%
\setlength\abovedisplayskip{10bp \@plus 2bp \@minus 2bp}%
\setlength\abovedisplayshortskip{10bp \@plus 2bp \@minus 2bp}%
\setlength\belowdisplayskip{\abovedisplayskip}%
\setlength\belowdisplayshortskip{\abovedisplayshortskip}%
}
\setlength{\parindent}{2.5em}
\setlength{\parskip}{0bp \@plus .5bp \@minus .5bp}
\newcommand*{\ziju}[1]{\renewcommand{\CJKglue}{\hskip #1}}
\renewenvironment{thebibliography}[1]{%

  \thispagestyle{emptypage}
  \chapter*{\bibname}%

  \addcontentsline{toc}{chapter}{\bibname}

  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\renewcommand{\makelabel}[1]{##1\hfill}
    \settowidth\labelwidth{1.1cm}
    \setlength{\labelsep}{0.4em}
    \setlength{\itemindent}{0pt}
    \setlength{\leftmargin}{\labelwidth+\labelsep}
    \addtolength{\itemsep}{-0.7em}
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy\frenchspacing
  \clubpenalty4000%
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \interlinepenalty4000%
  \sfcode`\.\@m
}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist\frenchspacing}

\setlength{\floatsep}{12bp \@plus 2bp \@minus 1bp}
\setlength{\intextsep}{12bp \@plus 2bp \@minus 1bp}
\setlength{\textfloatsep}{12bp \@plus 2bp \@minus 1bp}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.80}
\let\old@tabular\@tabular
\def\thu@tabular{\wuhao[1.25]\old@tabular}
\DeclareCaptionLabelFormat{thu}{{\wuhao[1.25]\song #1~\rmfamily #2}}
\DeclareCaptionLabelSeparator{thu}{\hspace{1em}}
\DeclareCaptionFont{thu}{\wuhao[1.25]}
\captionsetup{labelformat=thu,labelsep=thu,font=thu}
\captionsetup[table]{position=top,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[figure]{position=bottom,belowskip={9bp-\intextsep},aboveskip=6bp}
\captionsetup[subfloat]
{labelformat=simple,font=thu,captionskip=6bp,nearskip=6bp,farskip=0bp,topadjust=0bp}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\let\thu@LT@array\LT@array
\def\LT@array{\thu@LT@array}
\newenvironment{denotation}[1][3cm]{
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{emptypage}
  \chapter*{\denotationname} % no tocline
  \addcontentsline{toc}{chapter}{\denotationname}%
  \noindent\begin{list}{}%
    {\vskip-30bp\xiaosi[1.6]
      \renewcommand\makelabel[1]{##1\hfil}
      \setlength{\labelwidth}{#1} % 标签盒子宽度
      \setlength{\labelsep}{1cm} % 标签与列表文本距离
      \setlength{\itemindent}{0cm} % 标签缩进量
      \setlength{\leftmargin}{\labelwidth+\labelsep} % 左边界
      \setlength{\rightmargin}{0cm}
      \setlength{\parsep}{0cm} % 段落间距
      \setlength{\itemsep}{0cm} % 标签间距
      \setlength{\listparindent}{0cm} % 段落缩进量
      \setlength{\topsep}{0pt} % 标签与上文的间距
    }
  }{\end{list}}
\newenvironment{ack}{%
  \thispagestyle{emptypage}
  \chapter*{\ackname}%
  \addcontentsline{toc}{chapter}{\ackname}%
  \ifisanon\color{white}\else\relax\fi%
  \xiaosi%
  \@mainmatterfalse
  \@afterheading
}
{\par\vspace{2em}\par}
\newenvironment{resume}{%
  \thispagestyle{emptypage}
  \chapter*{\resumename}
  \addcontentsline{toc}{chapter}{\resumename}
  \ifisanon\color{white}\else\relax\fi%
  \xiaosi
  \@mainmatterfalse
  \@afterheading
}
{\par\vspace{2em}\par}
\newenvironment{statement}{%
  \thispagestyle{emptypage}
  \chapter*{\statementname}%
  \addcontentsline{toc}{chapter}{\statementname}%
  \ifisanon\color{white}\else\relax\fi%
  \xiaosi%
  \@mainmatterfalse
  \@afterheading
}
{\par\vspace{2em}\par}

\renewtheoremstyle{nonumberplain}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ \theorem@separator]}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ (##3)\theorem@separator]}
\theoremstyle{nonumberplain}
\theorembodyfont{\rmfamily}
\theoremheaderfont{\sffamily}
\theoremsymbol{\ensuremath{\blacksquare}}
\theoremseparator{:\,}
\newtheorem{proof}{证明}[chapter]
\newtheorem{assumption}{假设}[chapter]
\newtheorem{definition}{定义}[chapter]

\renewtheoremstyle{plain}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ ##2\theorem@separator]}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ ##2\ (##3)\theorem@separator]}
\theoremstyle{plain}
\theorembodyfont{\kai}
\theoremheaderfont{\hei}
\theoremsymbol{}
\newtheorem{lemma}{引理}[chapter]
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{conjecture}{猜想}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{exercise}{练习}[section]
\newtheorem{example}{例}[section]
\newtheorem{problem}{问题}[section]
\newtheorem{remark}{注释}[section]
\renewenvironment{split}{%
  \if@display%
    \ifinner%
      \@xp\@xp\@xp\split@aligned%
    \else%
      \ifst@rred \else \global\@eqnswtrue \fi%
    \fi%
  \fi%
  \collect@body\gather@split%
}{%
  \crcr%
  \egroup%
  \egroup%
  \iftagsleft@ \@xp\lendsplit@ \else \@xp\rendsplit@ \fi%
}
\def\classification#1{\def\@classification{#1}} % 中图分类号
\def\serialno#1{\def\@serialno{#1}} % 学号
\def\udc#1{\def\@udc{#1}} % UDC号
\def\mastertype#1{\def\@mastertype{#1}} % 硕士学位类型
\def\confidentiality#1{\def\@confidentiality{#1}} % 密级
\def\title#1{\def\@title{#1}} % 中文题目
\def\displaytitle#1{\def\@displaytitle{#1}} % 文章标题
\def\entitle#1{\def\@entitle{#1}} % 英文标题
\def\author#1{\def\@author{#1}} % 中文作者名
\def\enauthor#1{\def\@enauthor{#1}} % 英文作者名
\def\zhdate#1{\def\@zhdate{#1}} % 中文日期
\def\subject#1{\def\@subject{#1}} % 中文学科
\def\ensubject#1{\def\@ensubject{#1}} % 英文学科
\def\researchfield#1{\def\@researchfield{#1}} % 中文研究方向
\def\supervisor#1{\def\@supervisor{#1}} % 导师
\def\ensupervisor#1{\def\@ensupervisor{#1}} % 导师英文名
\def\protitle#1{\def\@protitle{#1}} % 导师的职称
\def\school#1{\def\@school{#1}} % 学院

\def\optionpaperclass#1{\def\@optionpaperclass{#1}} % paperclass
\def\optionpaperclassen#1{\def\@optionpaperclassen{#1}} % paperclass english
\def\optionas#1{\def\@optionas{#1}} % Advisor OR Supervisor
\ifismaster
  \optionpaperclass{硕士}
  \optionpaperclassen{Master}
  \optionas{Advisor}
\else
  \optionpaperclass{博士}
  \optionpaperclassen{Doctor}
  \optionas{Supervisor}
\fi
\def\maketitle{%
  \renewcommand{\baselinestretch}{1.3}%
  \def\entry##1##2##3{%
    \multicolumn{##1}{l}{\underline{\hbox to ##2{\hfil##3\hfil}}}
    }
  \null
  \ifisanon%
  \author{}%
  \enauthor{}%
  \supervisor{}%
  \ensupervisor{}%
  \protitle{}%
  \else\relax\fi%
  \pagenumbering{alph}% not display, for print only
  \thispagestyle{empty}%
  \begin{center}\leavevmode % 表格环境
  \vspace{-2.3cm}
  {\songti \sihao[1.25]%
    \begin{tabular}{llcll}
      分类号：  & \entry{1}{3.2cm}{\@classification}      \hspace*{4.8cm}   %
      密级： & \entry{1}{3.2cm}{\@confidentiality} \\[5mm]
      UDC & \entry{1}{3.2cm}{\@udc}     \hspace*{4.8cm}%
      学号：  & \entry{1}{3.2cm}{\@serialno}
    \end{tabular}
  }
  \par
  \vspace*{1.5cm} %插入空白
  \includegraphics[width=11cm]{title.pdf}\\
  %\vspace{-1.5cm} %文字上移
  \sanhao\textbf{\textit{South China Normal University}}\\
  \vspace{0.1cm} %插入空白
  {\songti \bfseries \xiaochu \ziju{5pt} \@optionpaperclass{}学位论文\\}
  \ifismaster
  \vspace{0.2cm} %插入空白
  {\songti \bfseries \xiaoer （\@mastertype 学位）\\}
  \fi
  \vspace{1cm} %插入空白
  \heiti \erhao[1.25] \uline{\@title}\\
  \vspace{40bp}
  \renewcommand{\baselinestretch}{1.0}%
  {\songti \sihao
    \begin{tabular}{lp{6cm}c}
      \raisebox{-3.7ex}[0pt]{\ziju{7pt}学位申请人:} &
        {\fs \hfil\raisebox{-3.7ex}[0pt]{\@author}\hfil{}} & \\[3.2ex]
        \cline{2-2}
      \raisebox{-3.7ex}[0pt]{\ziju{14pt}学科专业:} &
        {\fs \hfil\raisebox{-3.7ex}[0pt]{\@subject}\hfil{}} & \\[3.2ex]
        \cline{2-2}
      \raisebox{-3.7ex}[0pt]{\ziju{3pt}论文研究方向:} &
        {\fs \hfil\raisebox{-3.7ex}[0pt]{\@researchfield}\hfil{}} & \\[3.2ex]
        \cline{2-2}
      \raisebox{-3.7ex}[0pt]{\ziju{14pt}所在学院:} &
        {\fs \hfil\raisebox{-3.7ex}[0pt]{\@school}\hfil{}} & \\[3.2ex]
        \cline{2-2}
      \raisebox{-3.7ex}[0pt]{导师姓名及职称:} &
        {\fs \hfil\raisebox{-3.7ex}[0pt]{\@supervisor~\@protitle}\hfil{}} & \\[3.2ex]
        \cline{2-2}
    \end{tabular}
  }\\
  \vspace{2cm}
  {\songti \sihao \@zhdate}
  \vspace{1cm}
  \end{center}%
  \vspace{1mm}
  \cleardoublepage%
}

\def\displayentitle#1{\def\@displayentitle{#1}} % 文章标题
\def\entitle#1{\def\@entitle{#1}} % 英文标题
\def\enresearchfield#1{\def\@enresearchfield{#1}} % 英文研究方向
\def\enschool#1{\def\@enschool{#1}} % 英文学院
\def\endate#1{\def\@endate{#1}} % 英文日期
\def\maketitleen{%
  \renewcommand{\baselinestretch}{1.3}%
  \def\entry##1##2##3{%
    \multicolumn{##1}{l}{\underline{\hbox to ##2{\hfil##3\hfil}}}
    }
  \null
  \ifisanon%
  \enauthor{}%
  \ensupervisor{}%
  \protitle{}%
  \else\relax\fi%
  \pagenumbering{alph}% not display, for print only
  \thispagestyle{empty}%
  \begin{center}\leavevmode % 表格环境
  \vspace{-0.3cm}
  \par
  \erhao\textbf{{South China Normal University}}\\
  \vspace*{1.5cm} %插入空白
  \sanhao\textbf{{A Dissertation Submitted for the Degree of Master}}\\
  \vspace{2.5cm} %插入空白
  \textbf{\uline{\erhao[1.25] \@entitle}}\\
  \vspace{40bp}
  {\songti \sihao
    \begin{tabular}{lp{8cm}c}
      \raisebox{-3.7ex}[0pt]{\textbf{Supervisor:}} &
        {\fs \hfil\raisebox{-3.7ex}[0pt]{\@ensupervisor}\hfil{}} & \\[3.2ex]
        \cline{2-2}
      \raisebox{-3.7ex}[0pt]{\textbf{Candidate:}} &
        {\fs \hfil\raisebox{-3.7ex}[0pt]{\@enauthor}\hfil{}} & \\[3.2ex]
        \cline{2-2}
      \raisebox{-3.7ex}[0pt]{\textbf{Major:}} &
        {\fs \hfil\raisebox{-3.7ex}[0pt]{\@ensubject}\hfil{}} & \\[3.2ex]
        \cline{2-2}
      \raisebox{-3.7ex}[0pt]{\textbf{Research direction:}} &
        {\fs \hfil\raisebox{-3.7ex}[0pt]{\@enresearchfield}\hfil{}} & \\[3.2ex]
        \cline{2-2}
      \raisebox{-3.7ex}[0pt]{\textbf{Department:}} &
        {\fs \hfil\raisebox{-3.7ex}[0pt]{\@enschool}\hfil{}} & \\[3.2ex]
        \cline{2-2}
    \end{tabular}
  }\\
  \vspace{3cm}
  \textbf{\@endate}% 英国日期格式
  \vspace{1cm}
  \end{center}%
  \vspace{1mm}
  \cleardoublepage%
}

\def\authorqualification#1{\def\@authorqualification{#1}} % 申请人姓名
\def\titlequalification#1{\def\@titlequalification{#1}} % 论文题目
\def\graduatetype#1{\def\@graduatetype{#1}} % 论文题目

\def\namea#1{\def\@namea{#1}} % 姓名1
\def\protitlea#1{\def\@protitlea{#1}} % 职称1
\def\unita#1{\def\@unita{#1}} % 单位1
\def\notea#1{\def\@notea{#1}} % 备注1

\def\nameb#1{\def\@nameb{#1}} % 姓名2
\def\protitleb#1{\def\@protitleb{#1}} % 职称2
\def\unitb#1{\def\@unitb{#1}} % 单位2
\def\noteb#1{\def\@noteb{#1}} % 备注2

\def\namec#1{\def\@namec{#1}} % 姓名3
\def\protitlec#1{\def\@protitlec{#1}} % 职称3
\def\unitc#1{\def\@unitc{#1}} % 单位3
\def\notec#1{\def\@notec{#1}} % 备注3

\def\named#1{\def\@named{#1}} % 姓名4
\def\protitled#1{\def\@protitled{#1}} % 职称4
\def\unitd#1{\def\@unitd{#1}} % 单位4
\def\noted#1{\def\@noted{#1}} % 备注4

\def\namee#1{\def\@namee{#1}} % 姓名5
\def\protitlee#1{\def\@protitlee{#1}} % 职称5
\def\unite#1{\def\@unite{#1}} % 单位5
\def\notee#1{\def\@notee{#1}} % 备注5

\def\namef#1{\def\@namef{#1}} % 姓名6
\def\protitlef#1{\def\@protitlef{#1}} % 职称6
\def\unitf#1{\def\@unitf{#1}} % 单位6
\def\notef#1{\def\@notef{#1}} % 备注6

\def\nameg#1{\def\@nameg{#1}} % 姓名7
\def\protitleg#1{\def\@protitleg{#1}} % 职称7
\def\unitg#1{\def\@unitg{#1}} % 单位7
\def\noteg#1{\def\@noteg{#1}} % 备注7

\def\makequalification{%
  \def\entry##1##2##3{%
    \multicolumn{##1}{l}{\underline{\hbox to ##2{\hfil##3\hfil}}}
    }
  \pagenumbering{alph}% not display, for print only
  \thispagestyle{empty}%
  %\begin{tabular}{|l|}
  %\hline
  \sanhao
  %\vspace{2.0cm}%
  \begin{center}
  \sanhao \songti \textbf{华南师范大学研究生学位论文答辩合格证明}\\
  \end{center}
  \vspace*{0.5cm} %插入空白
  \noindent
  \begin{tabularx}{\linewidth}{@{}>{\hangindent=\parindent\hspace{2em}}X@{}}
	  \songti\sanhao
	  学位申请人\uline{\@authorqualification} 向本学位论文答辩委员会提交题为\uline{\@titlequalification}\@graduatetype 论文，经答辩委员会审议，本论文答辩合格，特此证明。 
  \end{tabularx} \\
  \noindent
  \renewcommand{\arraystretch}{1.25}
  \begin{center}\leavevmode %表格环境
  {\heiti \sanhao
    \uline{\@authorqualification}\@graduatetype 学位论文答辩委员会成员名单 
  }
  \par
  \vspace{1.0cm}
  {\songti \xiaosi
    \begin{tabular}{|p{2.5cm}<{\centering}|p{2.5cm}<{\centering}|p{5cm}<{\centering}|p{2.5cm}<{\centering}|}
	   \hline
      {姓名} & {职称} & {单位} & {备注}\\
       \hline
      {\@namea} & {\@protitlea} & {\@unita} & {\@notea}\\
	   \hline
      {\@nameb} & {\@protitleb} & {\@unitb} & {\@noteb}\\
	   \hline
      {\@namec} & {\@protitlec} & {\@unitc} & {\@notec}\\
	   \hline
      {\@named} & {\@protitled} & {\@unitd} & {\@noted}\\
	   \hline
      {\@namee} & {\@protitlee} & {\@unite} & {\@notee}\\
      \hline
      {\@namef} & {\@protitlef} & {\@unitf} & {\@notef}\\
      \hline
      {\@nameg} & {\@protitleg} & {\@unitg} & {\@noteg}\\
      \hline
    \end{tabular}
   }
  \par
  \vspace{1cm}
  \end{center}%
  \sanhao 论文指导老师：\uline{\qquad \qquad \qquad \qquad}
  \par
  \vspace{0.5cm}
  \begin{flushright}
   {\sihao\songti 华南师范大学 \sanhao\songti\qquad 学院（公章）}\\
   {\sanhao\songti   年 \quad 月 \quad 日\quad\qquad}
  \end{flushright}
  \par
  %\hline
  %\end{tabular}
  \cleardoublepage%
}


\endinput
%%
%% End of file `scnuthesis.cls'.
