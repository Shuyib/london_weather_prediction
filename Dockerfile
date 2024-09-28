# Builder stage
FROM python:3.12-slim AS builder

LABEL maintainer="Shuyib" \
      description="Dockerfile for London Weather Project Jupyter Notebook"

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
        graphviz \
        unzip && \
    rm -rf /var/lib/apt/lists/* && \
    && python3 -m venv /app/ml-env \
    && . /app/ml-env/bin/activate \
    && pip --no-cache-dir install --upgrade pip \
    && pip --no-cache-dir install -r /app/requirements.txt

# Runtime stage
FROM python:3.12-slim AS runtime

ENV PYTHONUNBUFFERED=TRUE

COPY --from=builder /app /app

EXPOSE 9999

VOLUME /app

CMD ["sh", "-c", ". ml-env/bin/activate && jupyter notebook --ip='0.0.0.0' --port=9999 --no-browser --allow-root"]