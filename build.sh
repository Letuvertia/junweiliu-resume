#!/usr/bin/env bash

docker build -t junweiliu-resume .
docker run --rm -i -v "$PWD":/data junweliu-resume pdflatex junweiliu-resume.tex
