FROM martinjohn/x-template

USER root

RUN apt-get update \
 && apt-get install -y \
            --no-install-recommends \
            rdesktop \
            libgssapi-krb5-2 \
 && rm -rf /var/lib/apt/lists/*

USER $user

ENTRYPOINT ["rdesktop"]
