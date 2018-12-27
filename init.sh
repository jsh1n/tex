#!/bin/bash

read -p "Enter DIR_NAME:" DIR_NAME;
mkdir $DIR_NAME;
cd $DIR_NAME;
git init;
git clone git@github.com:tiuuuuPJ/tex.git;