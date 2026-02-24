# 1. Use Python 3.9 as the base OS
FROM python:3.9-slim

# 2. Setup a folder inside the container
WORKDIR /app

# 3. Copy requirement file and install libraries
COPY . /app

RUN pip install flask

EXPOSE 5000

# 5. Command to start the app
CMD ["python","app.py"]
