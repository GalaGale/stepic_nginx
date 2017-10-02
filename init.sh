#!/bin/bash
 
sudo mv /home/box/web/web/* /home/box/web

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

sudo gunicorn -b 0.0.0.0:8080 hello:app
#sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn/gunicorn restart

sudo /etc/inint.d/mysql start
