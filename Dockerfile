FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY ./requirements.txt /counter-service/requirements.txt

WORKDIR /counter-service

RUN pip install -r requirements.txt

COPY . /counter-service

ENTRYPOINT [ "python" ]

CMD [ "counter-service.py" ]