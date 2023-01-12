FROM registry.access.redhat.com/ubi8/ubi as builder

RUN yum install -y git && \
    git clone https://github.com/themefisher/constra.git

FROM registry.access.redhat.com/ubi8/httpd-24
COPY --from=builder constra/theme/ /var/www/html/
