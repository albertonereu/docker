FROM ubuntu
RUN apt-get update && apt-get install nginx -y
RUN apt-get install apache2 -y
COPY arquivo_teste_poupex /tmp/arquivo_teste
CMD bash
WORKDIR /etc/nginx
CMD ["nginx"]
EXPOSE 80
ADD default /etc/nginx/sites-available/default
ADD index.html /var/www/
