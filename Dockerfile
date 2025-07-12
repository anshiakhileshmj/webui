FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN playwright install chromium --with-deps

EXPOSE 7788

CMD ["python", "webui.py", "--ip", "0.0.0.0", "--port", "7788"]
