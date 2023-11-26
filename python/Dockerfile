FROM python:3.9-alpine

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]