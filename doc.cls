\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{letter}[Letter]
\LoadClass[letterpaper, 12pt, twoside]{article}

% LIBRARIES
	\RequirePackage[
		inner=1.15in,
		outer=1in,
		top=1in,
		bottom=1in
	]{geometry}
	\RequirePackage[utf8]{inputenc}
	\RequirePackage{graphicx}
	\RequirePackage[labelfont=bf, width=.8\textwidth]{caption}
	\RequirePackage{float}
	\RequirePackage{amsmath, amsfonts, amssymb, esint, amsthm, dsfont}
	\RequirePackage{titlesec}
	\RequirePackage[usenames,dvipsnames]{color}
	\RequirePackage{hyperref}
	\RequirePackage{pgf,tikz,pgfplots, tikz-3dplot}
		\usetikzlibrary{arrows}
		\pgfplotsset{compat=1.15}
	\RequirePackage{mathrsfs}
	\RequirePackage{ifthen}
	\RequirePackage{enumitem}
	\RequirePackage{multicol}
	\RequirePackage{subcaption}
	\RequirePackage{fancyhdr}
	\RequirePackage[sorting=none]{biblatex}
	\RequirePackage[bottom, symbol]{footmisc}
	\RequirePackage{etoolbox}
	\RequirePackage{longtable}
	\RequirePackage{array,ragged2e}
	\RequirePackage{placeins}
	\RequirePackage{makecell}


% COLORS
	\definecolor{red}{rgb}{1,0,0}
	\definecolor{green}{rgb}{0,1,0}
	\definecolor{blue}{rgb}{0,0,1}
	\definecolor{link}{HTML}{2a576f}

	\hypersetup {
		colorlinks=true,
		linkcolor=black,
		filecolor=link,      
		urlcolor=link,
		citecolor=link,
	}

	\newcommand{\red}[1]{\textcolor{red}{#1}}
	\newcommand{\green}[1]{\textcolor{green}{#1}}
	\newcommand{\blue}[1]{\textcolor{blue}{#1}}
	\newcommand{\gray}[1]{\textcolor{gray}{#1}}


% HEADERS & FOOTERS
	\fancypagestyle{default} {
		\fancyhead{} % clear all header fields
		\renewcommand{\headrule}{\hrulefill}

		\fancyfoot{} % clear all footer fields
		\renewcommand{\footrule}{\hrulefill}
		\fancyfoot[OR]{\textbf{\thepage}}
		\fancyfoot[EL]{\textbf{\thepage}}
	}
	\pagestyle{default}

% SECTIONS
	\titleformat
		{\section} % command
		{\bf\Large} % shape
		{\thesection. } % label
		{0cm} % separation
		{} % before code
		[] % after code
  
  \titleformat
		{\subsection} % command
		{\bf\large} % shape
		{\thesubsection. } % label
		{0cm} % separation
		{} % before code
		[] % after code

% NEW COMMANDS & ENVIRONMENTS
  \newcommand{\header}[2]{
    \begin{center}
      {\Large\bf #1}

      \large

      #2
    \end{center}
  }

	\newenvironment{items}[1][(\alph*)] {
		\begin{enumerate}[label=#1]
	} {
		\end{enumerate}
	}

  \newcommand{\then}{
    \quad \Rightarrow \quad
  }

	\newenvironment{draw}[1][{}]{
		\begin{figure}[H]
			\centering
			\begin{tikzpicture}[#1]
	}{
			\end{tikzpicture}
			\caption{}
		\end{figure}
	}

	\newenvironment{plot}[1][{}]{
		\begin{figure}[H]
			\centering
			\begin{tikzpicture}
				\begin{axis}
					[
						axis lines = middle,
						x label style = {at={(current axis.right of origin)}, anchor = west},
						y label style = {at={(current axis.above origin)}, anchor = south},
						xtick = \empty,
						xtick style={draw=none},
						xticklabels=\empty,
						ytick = \empty,
						ytick style={draw=none},
						yticklabels=\empty
						samples=200,
						clip = false,
						#1
					]
	}{
				\end{axis}
			\end{tikzpicture}
			\caption{}
		\end{figure}
	}

	\renewcommand{\deg} {
		^{\circ}
	}

	% Bra notation
	\newcommand{\bra}[1] {
		\langle #1 |
	}

	% Ket notation
	\newcommand{\ket}[1] {
		| #1 \rangle
	}

	% Bra-ket notation
	\newcommand{\braket}[2] {
		\langle #1 | #2 \rangle
	}

	% ket-bra
	\newcommand{\ketbra}[2] {
		\ket{#1}\bra{#2}
	}

	% Bra-ket with operator
	\newcommand{\braAket}[3] {
		\langle #1 | #2 | #3 \rangle
	}

	% Complex number
	\renewcommand{\c}[1]{
		#1^*
	}

	% derivative
	\renewcommand{\d}[2] {
		\frac{d #1}{d #2}
	}

	% second derivative
	\newcommand{\dd}[2] {
		\frac{d^2 #1}{d #2^2}
	}

	% partial derivative
	\newcommand{\pd}[2] {
		\frac{\partial #1}{\partial #2}
	}

	% second partial derivative
	\newcommand{\pdd}[2] {
		\frac{\partial^2 #1}{\partial #2^2}
	}
	