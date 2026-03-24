FROM python:3.10-slim-buster

WORKDIR /app

RUN pip install --no-cache-dir uv

COPY requirements.txt .

RUN uv pip install --system -r requirements.txt

COPY . .

CMD ["python", "app.py"]