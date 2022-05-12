FROM registry.cn-hangzhou.aliyuncs.com/bdu/ubuntu:v1
COPY ./app.sql /data/www/mysql/db/app.sql
RUN cd /data/www/xprofiler-console && yarn && cd /data/www/xtransit-manager && yarn && cd /data/www/xtransit-server && yarn
CMD '/etc/init.d/init_db.sh'