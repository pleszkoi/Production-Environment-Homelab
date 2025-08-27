# Basic image
FROM python:3.12-slim

# Working directory
WORKDIR /app

# Copying and installing dependencies
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copying the app
COPY app/app.py .

# Opening port
EXPOSE 5000

# Start command
CMD [ "python", "app.py" ]
