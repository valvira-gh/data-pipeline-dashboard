FROM python:3.11

WORKDIR /app

# Copy deps and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code
COPY src/ .

# Set Flask start command
CMD ["flask", "run", "--host=0.0.0.0", "--port=50000"]