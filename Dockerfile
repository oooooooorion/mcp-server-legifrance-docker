FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY pyproject.toml .
COPY src/ ./src/

# Install dependencies
RUN pip install --no-cache-dir -e .

# Set environment variables (these should be overridden at runtime)
ENV DASSIGNIES_API_KEY=""
ENV DASSIGNIES_API_URL=""

# Run the server
CMD ["python", "src/server.py"]