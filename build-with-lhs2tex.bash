#!/bin/bash
# build-with-lhs2tex.bash

if [ -n "$LHS2TEX_SKIP_DOCS" ]; then
    echo "LHS2TEX_SKIP_DOCS is set; skipping lhs2TeX documentation build."
else
    lhs_files=(src/*.lhs)

    if [ -e "${lhs_files[0]}" ]; then
        outdir="docs/_build"
        mkdir -p "$outdir"

        for f in "${lhs_files[@]}"; do
            if [ -f "$f" ]; then
                # 4. Use $() for command substitution instead of ()
                base=$(basename "$f" .lhs)
                tex="$outdir/$base.tex"

                echo "==> lhs2TeX: $f -> $tex"
                lhs2TeX -o "$tex" "$f"

                echo "==> latexmk (XeLaTeX): $base.pdf (outdir: $outdir)"
                latexmk -xelatex -interaction=nonstopmode -outdir="$outdir" "$tex"
            fi
        done
    fi
fi

echo "==> cabal build $@"
cabal build "$@"