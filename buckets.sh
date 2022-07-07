#!/bin/bash
bucket="jess20221 cord45"
for b in $bucket
do
aws s3 rb s3://$b
done

