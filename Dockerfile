FROM python:3.11-alpine

WORKDIR /app

COPY django-example/ ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000
