FROM alpine

RUN apk add git-crypt

ADD script.sh /bin/
RUN chmod +x /bin/script.sh
CMD ["/bin/script.sh"]
