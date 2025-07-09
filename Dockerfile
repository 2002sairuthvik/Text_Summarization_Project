FROM python:3.11-slim-bullseye

RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app

RUN pip install --upgrade pip && \
	pip install --upgrade accelerate && \
	pip install -r requirements.txt && \
	pip install --force-reinstall transformers accelerate

CMD ["python3", "app.py"]