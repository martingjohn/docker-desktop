FROM martinjohn/x-template

USER root

RUN apt-get update \
 && apt-get install -y \
            --no-install-recommends \
            firefox  \
            libcanberra-gtk3-0 \
            vlc \
 && rm -rf /var/lib/apt/lists/*

USER $user

ENTRYPOINT ["firefox"]
