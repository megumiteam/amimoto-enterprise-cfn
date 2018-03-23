InstanceType do
  Description "EC2 instance type"
  Type "String"
  Default "c4.large"
  AllowedValues "t2.large",
        "m3.medium",
				"m3.large",
				"m3.xlarge",
				"m3.2xlarge",
				"m4.large",
				"m4.xlarge",
				"m4.2xlarge",
				"m4.4xlarge",
				"m4.10xlarge",
				"m5.large",
				"m5.xlarge",
				"m5.2xlarge",
				"m5.4xlarge",
				"m5.12xlarge",
				"m5.24xlarge",
				"c3.large",
				"c3.xlarge",
				"c3.2xlarge",
				"c3.4xlarge",
				"c3.8xlarge",
				"c4.large",
				"c4.xlarge",
				"c4.2xlarge",
				"c4.4xlarge",
				"c4.8xlarge",
        "c5.large",
        "c5.xlarge",
        "c5.2xlarge",
        "c5.4xlarge",
        "c5.9xlarge",
        "c5.18xlarge",
				"g2.2xlarge",
				"hi1.4xlarge",
				"hs1.8xlarge",
				"i2.xlarge",
				"i2.2xlarge",
				"i2.4xlarge",
				"i2.8xlarge",
				"r3.large",
				"r3.xlarge",
				"r3.2xlarge",
				"r3.4xlarge",
				"r3.8xlarge"
  ConstraintDescription "Must be a valid EC2 instance type."
end
