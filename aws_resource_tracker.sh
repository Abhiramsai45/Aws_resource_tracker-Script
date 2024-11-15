#!/bin/bash

#####################################################
# Author : Abhiram
# Date : 11 Nov 2024
#
# Version : V1
#
# This script will report the Aws resource usage
#####################################################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "Print list of S3 buckets"
aws s3 ls

# list EC2 instances
echo "Print list of EC2 instances"
#aws ec2 describe-instances
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print list of lambda functions"
aws lambda list-functions

# list IAM Users
echo "Print list of IAM Users"
aws iam list-users

