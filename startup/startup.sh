#!bin/bash
# このファイルに初回起動時のプログラムを追記していく

cron && \
apache2ctl start && \
/usr/bin/perl /usr/share/webmin/miniserv.pl --nofork /etc/webmin/miniserv.conf

