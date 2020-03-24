FROM python:3.7-slim-stretch

## As per nltk documentation
RUN pip install --user -U nltk numpy
# nltk has to download dependencies.
# Figured out what dependencies were missing by observing errors received on the command line
RUN python -m nltk.downloader punkt wordnet
COPY script.py .
