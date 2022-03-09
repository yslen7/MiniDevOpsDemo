#!/bin/bash

# --- Variables ---
Bucket="s3-demo-yslen"
Tag="demo-yslen"
ClusterName="demo-yslen-ecs"
DNSName="demo.yslen.com"
GitBranch="master"
SecurityGroupName="demo-yslen-sg"
LoadBalancerName="demo-yslen-lb"

# --- Deploy ---
aws cloudformation deploy \
--stack-name ${Tag}-env \
--template-file env.yml \
--capabilities CAPABILITY_NAMED_IAM \
--s3-bucket ${Bucket} \
--parameter-overrides Tag=${Tag} \
ClusterName=${ClusterName} \
DNSName=${DNSName} \
GitBranch=${GitBranch} \
SecurityGroupName=${SecurityGroupName} \
LoadBalancerName=${LoadBalancerName}