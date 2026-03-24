FROM python:3.10-slim-buster

WORKDIR /app

RUN pip install --no-cache-dir uv

COPY requirements.txt .

# Install dependencies WITHOUT project
RUN uv pip install --system -r requirements.txt --no-deps

# Now copy full project
COPY . .

# Install your project
RUN uv pip install --system .

CMD ["python", "app.py"]