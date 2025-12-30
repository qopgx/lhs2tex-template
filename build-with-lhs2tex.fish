#!/usr/bin/env fish
# build-with-lhs2tex.fish

if set -q LHS2TEX_SKIP_DOCS
    echo "LHS2TEX_SKIP_DOCS is set; skipping lhs2TeX documentation build."
else
    set -l lhs_files src/*.lhs

    if test (count $lhs_files) -gt 0
        set -l outdir docs/_build
        mkdir -p $outdir

        echo $base

        for f in $lhs_files
            if test -f $f
                set -l base (basename $f .lhs)
                set -l tex "$outdir/$base.tex"

                echo "==> lhs2TeX: $f -> $tex"
                lhs2TeX -o $tex $f

                echo "==> latexmk (XeLaTeX): $base.pdf (outdir: $outdir)"
                latexmk -xelatex -interaction=nonstopmode -outdir=$outdir $tex
            end
        end
    end
end

echo "==> cabal build $argv"
cabal build $argv