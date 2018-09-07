#!/bin/bash
HOSTED_ZONE_ID=Z24FTFTR5NZPJP
DOMAIN=mc.changkyun.kim
IP_ADDR=`curl http://169.254.169.254/latest/meta-data/public-ipv4 --silent`
cat >/tmp/dns_record.json <<EOL
{
  "Comment": "minecraft server ${DOMAIN}",
  "Changes": [
    {
      "Action": "UPSERT",
      "ResourceRecordSet": {
        "Name": "${DOMAIN}",
        "Type": "A",
        "TTL": 0,
        "ResourceRecords": [
          {
            "Value": "${IP_ADDR}"
          }
        ]
      }
    }
  ]
}
EOL
aws route53 change-resource-record-sets \
  --hosted-zone-id $HOSTED_ZONE_ID \
  --change-batch file:///tmp/dns_record.json
rm -rf /tmp/dns_record.json

