FROM hashicorp/packer:1.4.2
RUN apk add --no-cache --update \
    ansible>2.5 \ 
    openssh
    
