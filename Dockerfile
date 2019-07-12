FROM alpine:3.10.1

COPY --from=hashicorp/packer:1.4.2 /bin/packer /bin/packer

RUN apk add --no-cache --update \
    ansible \ 
    openssh

ENTRYPOINT ["bin/packer"]