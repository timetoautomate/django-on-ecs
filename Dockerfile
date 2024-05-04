FROM python:3.11-slim

WORKDIR /app

RUN apt update && apt install nginx -y

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

COPY ./django-example/ ./

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app/django_example

COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

EXPOSE 80

CMD ["./entrypoint.sh"]