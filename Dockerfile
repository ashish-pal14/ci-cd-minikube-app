# Step 1: Use a lightweight Python base image
FROM python:3.9-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy dependency list and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy all source code into the container
COPY . .

# Step 5: Command to run the app
CMD ["python", "app.py"]

