#!/bin/bash
INSTANCE_ID=`curl http://169.254.169.254/latest/meta-data/instance-id --silent`
VOLUME_ID='vol-0c5e481d11d6550ea'
aws ec2 attach-volume --volume-id $VOLUME_ID --instance-id $INSTANCE_ID --device /dev/sdf
