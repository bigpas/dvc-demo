#!/bin/bash

dvc run -o output/lm-output.csv \
    -d data/data.csv \
    Rscript scripts/lm-model.R

git add lm-output.csv.dvc output/.gitignore
