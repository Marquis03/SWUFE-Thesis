\ProvidesClass{thesisSWUFE}
\LoadClass[fontset=none, zihao=-4]{ctexart}
\pagestyle{plain}

\RequirePackage[
    a4paper,
    left=3cm,
    right=3cm,
    top=3cm,
    bottom=3cm,
    nohead
]{geometry}  % 纸张与页边距格式
\RequirePackage[dvipsnames]{xcolor}  % 颜色支持
\RequirePackage{pdfpages}  % 插入pdf支持
\RequirePackage{hyperref}  % 超链接
\hypersetup{
    hidelinks,
    pdftitle={西南财经大学本科毕业论文模板},
    pdfauthor={小嗷犬},
    % pdfsubject={主题},
    % pdfkeywords={关键词}
}

\urlstyle{same}

\RequirePackage{fontspec}  % 字体支持
\setmainfont{Times New Roman}  % 英文mainfont Times New Roman
\setCJKmainfont{SIMSUN}[
    Path = ./fonts/,
    Extension = .TTC,
    AutoFakeBold,
    AutoFakeSlant,
]  % 中文mainfont 宋体

\setCJKmonofont{SIMSUN}[
    Path = ./fonts/,
    Extension = .TTC,
    AutoFakeBold,
    AutoFakeSlant,
]  % 中文monofont 宋体

\setCJKfamilyfont{songti}{SIMSUN}[
    Path = ./fonts/,
    Extension = .TTC,
    AutoFakeBold,
    AutoFakeSlant,
]  % 宋体
\newcommand{\songti}{\CJKfamily{songti}}

\setCJKfamilyfont{heiti}{SIMHEI}[
    Path = ./fonts/,
    Extension = .TTF,
    AutoFakeBold=true,
]  % 黑体
\newcommand{\heiti}{\CJKfamily{heiti}}

\setCJKfamilyfont{hwzhongsong}{STZHONGS}[
    Path = ./fonts/,
    Extension = .TTF,
    AutoFakeBold=true,
]  % 华文中宋
\newcommand{\hwzhongsong}{\CJKfamily{hwzhongsong}}


\setlength{\baselineskip}{12pt}  % 基础行距12pt
\linespread{1.5}  % 1.5倍行距
\RequirePackage{indentfirst}  % 首段缩进
\setlength{\parindent}{2em}  % 首行缩进2字符
\setlength{\parskip}{0pt}  % 段间距0

\RequirePackage{titlesec}  % 标题支持

% 一级标题 二号华文中宋加粗（居中，段前3行，段后2行，1.5倍行距）
\titleformat{\section}{\hwzhongsong\centering\bfseries\zihao{2}}{\thesection.}{0.5em}{}  
\titlespacing*{\section}{0pt}{3\baselineskip}{2\baselineskip}

% 二级标题 小三号黑体（首行无缩进，段前1行，段后1行，1.5倍行距）
\titleformat{\subsection}{\heiti\zihao{-3}}{\thesubsection}{0.5em}{}
\titlespacing*{\subsection}{0pt}{\baselineskip}{\baselineskip}

% 三级标题 小四号黑体（首行无缩进，段前1行，段后1行，1.5倍行距）
\titleformat{\subsubsection}{\heiti\zihao{-4}}{\thesubsubsection}{0.5em}{}
\titlespacing*{\subsubsection}{0pt}{\baselineskip}{\baselineskip}

% 中英文摘要标题 二号华文中宋或Time New Roman加粗
\RequirePackage{abstract}
\renewcommand{\abstractnamefont}{\hwzhongsong\bfseries\zihao{2}}

% 目录
\RequirePackage{titletoc}
\renewcommand{\contentsname}{目录}

% 注释、脚注内容 小五号宋体或Time New Roman
\renewcommand{\footnotesize}{\songti\zihao{-5}}

% 参考文献
\renewcommand{\refname}{参考文献}

% 页码 居中、小五号阿拉伯数字
\RequirePackage{fancyhdr}
\fancyfoot[C]{\zihao{-5}\thepage}

% 图表
\RequirePackage{graphicx}  % 图片支持
\RequirePackage{float}  % 浮动体位置
\RequirePackage{caption}  % 图表标题设置
\RequirePackage{subcaption}  % 子图支持

\DeclareCaptionFont{heiti}{\heiti}
\DeclareCaptionFont{wuhao}{\zihao{5}}

% 图标题 黑体加粗，居中，段前、段后各空0.5行
\captionsetup[figure]{
    font={heiti, bf, wuhao},
    labelfont={heiti, bf, wuhao},
    labelsep=space,
    justification=centering,
    skip=0.5\baselineskip,
}

% 表标题 黑体加粗，居中，段前、段后各空0.5行
\captionsetup[table]{
    font={heiti, bf, wuhao},
    labelfont={heiti, bf, wuhao},
    labelsep=space,
    justification=centering,
    skip=0.5\baselineskip,
}

% 图表按章节+次序编号
\renewcommand{\thefigure}{\thesection-\arabic{figure}}
\renewcommand{\thetable}{\thesection-\arabic{table}}

% 图表内容5号字
\BeforeBeginEnvironment{figure}{\zihao{5}}
\BeforeBeginEnvironment{table}{\zihao{5}}


% 表支持
\RequirePackage{array,longtable,booktabs,tabularx}

% 表列类型
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{R}{>{\raggedleft\arraybackslash}X}
\newcolumntype{L}{>{\raggedright\arraybackslash}X}

% 代码
\RequirePackage{listings}
\definecolor{codegreen}{rgb}{0, 0.6, 0}
\newfontfamily\yaheiconsola{YaHei Consolas Hybrid 1.12}[
    Path = ./fonts/,
    Extension = .ttf,
]
\lstset
{
    tabsize=4,
    captionpos=b,
    numbers=left,         
    numbersep=1em,               
    sensitive=true,
    showtabs=false,
    frame=shadowbox,
    breaklines=true,
    keepspaces=true,
    showspaces=false,
    showstringspaces=false,
    breakatwhitespace=false,
    basicstyle=\yaheiconsola,
    keywordstyle=\color{NavyBlue},
    commentstyle=\color{codegreen},
    numberstyle=\color{gray},
    stringstyle=\color{PineGreen!90!black},
    rulesepcolor=\color{red!20!green!20!blue!20}
}


% 算法
\RequirePackage[ruled,linesnumbered]{algorithm2e}
\renewcommand{\algorithmcfname}{算法}
\SetKwInOut{KwIn}{输入}
\SetKwInOut{KwOut}{输出}

% 列表
\RequirePackage{enumitem}
\setlist[itemize]{noitemsep, leftmargin=2em}

% ref格式
\RequirePackage{cleveref}
\crefname{figure}{图}{图}
\Crefname{figure}{图}{图}
\crefname{table}{表}{表}
\Crefname{table}{表}{表}
\crefname{equation}{公式}{公式}
\Crefname{equation}{公式}{公式}
\crefname{algorithm}{算法}{算法}
\Crefname{algorithm}{算法}{算法}