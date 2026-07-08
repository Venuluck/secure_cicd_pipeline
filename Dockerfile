FROM python:3.12-slim

WORKDIR /app

RUN addgroup --system appgroup && adduser --system appuser --ingroup appgroup

COPY app/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .

USER appuser

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]