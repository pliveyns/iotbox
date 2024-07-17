#FROM quay.io/toolbx-images/fedora-toolbox:39
FROM registry.fedoraproject.org/fedora-toolbox:40

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="peter.liveyns@gmail.com"

COPY config /tmp/config/

COPY --from=docker.io/mikefarah/yq /usr/bin/yq /usr/bin/yq

RUN /tmp/config/dnf_packages.sh && \
    /tmp/config/pip_packages.sh && \
    /tmp/config/bin_packages.sh

RUN rm -Rf /tmp/config/

