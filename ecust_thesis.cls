%==================================================
%% ecust_thesis.cls for ECUST Thesis
%% modified by song wenjiang
%% last update：2021.05.31
%% 参考来源：
%% BIT-thesis-grd.cls for BIT Thesis
%% modified by yang yating
%% version: 1.0
%% last update: Sep 1st, 2016
%%==================================================

%% math packages -- conflict with xunicode
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,mathrsfs}
% 直立希腊字母字体
\RequirePackage{upgreek}

\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{ecust_thesis}
  [2021/05/31 v1.0 ecust_thesis document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\newif\ifECUST@master\ECUST@masterfalse
\newif\ifECUST@doctor\ECUST@doctorfalse
\newif\ifECUST@istwoside\ECUST@istwosidefalse
\DeclareOption{twoside}{\ECUST@istwosidetrue}
\DeclareOption{master}{\ECUST@mastertrue}
\DeclareOption{doctor}{\ECUST@doctortrue}

\ProcessOptions\relax
\ifECUST@istwoside
\LoadClass[zihao=-4,a4paper,twoside,openright,UTF8,space=auto]{ctexbook}
\else
\LoadClass[zihao=-4,a4paper,oneside,openany,UTF8,space=auto]{ctexbook}
\fi

%%
%% the setup of ctex package
%%
\def\CTEX@contentsname{目录}
\def\CTEX@listfigurename{插图索引}
\def\CTEX@listtablename{表格索引}

%%
%% 封面标题
%%
\def\ECUST@label@major{学~~~~科~~~~专~~~~业}
\def\ECUST@label@title{论文题目}
\def\ECUST@label@author{作~~~~者~~~~姓~~~~名}
\def\ECUST@label@classification{中图分类号}
\def\ECUST@label@confidential{密级}
\def\ECUST@label@UDC{UDC\!分类号：}
\def\ECUST@label@serialnumber{编号}
\def\ECUST@label@thesis{学位论文}
\def\ECUST@label@advisor{指~~~~导~~~~教~~~~师}
\def\ECUST@label@degree{申~~~~请~~~~学~~~~位}
\def\ECUST@label@submitdate{论文提交日期}
\def\ECUST@label@defenddate{论~文~答~辩~日~期}
\def\ECUST@label@institute{学~~~~院~~~~名~~~~称}
\def\ECUST@label@school{学~位~授~予~单~位}
\def\ECUST@label@chairman{答辩委员会主席}

%%
%% 封面内容
%%

\def\ECUST@value@classification{}
\def\ECUST@value@confidential{}
\def\ECUST@value@UDC{}
\def\ECUST@value@serialnumber{}
\def\ECUST@value@school{}
\def\ECUST@value@degree{}
\def\ECUST@value@title{~~~~~（论~文~题~目）~~~~~}
\def\ECUST@value@vtitle{竖排论文题目}
\def\ECUST@value@titlemark{\ECUST@value@title}
\def\ECUST@value@author{（作~者~姓~名）}
\def\ECUST@value@advisor{（姓名、专业技术职务、学位）}
\def\ECUST@value@advisorinstitute{（单位）}
\def\ECUST@value@major{}
\def\ECUST@value@studentnumber{} %_ added by wei.jianwen@gmail.com
\def\ECUST@value@submitdate{}
\def\ECUST@value@defenddate{}
\def\ECUST@value@institute{}
\def\ECUST@value@chairman{}
\def\ECUST@label@statement{}


%% 设置圆圈的格式 或使用\textcircled
\usepackage{tikz}
\usepackage{etoolbox}
\newcommand{\circled}[2][]{\tikz[baseline=(char.base)]
    {\node[shape = circle, draw, inner sep = 1pt]
    (char) {\phantom{\ifblank{#1}{#2}{#1}}};
    \node at (char.center) {\makebox[0pt][c]{#2}};}}
\robustify{\circled}

%% 论文原创性声明
\def\ECUST@label@original{研究成果声明}
\def\ECUST@label@authorization{关于学位论文使用权的说明}
\def\ECUST@label@authorsign{作者签名：}
\def\ECUST@label@Supervisorsign{导师签名：}
\def\ECUST@label@originalDate{签字日期：}
\def\ECUST@label@originalcontent{\ECUSTspace\ECUSTspace 本人郑重声明：所提交的学位论文是我本人在指导教师的指导下进行的研究工作获得的研究成果。尽我所知，文中除特别标注和致谢的地方外，学位论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得华东理工大学或其它教育机构的学位或证书所使用过的材料。与我一同工作的合作者对此研究工作所做的任何贡献均已在学位论文中作了明确的说明并表示了谢意。\par 特此申明。}
\def\ECUST@label@authorizationcontent{\ECUSTspace\ECUSTspace 本人完全了解华东理工大学有关保管、使用学位论文的规定，其中包括：\circled{1} 学校有权保管、并向有关部门送交学位论文的原件与复印件；\circled{2} 学校可以采用影印、缩印或其它复制手段复制并保存学位论文；\circled{3} 学校可允许学位论文被查阅或借阅；\circled{4} 学校可以学术交流为目的,复制赠送和交换学位论文；\circled{5} 学校可以公布学位论文的全部或部分内容（保密学位论文在解密后遵守此规定）。}


%%
%% 英语封面标题
%%
\def\ECUST@label@englishadvisor{Supervisor:}
\def\ECUST@label@englishstatement{Submitted in total fulfilment
  of the requirements for the degree of \ECUST@value@englishdegree \\
  in \ECUST@value@englishmajor}
\def\ECUST@label@englishauthor{Candidate Name:}
\def\ECUST@label@englishadvisor{Faculty Mentor:}
\def\ECUST@label@englishchairman{Chair, Thesis Committee:}
\def\ECUST@label@englishinstitute{School or Department:}
\def\ECUST@label@englishdegree{Degree Applied:}
\def\ECUST@label@englishmajor{Major:}
\def\ECUST@label@englishschool{Degree by:}
\def\ECUST@label@englishdate{The Data of Defence:}


%%
%% 英语封面内容
%%
\def\ECUST@value@englishtitle{(English Title of Thesis)}
\def\ECUST@value@englishauthor{(Author Name)}
\def\ECUST@value@englishadvisor{(Supervisor Name)}
\def\ECUST@value@englishinstitute{(Institute Name)}
\def\ECUST@value@englishscholl{(ECUST)}
\def\ECUST@value@englishchair{(someone)}
\def\ECUST@value@englishdate{}
\def\ECUST@value@englishdegree{}
\def\ECUST@value@englishmajor{}



\def\ECUST@label@abstract{摘要}
\def\ECUST@label@englishabstract{Abstract}
\def\ECUST@label@keywords{关键词~}
\def\ECUST@label@englishkeywords{Keywords~}
\def\ECUST@label@conclusion{结论}
\def\ECUST@label@appendix{附录}
\def\ECUST@label@publications{攻读博士期间的主要学术成果及参与的科研项目}
\def\ECUST@label@projects{攻读学位期间参与的项目}
\def\ECUST@label@resume{作者简介}
\def\ECUST@label@reference{参考文献！！！！}
\def\ECUST@label@thanks{致谢}
\def\ECUST@value@templateversion{v1.0}
%%
%% label in the head 页眉页脚
%%
\def\ECUST@label@headschoolname{华东理工大学博士学位论文}

%% 当前模板的版本
\newcommand{\version}{\ECUST@value@templateversion}
%\newfontfamily\bsong[FakeBold = 5]{SimSun}
%\newfontfamily\bkai[FakeBold = 5]{STKaiti}
\setCJKfamilyfont{zhsong}[AutoFakeBold = {4.27}]{SimSun}
\renewcommand*{\songti}{\CJKfamily{zhsong}}
\setCJKfamilyfont{zhkai}[AutoFakeBold = {4.27}]{KaiTi}
\renewcommand*{\kaishu}{\CJKfamily{zhkai}}
%%==============引用geometry 宏包设置纸张和页面========================
%设置版面:上3.5cm，下2.5cm，左2.7cm，右2.7cm，页眉2.5cm，页脚1.8cm，装订线0cm
\usepackage[%
paper=a4paper,%
top=2.8cm,% 上 3.5cm %
bottom=2cm,% 下 2.5cm %
left=2.5cm,% 左 2.7cm %
right=2.5cm,% 右 2.7cm %
headheight=2.0cm,% 页眉 2.5cm %
headsep=0.3cm,% headsep
footskip=1.2cm% 页脚 1.8cm %
]{geometry} % 页面设置 %
%% =========================================================

%\parskip 0.5ex plus 0.25ex minus 0.25ex
%% Command -- Clear Double Page
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
%设置行距
\RequirePackage{setspace}
\setstretch{1.4}
\linespread{1.4}

%% 设置章节格式
% 第1章（空2格）××××，4号黑体，居中，上下各空1行
\ctexset{chapter={
      name = {第,章},
      number = {\arabic{chapter}},
      format = { \heiti \centering \zihao{4}},
      pagestyle = {ECUST@headings},
      beforeskip = 12pt,
      afterskip = 25bp,
      fixskip = true,
  }
}

%% 1.1（空2格）××××，小4号宋体加粗，顶格排，上下各空0.5行
\ctexset{section={
  format={\bfseries \songti\raggedright \zihao{-4}},
  beforeskip = 12pt,
  afterskip = 12pt,
  fixskip = true,
  }
}

%1.1.1（空2格）××××，小4号宋体，顶格排

\ctexset{subsection={
   format = { \songti \raggedright \zihao{-4}},
   beforeskip = 0ex,
   afterskip = 0ex,
   fixskip = true,
   indent={-0.25em} % 不加这个看上去好像没有顶格，所以调整一下
   }
}

%1.1.1（空2格）××××，小4号宋体，顶格排

\ctexset{subsubsection={
      format={\songti \raggedright \zihao{-4}},
      beforeskip = 0ex,
      afterskip = 0ex,
      fixskip=true,
  }
}

%% 设定目录格式。
\RequirePackage{titletoc}
\titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \songti \zihao{4}}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{section}[0em]{\songti \zihao{-4}}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{subsection}[0em]{\songti \zihao{-4}}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}

%% 选择编译
\RequirePackage{ifthen}

%% check pdfTeX mode
\RequirePackage{ifpdf}

%% fancyhdr 页眉页脚控制
\RequirePackage{fancyhdr}

% 空 页眉页脚
\fancypagestyle{ECUST@empty}{%
  \fancyhf{}}

%======正文页眉页脚=================
\fancypagestyle{ECUST@headings}{%
  \fancyhf{}
  \fancyhead[RO,LE]{\songti\zihao{5} 第\thepage 页}
  \fancyhead[RE,LO]{\ifECUST@master{\zihao{4}\bfseries\kaishu{华东理工大学}}{\zihao{-4}\songti{博士学位论文}}
                \else{\zihao{4}\bfseries\kaishu{华东理工大学}}{\zihao{-4}\songti{博士学位论文}}\fi}
  }

%==================================对于openright 选项，必须保证章页右开，且如果前章末页内容须清空其页眉页脚。===================
\let\ECUST@cleardoublepage\cleardoublepage
\newcommand{\ECUST@clearemptydoublepage}{%
	\clearpage{\pagestyle{ECUST@empty}\ECUST@cleardoublepage}}
\let\cleardoublepage\ECUST@clearemptydoublepage

 %================修该frontmatter 的页码为大写罗马格式，并调整页面风格===============
\renewcommand{\frontmatter}{
 \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{ECUST@headings}
}
%=======================修改mainmatter 的页码为阿拉伯格式，并调整页面风格========================
\renewcommand{\mainmatter}{
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{ECUST@headings}
}


%% 复杂表格
\RequirePackage{threeparttable}
\RequirePackage{dcolumn}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\newcolumntype{d}[1]{D{.}{.}{#1}}% or D{.}{,}{#1} or D{.}{\cdot}{#1}


%% 定义几个常用的数学常量符号
\newcommand{\me}{\mathrm{e}} %定义 对数常数e，虚数符号i,j以及微分算子d为直立体。
\newcommand{\mi}{\mathrm{i}}
\newcommand{\mj}{\mathrm{j}}
\newcommand{\dif}{\mathrm{d}}

% 可伸长的数学符号
% \makeatletter
\def\ExtendSymbol#1#2#3#4#5{\ext@arrow 0099{\arrowfill@#1#2#3}{#4}{#5}}
\def\RightExtendSymbol#1#2#3#4#5{\ext@arrow 0359{\arrowfill@#1#2#3}{#4}{#5}}
\def\LeftExtendSymbol#1#2#3#4#5{\ext@arrow 6095{\arrowfill@#1#2#3}{#4}{#5}}
% \makeatother

\newcommand\myRightarrow[2][]{\RightExtendSymbol{=}{=}{\Rightarrow}{#1}{#2}}
\newcommand\myLeftarrow[2][]{\LeftExtendSymbol{\Leftarrow}{=}{=}{#1}{#2}}
\newcommand\myBioarrow[2][]{\ExtendSymbol{\Leftarrow}{=}{\Rightarrow}{#1}{#2}}
\newcommand\myLongEqual[2][]{\ExtendSymbol{=}{=}{=}{#1}{#2}}


\theoremstyle{plain}
  \newtheorem{algo}{算法~}[chapter]
  \newtheorem{thm}{定理~}[chapter]
  \newtheorem{lem}[thm]{引理~}
  \newtheorem{prop}[thm]{命题~}
  \newtheorem{cor}[thm]{推论~}
\theoremstyle{definition}
  \newtheorem{defn}{定义~}[chapter]
  \newtheorem{conj}{猜想~}[chapter]
  \newtheorem{exmp}{例~}[chapter]
  \newtheorem{rem}{注~}
  \newtheorem{case}{情形~}
\theoremstyle{break}
  \newtheorem{bthm}[thm]{定理~}
  \newtheorem{blem}[thm]{引理~}
  \newtheorem{bprop}[thm]{命题~}
  \newtheorem{bcor}[thm]{推论~}
\renewcommand{\proofname}{\bf 证明}


%% 英文字体使用 Times New Roman
\RequirePackage{fontspec}
\RequirePackage{xltxtra} % \XeTeX Logo
%% Times Fonts
\RequirePackage{times}
%% Set Old Fonts Encoding
\usepackage[T1]{fontenc}


%% graphics packages
\RequirePackage{graphicx}
%% 并列子图
\RequirePackage{subfigure}

\RequirePackage{wrapfig}
%% 如果插入的图片没有指定扩展名，那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf,.eps,.png,.jpg,.jpeg}
\RequirePackage{caption}
\RequirePackage[list=off]{bicaption}% ccaption -- bicaption
%\RequirePackage{subcaption}
%\RequirePackage{ccaption}
%\captiondelim{\ }
%\captionnamefont{\bfseries\songti\zihao{5}}
%\captiontitlefont{\songti\zihao{5}}


%% sort and compress citations
\RequirePackage[sort&compress,numbers]{natbib}
% 上标引用
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}


% 将浮动参数设为较宽松的值
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}

\DeclareCaptionFont{songti}{\songti}
\captionsetup{format=plain,labelformat=simple,labelsep=quad,justification=centering,font={small}}

\captionsetup[sub]{font=footnotesize}

\DeclareCaptionOption{bi-first}[]{%
    \bfseries\songti\zihao{5}
    \def\tablename{表}
    \def\figurename{图}
    \def\ALG@name{算法}
}
\DeclareCaptionOption{bi-second}[]{%
    \zihao{5}
    \def\tablename{Table}
    \def\figurename{Fig.}
    \def\ALG@name{Algorithm}
}

\captionsetup[bi-first]{bi-first}
\captionsetup[bi-second]{bi-second}

% 定公式、图、表编号为"3-1"的形式，即分隔符由.变为短杠
\renewcommand\theequation{\arabic{chapter}-\arabic{equation}}
\renewcommand\thefigure{\arabic{chapter}.\arabic{figure}}
\renewcommand\thetable{\arabic{chapter}.\arabic{table}}

% 颜色宏包
\RequirePackage{xcolor}


% 中文破折号
\newcommand{\cndash}{\rule{0.0em}{0pt}\rule[0.35em]{1.4em}{0.05em}\rule{0.2em}{0pt}}

% listings 源代码显示宏包
\RequirePackage{listings}
\lstset{tabsize=4, %
  frame=shadowbox, %把代码用带有阴影的框圈起来
  commentstyle=\color{red!50!green!50!blue!50},%浅灰色的注释
  rulesepcolor=\color{red!20!green!20!blue!20},%代码块边框为淡青色
  keywordstyle=\color{blue!90}\bfseries, %代码关键字的颜色为蓝色，粗体
  showstringspaces=false,%不显示代码字符串中间的空格标记
  stringstyle=\ttfamily, % 代码字符串的特殊格式
  keepspaces=true, %
  breakindent=22pt, %
  numbers=left,%左侧显示行号
  stepnumber=1,%
  numberstyle=\tiny, %行号字体用小号
  basicstyle=\footnotesize, %
  showspaces=false, %
  flexiblecolumns=true, %
  breaklines=true, %对过长的代码自动换行
  breakautoindent=true,%
  breakindent=4em, %
  aboveskip=1em, %代码块边框
  %% added by http://bbs.ctex.org/viewthread.php?tid=53451
  fontadjust,
  captionpos=t,
  framextopmargin=2pt,framexbottommargin=2pt,abovecaptionskip=-3pt,belowcaptionskip=3pt,
  xleftmargin=4em,xrightmargin=4em, % 设定listing左右的空白
  texcl=true,
  % 设定中文冲突，断行，列模式，数学环境输入，listing数字的样式
  extendedchars=false,columns=flexible,mathescape=true
  numbersep=-1em
}
\renewcommand{\lstlistingname}{代码} %% 重命名Listings标题头


%% hyperref package

\ifxetex  % xelatex
\RequirePackage[xetex]{hyperref}
\hypersetup{
  bookmarksnumbered,%
  % bookmarksopen=true,%设置目录在PDF中是自动展开，还是默认折叠
  % bookmarksopenlevel=5,
  colorlinks,%
  linkcolor=black,%
  urlcolor=black, %
  citecolor=black,%
  plainpages=false,%
  pdfstartview=FitH
}
\else
\ifpdf    % pdflatex
\RequirePackage[pdftex,unicode]{hyperref}
\else     % dvipdfmx or dvips
\RequirePackage[dvipdfmx,unicode]{hyperref}
\fi
\fi

%% enumerate 列表环境间距调节
\usepackage{enumitem}
% \setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
% \setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
% \setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}

%_  参考文献风格 added by wei.jianwen@gmail.com
\bibliographystyle{GBT7714-2005NLang}

%_ ECUSTspace
%\newcommand\ECUSTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\newcommand{\ECUSTspace}[1][1]{\hspace{#1\ccwd}}

\def\ECUST@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\ECUSTfiledate{#1}%
  \def\ECUSTfileversion{#2}%
  \def\ECUSTfileinfo{#3}}%
\expandafter\ifx\csname ver@ECUSTmaster-xetex.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_ECUSTmaster-xetex.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@ECUSTmaster-xetex.cls\endcsname}
\fi
\expandafter\ECUST@getfileinfo\reserved@a\relax? ? \relax\relax
\def\ECUST@underline[#1]#2{%
  \underline{\hbox to #1{\hfill#2\hfill}}}
\def\ECUSTunderline{\@ifnextchar[\ECUST@underline\underline}

%%%%中文标题页的可用命令
\newcommand\classification[1]{\def\ECUST@value@classification{#1}}
\newcommand\studentnumber[1]{\def\ECUST@value@studentnumber{#1}}
\newcommand\confidential[1]{\def\ECUST@value@confidential{#1}}
\newcommand\UDC[1]{\def\ECUST@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\ECUST@value@serialnumber{#1}}
\newcommand\school[1]{\def\ECUST@value@school{#1}}
\newcommand\degree[1]{\def\ECUST@value@degree{#1}}
\renewcommand\title[2][\ECUST@value@title]{%
  \def\ECUST@value@title{#2}
  \def\ECUST@value@titlemark{\MakeUppercase{#1}}}

\newcommand\vtitle[1]{\def\ECUST@value@vtitle{#1}}
\renewcommand\author[1]{\def\ECUST@value@author{#1}}
\newcommand\advisor[1]{\def\ECUST@value@advisor{#1}}
\newcommand\advisorinstitute[1]{\def\ECUST@value@advisorinstitute{#1}}
\newcommand\major[1]{\def\ECUST@value@major{#1}}
\newcommand\submitdate[1]{\def\ECUST@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\ECUST@value@defenddate{#1}}
\newcommand\institute[1]{\def\ECUST@value@institute{#1}}
\newcommand\chairman[1]{\def\ECUST@value@chairman{#1}}


%% 第一页和第二页
%_ “绘制”ECUST中文标题页
\renewcommand\maketitle[1]{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{60mm}
    {\heiti\zihao{-2} \ECUST@value@title}
    \vskip 40mm
    {\heiti \zihao{-2} \ECUST@value@author}
     \vskip 4mm
    {\songti \zihao{4} \ECUST@value@defenddate}
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
 }

\newcommand\makeInfo[1]%
 {
  \newpage
  \cleardoublepage
  \thispagestyle{empty}

%udc ltz
{
  {\heiti \zihao{5} \noindent \ECUST@label@classification} \ECUST@value@classification \\
  {\heiti \zihao{5} \ECUST@label@UDC}  \ECUST@value@UDC
}

   \begin{center}

    \vskip \stretch{1}
       {\heiti\zihao{-2} \ECUST@value@title}
    \vskip \stretch{1}

    {\fangsong\zihao{4}}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}

    {\heiti\zihao{-3}
     \begin{tabular}{l p{3mm} c}
      \ECUST@label@author & &\ECUSTunderline[180pt]{\ECUST@value@author}
    \\
      \ECUST@label@institute & & \ECUSTunderline[180pt]{\ECUST@value@institute}
    \\
      \ECUST@label@advisor & &  \ECUSTunderline[180pt]{\ECUST@value@advisor}
    \\
      \ECUST@label@chairman & &   \ECUSTunderline[180pt]{\ECUST@value@chairman}
    \\
      \ECUST@label@degree & &    \ECUSTunderline[180pt]{\ECUST@value@degree}
    \\
      \ECUST@label@major & &    \ECUSTunderline[180pt]{\ECUST@value@major}
    \\
      \ECUST@label@school & &   \ECUSTunderline[180pt]{\ECUST@value@school}
    \\
      \ECUST@label@defenddate & &  \ECUSTunderline[180pt]{\ECUST@value@defenddate}
    \end{tabular}}

  \end{center}

  \vskip \stretch{0.5}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}


% English Title Page
% 英文标题页可用命令
\newcommand\englishtitle[1]{\def\ECUST@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\ECUST@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\ECUST@value@englishadvisor{#1}}
\newcommand\englishschool[1]{\def\ECUST@value@englishschool{#1}}
\newcommand\englishinstitute[1]{\def\ECUST@value@englishinstitute{#1}}
\newcommand\englishdate[1]{\def\ECUST@value@englishdate{#1}}
\newcommand\englishdegree[1]{\def\ECUST@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\ECUST@value@englishmajor{#1}}
\newcommand\englishchairman[1]{\def\ECUST@value@englishchairman{#1}}

% "绘制"英文标题页
\newcommand\makeEnglishInfo[1]{%
  \cleardoublepage
  \thispagestyle{empty}

   \begin{center}


   \vspace*{10em}

   {\zihao{-2}\textbf{\ECUST@value@englishtitle}}

   \vskip \stretch{1}

   {\zihao{-3}
     \begin{tabular}{ll}
      \ECUST@label@englishauthor & \ECUSTunderline[200pt]{\ECUST@value@englishauthor}
    \\
      \ECUST@label@englishinstitute &  \ECUSTunderline[200pt]{\ECUST@value@englishinstitute}
    \\
      \ECUST@label@englishadvisor &  \ECUSTunderline[200pt]{\ECUST@value@englishadvisor}
    \\
      \ECUST@label@englishchairman &   \ECUSTunderline[200pt]{\ECUST@value@englishchairman}
    \\
      \ECUST@label@englishdegree &    \ECUSTunderline[200pt]{\ECUST@value@englishdegree}
    \\
      \ECUST@label@englishmajor &     \ECUSTunderline[200pt]{\ECUST@value@englishmajor}
    \\
      \ECUST@label@englishschool &     \ECUSTunderline[200pt]{\ECUST@value@englishschool}
    \\
      \ECUST@label@englishdate &   \ECUSTunderline[200pt]{\ECUST@value@englishdate}
    \end{tabular}}

  \end{center}

  \vskip \stretch{0.5}
  \clearpage
  \if@twoside
  \thispagestyle{empty}
   \cleardoublepage
  \fi
}

%绘制树立排放的论文题目和学校名称

\newcommand\makeVerticalTitle{
   \cleardoublepage
   \thispagestyle{empty}
   \vskip 5cm
   \begin{center}
    \setstretch{1.1}
    \begin{minipage}{1em}
        {\heiti\zihao{3}\ECUST@value@vtitle}
        \vskip 2cm
        {\heiti\zihao{3}\ECUST@value@school}
    \end{minipage}
   \end{center}
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \cleardoublepage
    \fi

}

% 原创性声明
\newcommand\makeDeclareOriginal{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
  {\bf\zihao{3} \ECUST@label@original}
  \end{center}
  \vskip 10pt
  {\zihao{4}\ECUST@label@originalcontent}
  \vskip 10pt
  \hspace{8em}{\zihao{4}\ECUST@label@authorsign} \ECUSTunderline[6em]{} \hspace{2em} {\zihao{4}\ECUST@label@originalDate} \ECUSTunderline[6em]{}

  \vskip 30mm

  \begin{center}
  {\bf\zihao{3} \ECUST@label@authorization}
  \end{center}
  \vskip 10pt
  {\zihao{4} \ECUST@label@authorizationcontent}
  \vskip 40pt

  \hspace{8em}{\zihao{4}\ECUST@label@authorsign} \ECUSTunderline[6em]{} \hspace{2em} {\zihao{4}\ECUST@label@Supervisorsign} \ECUSTunderline[6em]{}
  \vskip 15pt
  \hspace{8em}{\zihao{4}\ECUST@label@originalDate} \ECUSTunderline[6em]{} \hspace{2em} {\zihao{4}\ECUST@label@originalDate} \ECUSTunderline[6em]{}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi

}


%_ 页眉页脚
\pagestyle{fancy}
\fancyhf{}
\fancyhead[RE,LO]{\songti \zihao{5}{华东理工大学}}  % 奇数页左页眉
\fancyhead[RO,LE]{\songti \zihao{5} {\thepage}}      % 页脚


\fancypagestyle{plain}{% 设置开章页页眉页脚风格(只有页码作为页脚)
  \fancyhf{}%
  \fancyfoot[C]{\songti \zihao{5} \ECUST@label@headschoolname}
  \fancyfoot[C]{\songti \zihao{5} ~---~{\thepage}~---~} %%首页页脚格式
}


 %_ 中文摘要
 \newenvironment{abstract}
 {
  \cleardoublepage
  \chapter*{\vskip -5mm \zihao{4}\centerline{\ECUST@value@title}\vskip 2.5mm\songti\bfseries\zihao{4}\ECUST@label@abstract \vskip -4mm }
  % \addcontentsline{toc}{chapter}{摘要} % 同时加入书签和目录
  \bookmark[dest=\HyperLocalCurrentHref, level=1]{摘要} % 只加入书签，不加入目录
 }
 {}
%下一页从偶数页开始
 \newcommand\beginatevenpage{
 \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
 }
 %_ 中文关键词
 \newcommand\keywords[1]{%
   \vspace{2ex}\noindent{\songti\bfseries\zihao{-4} \ECUST@label@keywords} #1}

 %_ 英文摘要
 \newenvironment{englishabstract}
 {
  \clearpage
  \chapter*{\vskip -5mm \zihao{4}\bfseries\centerline{\ECUST@value@englishtitle}\vskip 2.5mm\bfseries\zihao{4}\ECUST@label@englishabstract \vskip -4mm }
  % \addcontentsline{toc}{chapter}{Abstract} % 同时加入书签和目录
  \bookmark[dest=\HyperLocalCurrentHref, level=1]{Abstract} % 只加入书签，不加入目录
 }
 {}

 % _英文摘要
 \newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf \ECUST@label@englishkeywords} #1}

%ltz add
%\RequirePackage{titletoc}
%\makeatletter
%\renewcommand\section{{\songti{1}}}
%\makeatother
%_ 目录
\renewcommand\tableofcontents{%
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse
  \fi
  \chapter*{\songti\bfseries\zihao{4}\contentsname}%目录里显示“目录”，否则\chapter*
  \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
  % \addcontentsline{toc}{chapter}{目录} % 同时加入书签和目录
  \bookmark[dest=\HyperLocalCurrentHref, level=1]{目录} % 只加入书签，不加入目录
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
}

\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}

%_ 参考文献环境 
% 参考文献内容（小4号宋体）
\renewenvironment{thebibliography}[1]
     {\zihao{-4}
      \chapter*{\bibname}
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \addcontentsline{toc}{chapter}{参考文献}
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \setlength{\parsep}{0mm} % 段落间距
            \setlength{\labelsep}{0.5em} % 标号和列表项之间的距离
            \setlength{\itemsep}{0.0pc} % 条目间距
            \setlength{\listparindent}{0in} % 段落缩进量
            \setlength{\itemindent}{0in} % 标签缩进量
            \setlength{\rightmargin}{0in} % 右边界
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}


\newenvironment{publications}[1]
     {\chapter{\ECUST@label@publications}%
      \@mkboth{\MakeUppercase\ECUST@label@publications}
              {\MakeUppercase\ECUST@label@publications}%
      \addcontentsline{toc}{chapter}{攻读博士期间的主要学术成果及参与的科研项目}
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \setlength{\parsep}{0mm}
            \setlength{\labelsep}{0.5em}
            \setlength{\itemsep}{0.0pc}
            \setlength{\listparindent}{0in}
            \setlength{\itemindent}{0in}
            \setlength{\rightmargin}{0in}
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}


\newenvironment{projects}[1]
     {\chapter{\ECUST@label@projects}%
      \@mkboth{\MakeUppercase\ECUST@label@projects}
              {\MakeUppercase\ECUST@label@projects}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `projects' environment}}%
      \endlist}

    \newenvironment{resume}
  {\chapter{\ECUST@label@resume}}
  {}

\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 2\ccwd}
   \item\relax}
   {\endlist}

\newenvironment{resumeli}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 4\ccwd
           \itemindent -2\ccwd
           \listparindent\itemindent}
   \item\relax}
   {\endlist}

\newenvironment{conclusion}
  {\chapter*{结论}
    \@mkboth{结论}{结论}%
    \addcontentsline{toc}{chapter}{结论}}
  {}

\renewenvironment{thanks}
  {\chapter*{\bfseries\songti\ECUST@label@thanks}
  \addcontentsline{toc}{chapter}{致谢} % 同时加入书签和目录
  % \bookmark[dest=\HyperLocalCurrentHref, level=1]{致谢} % 只加入书签，不加入目录
  }
  {}

  

\newenvironment{symbolnote}
  {\chapter{\ECUST@label@symbolnote}
  \fangsong}
  {}


\setcounter{secnumdepth}{4}  % 章节编号深度 (part 对应 -1)
\setcounter{tocdepth}{2}     % 目录深度 (part 对应 -1)


\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\endinput
%%
%% End of file `ECUSTmaster-xetex.cls'.
