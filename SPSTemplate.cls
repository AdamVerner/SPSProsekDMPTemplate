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
\LoadClass{article}
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
\usepackage{hyperref}
\usepackage{graphicx} % Required for including pictures
\usepackage{lastpage} % total number of pages


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


%----------------------------------------------------------------------------------------
% Translations
%----------------------------------------------------------------------------------------
\renewcommand{\abstractname}{Úvod}


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

\newcommand*\abstarct{%
   \@ifnextchar\bgroup
      {\gdef\@abstarct}%
      {\@abstarct}}

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

\renewcommand{\maketitle}{
	
	\thispagestyle{empty} % turn of numbering
	\newgeometry{left=3cm, right=3cm, top=-1cm, bottom=2.5cm,includehead,includefoot}
		

		\begin{minipage}{0.15\textwidth}
			\includegraphics[height=\textwidth]{Pictures/Praha_logo.eps}
		\end{minipage}
		\begin{minipage}{0.3\textwidth}
			\includegraphics[height=\textwidth]{Pictures/SPS-Prosek_logo.jpg}
		\end{minipage}
		\begin{adjustbox}{minipage=0.55\textwidth,left}
			\textbf{\textcolor{darkgray}{
			Střední průmyslová škola na Proseku\\
			90 00 Praha 9, Novoborská 2}}
		\end{adjustbox}

	{%
	\centering	
	
		\textbf{\large OBOR}\\[0.5cm]
		\textbf{\large	26-41-M/01 ELEKTROTECHNIKA\\
			(ŠVP: Průmyslová automatizace a inteligentní budovy)}\\[4.5cm]
		\textbf{\LARGE MATURITNÍ PROJEKT}\\[1.5cm]
		\textsc{TÉMA PRÁCE}\\[1.5cm]
		\textbf{\color{red} \huge \bfseries  TÉMA PROJEKTU (ČERVENÝ TEXT NAHRAĎTĚ)}

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
	\textcolor{red}{\large AUTOR (PŘÍJMENÍ Jméno)}
	\end{flushright}
	\end{minipage}
		
	\newpage

	\newgeometry{left=3cm, right=3cm, top=1.25cm, bottom=2.5cm,includehead,includefoot}
	}

\newcommand{\makeassignmentsheet}[1]{
	\textbf{\color{red} \LARGE MÍSTO TOHOTO LISTU VLOŽTE LIST SE ZADÁNÍM}

	\newpage
}

\newcommand{\makestatement}[1]{
	\section*{PROHLÁŠENÍ}

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

	\newpage
}

\newcommand{\makethanksgiving}[1]{
	\section*{PODĚKOVÁNÍ}
	\@podekovani

	\newpage
}


\newcommand{\makebeginning}[1]{
	\maketitle

	\makeassignmentsheet

	\makestatement

	\makethanksgiving

}







