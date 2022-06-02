FROM ubuntu

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev &&\
    apt-get install flask

# COPY ./requirements.txt /app/requirements.txt

ADD counter-service.py /

WORKDIR /

# RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "counter-service.py" ]