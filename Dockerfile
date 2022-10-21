# syntax=docker/dockerfile:1

FROM python:3.7

WORKDIR /model

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD ["flask", "--app", "model", "--debug", "run"]

#"python", "-m" ,