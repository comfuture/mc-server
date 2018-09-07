#!/bin/bash
aws autoscaling set-desired-capacity \
--auto-scaling-group-name mc-ondemand \
--desired-capacity 0 \
--honor-cooldown

