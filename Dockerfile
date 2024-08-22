# Dockerfile for book_catalog microservice
FROM python:3.12
WORKDIR /app
COPY book_catalog/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY book_catalog /app
COPY scripts /app
EXPOSE 4040
CMD ["unicorn","main:app","--host","0.0.0.0","--port","4040"]


