\documentclass{article}

% lhs2tex supports a number of code processing styles which
% affect the appearance of the generated codeblock.
%
% Refer to the lhs2tex docs @ https://hackage.haskell.org/package/lhs2tex-1.19/src/doc/Guide2.pdf
%
% Below allows any of the formatting styles.
% Alternatively, you may include polycode.fmt
%
% Directives such as \usepackage[a4paper, margin=3cm]{geometry}
% may be useful for writing readable documents, since I've personally
% found the default text width to be much too narrow.

%include lhs2TeX.fmt

\usepackage{amsmath}

\title{Your template .lhs file}
\author{YOUR-NAME-HERE}
\date{}

\begin{document}
\maketitle

\begin{code}
module Main where
main :: IO()
main = do
    putStrLn "Hello world!"
\end{code}

\end{document}
