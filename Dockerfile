FROM php:5.6-apache
RUN apt-get update && \
  apt-get install -y exim4 &&\
  echo 'sendmail_path = "/usr/sbin/exim4 -t"' >> /usr/local/etc/php/conf.d/mail.ini && \
  echo 'SMTP = localhost' >> /usr/local/etc/php/conf.d/mail.ini && \
  echo 'smtp_port = 25' >> /usr/local/etc/php/conf.d/mail.ini 
COPY ./exim4.conf /etc/exim4/exim4.conf
RUN chmod 644 /etc/exim4/exim4.conf