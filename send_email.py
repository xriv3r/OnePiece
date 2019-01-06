#!/usr/bin/python
# -*- coding: UTF-8 -*-

import smtplib
from email.mime.text import MIMEText
from email.header import Header


mail_host="SMTP_SERVER"
mail_user="USER_NAME"
mail_pass="USER_PASSWORD"


sender = "YOUR_EMAIL_ADDR"
receivers = ["RECEIVER_EMAIL_ADDR"]

message = MIMEText('Title', 'plain', 'utf-8')
message['From'] = Header("USER_NICK_NAME", 'utf-8')
message['To'] =  Header("RECEVER_NICK_NAME", 'utf-8')

subject = 'Python SMTP Test'
message['Subject'] = Header(subject, 'utf-8')


try:
    smtpObj = smtplib.SMTP()
    smtpObj.connect(mail_host, 25)
    smtpObj.login(mail_user,mail_pass)
    smtpObj.sendmail(sender, receivers, message.as_string())
except smtplib.SMTPException:
    print("Error: 发送邮件失败")
