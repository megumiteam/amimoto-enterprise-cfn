AWSTemplateFormatVersion "2010-09-09"
Description (<<-EOS).undent
  WordPress powered by JINKEI (Simple Stack HHVM) Version1.0.1
  This is Powerful & Scalable AMIMOTO Stack made by CloudFormation.
  Added RDS, Database change more scalable.
  Use service is VPC,EC2,EIP,CloudFront,S3,RDS(MariaDB).
EOS

Mappings do
  _include "include/mapping/ami_hhvm.rb"
end


Parameters do
  _include "001-base-param.rb"
  _include "params/ec2_instance_hhvm.rb"
  _include "params/rds_settings.rb"
end
_include "001-rds-resource.rb"
_include "001-base-output.rb"
