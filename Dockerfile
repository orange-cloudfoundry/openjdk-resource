FROM concourse/busyboxplus:git

ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/*

