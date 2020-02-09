FROM davtur/payara-micro-s2i
LABEL maintainer="Adam Bien, airhacks.com"

ENV BUILDER_VERSION 0.0.3

LABEL io.k8s.description="Payara 5 Micro S2I Image" \
      io.k8s.display-name="Payara 5 Micro S2I Builder" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,airhacks,payara,payara5, javaee"

COPY ./s2i/bin/ /usr/libexec/s2i

USER 1001

