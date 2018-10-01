#!/bin/sh
# notifyByMail.sh

MAIL_FROM="RedisNotification"
MAIL_TO="hostname"
mail_subject="Redis Notification"
mail_body="Please check the REDIS Status"
echo "${mail_body}" | mail -s "${mail_subject}" "${MAIL_TO}"
