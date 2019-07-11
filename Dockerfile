FROM hashicorp/packer:1.4.2
CMD sed -i 's/3.7/3.10/g' /etc/apk/repositories
RUN apk add --no-cache --update \
    ansible \ 
    openssh
    
