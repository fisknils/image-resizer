FROM alpine:latest
RUN apk add imagemagick bash grep
COPY product_image_resizer /root/
WORKDIR /root/
RUN chmod +x *.sh
CMD ./start.sh