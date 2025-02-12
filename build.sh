#!/usr/bin/env bash

docker build -t junweiliu-resume .
docker run --rm -i -v "$PWD":/data junweiliu-resume pdflatex junweiliu-resume.tex
docker run --rm -i -v "$PWD":/data junweiliu-resume pdftoppm -png -rx 300 -ry 300 junweiliu-resume.pdf junweiliu-resume
