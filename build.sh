#!/usr/bin/env bash

docker build -t junweiliu-resume .
docker run --rm -i -v "$PWD":/data junweiliu-resume pdflatex junweiliu-resume.tex
