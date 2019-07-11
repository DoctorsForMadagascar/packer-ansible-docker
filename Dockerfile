FROM hashicorp/packer:1.2.5
RUN apk add --no-cache \
    ansible \ 
    python
    
