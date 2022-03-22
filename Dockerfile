FROM williamyeh/ansible:alpine3
RUN apk add --update --no-cache bash && apk add vim  && rm -rf /var/cache/apk/*
RUN ssh-keygen -b 2048 -t rsa -f /root/.ssh/id_rsa -q -N ""
RUN pip install netaddr

WORKDIR /gcp
ARG BUILD
LABEL VERSION $BUILD
COPY . /gcp/
CMD ["bash"]




