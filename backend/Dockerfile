FROM python:3.8.3-alpine

WORKDIR /app/backend

RUN apk update

COPY requirements.txt .

RUN apk --no-cache --update add build-base #similar a build-essential 

RUN pip install --upgrade pip

RUN apk add --virtual build-deps gcc python3-dev musl-dev && \
    apk add postgresql-dev && \
    apk add libffi-dev && \
    apk add graphviz-dev && \
    apk add jpeg-dev zlib-dev

RUN pip install -r requirements.txt

COPY . /app/backend

EXPOSE 8000

CMD ["python", "manage.py"]
