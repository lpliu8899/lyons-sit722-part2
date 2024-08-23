# Dockerfile for book_catalog microservice
#Specify Python version
FROM python:3.12
#Copy book catalog into current directory
ADD book_catalog $PWD
#Install all project dependencies
RUN pip install --no-cache-dir --upgrade -r $PWD/requirements.txt
#Command to run the FastAPI application using Uvicorn when the Docker container starts
CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]
