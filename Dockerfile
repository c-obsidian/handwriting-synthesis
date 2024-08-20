# The version of TF seems only compatible with Python 3.6
FROM python:3.6

WORKDIR /usr/src/app

COPY . .

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["python", "demo.py"]