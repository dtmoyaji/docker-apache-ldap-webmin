#!bin/bash
# ���̃t�@�C���ɏ���N�����̃v���O������ǋL���Ă���

cron && \
apache2ctl start && \
/usr/bin/perl /usr/share/webmin/miniserv.pl --nofork /etc/webmin/miniserv.conf

