FROM python:3.10.1

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --upgrade pip && pip install -t /todos/requirements.txt

EXPOSE 8080

COPY ./todos /code/app

CMD ["uvicorn", "app.api:app", "--host", "0.0.0.0", "--port", "80"]