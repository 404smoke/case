FROM python:latest
LABEL maintainer="404smoke@gmail.com"
ENV ADMIN="smoke"
RUN apt-get update && apt-get install python3-pip -y && pip install --upgrade pip && pip install pipenv
WORKDIR /usr/src/app/
COPY . /usr/src/app/
VOLUME www_data:/var/www
CMD ["python", "timer.py"]
