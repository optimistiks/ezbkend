FROM python:3-onbuild
RUN mkdir /var/www && mkdir /var/www/ezdict && mkdir /var/www/ezdict/static && mkdir /var/www/ezdict/media
RUN pip install uwsgi
RUN apt-get install -y nginx
RUN ln -s /usr/src/app/ezdict-nginx.conf /etc/nginx/sites-enabled/
EXPOSE 8000
CMD ["/bin/bash"]
