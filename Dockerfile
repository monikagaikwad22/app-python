FROM python:3.10

WORKDIR /app

# requirements आधी copy कर (best practice 🔥)
COPY requirements.txt .

# dependencies install
RUN pip install --no-cache-dir -r requirements.txt

# बाकी code copy कर
COPY . .

CMD ["python","app.py"]
