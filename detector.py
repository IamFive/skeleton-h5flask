# -*- coding: utf-8 -*-
#
# @author: Woo Cupid
# Created on 2013-5-14
# Copyright (c) 2011-2013 Woo cupid(iampurse#vip.qq.com)
#
import requests
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib
import commands

host = '10.1.16.30'
port = '8080'
admin_mail = 'iampurse@vip.qq.com'
cmd = 'cd /www/zht/zht01; sh start.sh;'

def send_email(to, subject):

    smtp_user = 'woocupid@163.com'
    smtp_server = 'smtp.163.com'
    smtp_port = 25
    smtp_use_tls = False
    smtp_pass = 'asdqwe123'

    by = smtp_user

    mime_message = MIMEMultipart('alternative')
    mime_message['Subject'] = subject
    mime_message['From'] = by
    mime_message['To'] = to

    part1 = MIMEText('as title', 'html')
    mime_message.attach(part1)
    

    try:
        s = smtplib.SMTP(smtp_server, port=smtp_port, timeout=15)
        if smtp_use_tls:
            s.ehlo()
            s.starttls()

        # second ehlo because python smtp bug
        s.ehlo()
        s.login(by, smtp_pass)
        s.sendmail(by, [to], mime_message.as_string())
        s.quit()
    except smtplib.SMTPException:
        import traceback
        print traceback.format_exc()
        print 'Send mail failed'
        
        
def mark_fail():
    
    with open('.%s' % host, 'a+') as f:
        failed = f.readline()
        if failed == '':
            failed = 1
        else:
            failed = int(failed) + 1
    
    with open('.%s' % host, 'w+') as f:
        f.write(str(failed))
    
    return failed
        

times = 0
while times < 3:
    try:
        get = requests.get('http://%s:%s' % (host, port))
        if 200 == get.status_code:
            print 'Site runs ok.'
            times = 0
            break
    except:
        times = times + 1
        

if times >= 3:
    print 'try connect to site[3] failed, send alert mail now.'
    # send mail alert
    send_email('iampurse@vip.qq.com', '%s is down' % host)
    failed = mark_fail()
    if failed >= 3:
        print 'cant connect to site for 3 times. restart server now.'
        commands.getstatusoutput(cmd);
        with open('.%s' % host, 'w+') as f:
            f.write(0)

