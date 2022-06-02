FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev &&\
    apt-get install flask

# COPY ./requirements.txt /app/requirements.txt

ADD counter-service.py /

WORKDIR /

# RUN pip install -r requirements.txt

ENTRYPOINT [ "python3" ]

CMD [ "counter-service.py" ]