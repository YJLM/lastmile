#!/bin/bash
# * * * * * /home/itesm-student/projects/lastmile/lib/cron/send_mails.sh
source /home/itesm-student/.bashrc
cd /home/itesm-student/projects/lastmile
rake queued_mail:deliver