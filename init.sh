#!/bin/bash
 
#sudo mv /home/box/web/web/* /home/box/web

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

#sudo gunicorn -b 0.0.0.0:8080 hello:app
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
#sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
#sudo /etc/init.d/gunicorn/gunicorn restart

#sudo /etc/init.d/mysql start
