#!/bin/bash
state=$(aws ec2 describe-instances --instance-id i-0dc59a9ad47dcc6fc | grep running | cut -c34-40)
if [ $state = $1 ]
then 
echo "stopping the instance"
aws ec2 stop-instances --instance-ids i-0dc59a9ad47dcc6fc 
else 
echo "already stopped"
fi

