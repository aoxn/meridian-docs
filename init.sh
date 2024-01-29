#!/bin/bash

git clone https://github.com/aoxn/meridian-docs.git

cd meridian-docs

python3 -m venv venv

source  venv/bin/activate

pip install mkdocs-material


mkdocs new .

mkdocs serve



