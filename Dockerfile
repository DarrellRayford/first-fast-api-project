FROM python:3.7

WORKDIR /drayford/fastapiproject/api

ADD . /drayford/fastapiproject/api

CMD ["python", "hello.py"]
