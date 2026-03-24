FROM python:3.10-slim-buster

WORKDIR /app

# Install uv
RUN pip install --no-cache-dir uv

# Copy only requirements first 
COPY requirements.txt .

# Install dependencies using uv
RUN uv pip install --system -r requirements.txt

# Now copy full project
COPY . .

CMD ["python", "app.py"]