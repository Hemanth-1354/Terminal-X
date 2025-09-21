FROM python:3.9-slim
WORKDIR /app
RUN apt-get update && apt-get install -y bash && rm -rf /var/lib/apt/lists/*
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY pyxtermjs/ ./pyxtermjs/
COPY setup.py .
COPY README.md .
RUN pip install -e .
EXPOSE 5000
CMD ["pyxtermjs", "--host", "0.0.0.0", "--port", "5000"]
