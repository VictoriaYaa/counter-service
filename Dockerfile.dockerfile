FROM python:3.8

WORKDIR /counter-service

RUN pip install -r requirements.txt

CMD ["python", "counter-service.py"]