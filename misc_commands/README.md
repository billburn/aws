# Miscellaneous Commands

## Installing CloudWatch Logs Agent (Amazon Linux 2)
- Be sure to attach an IAM role with RW to CloudWatch Logs
- https://aws.amazon.com/blogs/mt/simplifying-apache-server-logs-with-amazon-cloudwatch-logs-insights/

```
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd 
sudo yum install amazon-cloudwatch-agent -y
sudo mkdir -p /usr/share/collectd/
sudo touch /usr/share/collectd/types.db
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard

# When Prompted Enter Log File Location
/var/log/httpd/access_log

sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json -s
```