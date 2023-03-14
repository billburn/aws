# AWS Helpful Commands

## Check Instance Metadata and User Data API

```
curl http://169.254.169.254/latest/meta-data/
curl http://169.254.169.254/latest/user-data/
```

## Check Spot Prices (us-east-1)
```
aws ec2 describe-spot-price-history --instance-types t3.small --product-description "Linux/UNIX (Amazon VPC)" --start-time 2023-03-20T00:00:00 --end-time 2023-03-23T23:59:59
```