FROM alpine:3.10.1

COPY --from=hashicorp/packer:1.4.2 /bin/packer /bin/packer

RUN apk add --no-cache --update \
    ca-certificates \
    ansible \ 
    openssh \
    python3
    
RUN pip3 install aws-cli --upgrade --user

ENTRYPOINT ["bin/packer"]
