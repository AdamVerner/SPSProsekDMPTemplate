%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @Author: Adam Verner
% Class File
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SPSTemplate}[18/01/2019, v0.1]
\RequirePackage{ifthen}
\RequirePackage{calc}
\AtEndOfClass{\RequirePackage{microtype}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions*
\LoadClass[oneside,a4paper,12pt]{book}
\RequirePackage{ifpdf}      % Needed to pick between latex and pdflatex


% \graphicspath{{Pictures/}} % Specifies the directory where pictures are stored

%----------------------------------------------------------------------
% MARGINS	
%----------------------------------------------------------------------
% right should be 2, but that behaves weridly
\usepackage[left=3cm, right=3cm, top=1.25cm, bottom=2cm,includehead,includefoot]{geometry}


%----------------------------------------------------------------------------------------
% VARIOUS USEFUL PACKAGES
%----------------------------------------------------------------------------------------
\usepackage{mathptmx}
\usepackage{anyfontsize}
\usepackage{t1enc}
\usepackage{float}  % Allows putting an [H] in \begin{figure} to specify the exact location of the figure
\usepackage{wrapfig}
\usepackage{adjustbox}
\usepackage{xcolor}
\usepackage{fancyhdr} % header and footer
\usepackage{graphicx} % Required for including pictures
\usepackage{lastpage} % total number of pages
\usepackage[unicode]{hyperref}


%----------------------------------------------------------------------------------------
% LANGUAGE
%----------------------------------------------------------------------------------------
\usepackage[utf8]{inputenc}
\usepackage[czech]{babel}


%----------------------------------------------------------------------------------------
% FONTS
%----------------------------------------------------------------------------------------
\usepackage{helvet}
\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\baselinestretch}{1.5} % line spacing
\setlength\parindent{35pt}  % odrazeni odstavce


%----------------------------------------------------------------------------------------
% HEADER AND FOOTER
%----------------------------------------------------------------------------------------
\pagestyle{fancy}
\lhead{Střední průmyslová škola na Proseku}
\rhead{26-41-M/01 Elektrotechnika}
\renewcommand{\headrulewidth}{0.4pt}
\setlength{\headheight}{14.5pt}


%----------------------------------------------------------------------------------------
% Make hyperlinks look normal
%----------------------------------------------------------------------------------------
\hypersetup{
    colorlinks,
    linkcolor=blue,
    urlcolor=blue
}
\urlstyle{same}

%----------------------------------------------------------------------------------------
% Translations
%----------------------------------------------------------------------------------------
% \renewcommand{\abstractname}{Úvod}


%----------------------------------------------------------------------------------------
% inserting blank pages
%----------------------------------------------------------------------------------------
\usepackage{afterpage}

\newcommand\blankpage{%
    \null
    \thispagestyle{empty}%
    \addtocounter{page}{-1}%
    \newpage}


%----------------------------------------------------------------------------------------
% Variables
%----------------------------------------------------------------------------------------
\newcommand*\supervisor{%
   \@ifnextchar\bgroup
      {\gdef\@supervisor}%
      {\@supervisor}}

\newcommand*\vyuziti{%
   \@ifnextchar\bgroup
      {\gdef\@vyuziti}%
      {\@vyuziti}}

\newcommand*\abstrakt{%
   \@ifnextchar\bgroup
      {\gdef\@abstrakt}%
      {\@abstrakt}}

\newcommand*\klicovas{% keywords
   \@ifnextchar\bgroup
      {\gdef\@klicovas}%
      {\@klicovas}}

\newcommand*\titlecz{%
   \@ifnextchar\bgroup
      {\gdef\@titlecz}%
      {\@titlecz}}

\newcommand*\usage{%
   \@ifnextchar\bgroup
      {\gdef\@usage}%
      {\@usage}}

\newcommand*\abstrakten{%
   \@ifnextchar\bgroup
      {\gdef\@abstrakten}%
      {\@abstrakten}}

\newcommand*\keywords{%
   \@ifnextchar\bgroup
      {\gdef\@keywords}%
      {\@keywords}}

\newcommand*\podekovani{%
   \@ifnextchar\bgroup
      {\gdef\@podekovani}%
      {\@podekovani}}

\newcommand*\creator{%
   \@ifnextchar\bgroup
      {\gdef\@creator}%
      {\@creator}}

\newcommand*\temacz{%
   \@ifnextchar\bgroup
      {\gdef\@temacz}%
      {\@temacz}}

\newcommand*\tema{%
   \@ifnextchar\bgroup
      {\gdef\@tema}%
      {\@tema}}



\usepackage[nottoc,numbib]{tocbibind}  % include bibliography


%----------------------------------------------------------------------------------------
% maketitle command
%----------------------------------------------------------------------------------------
\usepackage{tabularx}
\renewcommand{\maketitle}{
	
	\thispagestyle{empty} % turn of numbering
	\newgeometry{left=3cm, right=3cm, top=-1cm, bottom=2.5cm,includehead,includefoot}

	\begin{tabular}{ m{0.15\textwidth} m{0.3\textwidth} m{0.55\textwidth} }
		\centering
		\includegraphics[width=0.15\textwidth,keepaspectratio]{Pictures/Praha_logo.eps}
		& 
		\includegraphics[width=0.3\textwidth,keepaspectratio]{Pictures/SPS-Prosek_logo.jpg} 
		& 
		\textbf{\textcolor{darkgray}{
			Střední průmyslová škola na Proseku \newline
			190 00 Praha 9, Novoborská 2}
		}
		\\
	\end{tabular}

	{%
	\centering	
	
		\textbf{\large OBOR}\\[0.5cm]
		\textbf{\large	26-41-M/01 ELEKTROTECHNIKA\\
			(ŠVP: Průmyslová automatizace a inteligentní budovy)}\\[4.5cm]
		\textbf{\LARGE MATURITNÍ PROJEKT}\\[1.5cm]
		\textsc{TÉMA PRÁCE}\\[1.5cm]
		\textbf{\huge \bfseries \@temacz}
	\par
	}

	\vspace*{\fill}

	\begin{minipage}{0.49\textwidth}
	\begin{flushleft} \large
	\the\year % insert current year
	\end{flushleft}
	\end{minipage}
	\begin{minipage}{0.49\textwidth}
	\begin{flushright}
	{\large \@creator }
	\end{flushright}
	\end{minipage}

	\afterpage{\blankpage}

	\newgeometry{left=3cm, right=3cm, top=1.25cm, bottom=2.5cm,includehead,includefoot}
	}

\newcommand{\makeassignmentsheet}{
	\textbf{\color{red} \LARGE MÍSTO TOHOTO LISTU VLOŽTE LIST SE ZADÁNÍM}
}

\newcommand{\makestatement}{
	\chapter*{PROHLÁŠENÍ}
	{Prohlašuji, že jsem svou maturitní práci vypracoval samostatně a použil jsem pouze podklady (literaturu, projekty, SW, atd.) uvedené v seznamu.
	}\\

	{Nemám závažný důvod proti užití tohoto školního díla ve smyslu § 60 zákona č. 121/2000 Sb., o právu autorském, o právech souvisejících s právem autorským a o změně některých zákonů (autorský zákon).}\\[0.5cm]

	\begin{minipage}{0.49\textwidth}
	\begin{flushleft}
	{V Praze dne \today}\\% insert current year
	\bigskip
	\bigskip
	\end{flushleft}
	\end{minipage}
	\begin{minipage}{0.49\textwidth}
	\begin{flushright}
	\centering
	{
	..........................................\\
	podpis
	}
	\end{flushright}
	\end{minipage}
}

\newcommand{\makethanksgiving}{
	\chapter*{PODĚKOVÁNÍ}
	\@podekovani
}

\newcommand{\makeanotation}{
	\chapter*{ANOTACE}
	\begin{table}[htb]
	\begin{tabular}{|p{0.3\linewidth}|p{0.65\linewidth}|} \hline
	Jméno autora          & \@creator \\ \hline
	Název maturitní práce & \@temacz \\ \hline
	Rozsah práce          & \pageref*{LastPage} s. \\ \hline
	Školní rok vyhotovení & \the\year \\ \hline
	Škola                 & Střední průmyslová škola na Proseku \\ \hline
	Vedoucí práce         & \@supervisor \\ \hline
	Využití práce         & \@vyuziti \\ \hline
	Abstrakt              & \@abstrakt \\ \hline
	Klíčová slova         & \@klicovas \\ \hline
	\end{tabular}
	\end{table}

	\chapter*{ANNOTATION}
	\begin{table}[htb]
	\begin{tabular}{|p{0.3\linewidth}|p{0.65\linewidth}|} \hline
	Author                   & \@creator\\ \hline
	Title of graduation work & \@tema \\ \hline
	Extend                   & \pageref*{LastPage} s. \\ \hline
	Academic year            & \the\year \\ \hline
	School                   & Střední průmyslová škola na Proseku \\ \hline
	Supervisor               & \@supervisor \\ \hline
	Application              & \@usage \\ \hline
	Abstract                 & \@abstrakten \\ \hline
	Key words                & \@keywords \\ \hline 
	\end{tabular}
	\end{table}
	\newpage
}


\newcommand{\makebeginning}{
	\maketitle
	\makeassignmentsheet
	\afterpage{\blankpage}
	\makestatement
	\setcounter{page}{1}
	\makethanksgiving
	\makeanotation

	% this is intentionally put here, so that the headings of chapters from abstract to
	% conclusion are changed, but not the rest of the document
	\titleformat{\chapter}[display]{\normalfont\bfseries}{}{10pt}{\Huge\thechapter.\quad}

}







