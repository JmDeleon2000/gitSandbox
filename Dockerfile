FROM jupyter/minimal-notebook

RUN mkdir amend
COPY amend.ipynb amend/amend.ipynb

RUN mkdir tag
COPY tag.ipynb tag/tag.ipynb

RUN mkdir "checkout y restore"
COPY ["checkout y restore.ipynb", "checkout y restore/checkout y restore.ipynb"]

RUN mkdir rebase
COPY rebase.ipynb rebase/rebase.ipynb

RUN mkdir log
COPY log.ipynb log/log.ipynb

RUN mkdir repos/local -p && cd repos/local && git init --bare