FROM python:3.14.3-alpine

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache ca-certificates tzdata && update-ca-certificates
RUN pip install --no-cache-dir --upgrade fastapi "uvicorn[standard]"

WORKDIR /app
COPY app .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
