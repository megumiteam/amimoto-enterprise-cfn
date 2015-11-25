_include 'include/rds/rds_subnet.rb'
_include 'include/rds/rds_subnet_group.rb'

RDS do
  Type "AWS::RDS::DBInstance"
  Properties do
    AllocatedStorage "20"
    AllowMajorVersionUpgrade true
    AutoMinorVersionUpgrade true
    AvailabilityZone do
      Fn__FindInMap [
        "AZs",
        _{ Ref "AWS::Region"},
        "PRI"
      ]
    end
    BackupRetentionPeriod 1
    DBInstanceClass "db.t2.small"
    DBName "wordpress"
    DBSubnetGroupName do
      Ref "DBSubnetGroup"
    end
    Engine "MariaDB"
    MasterUsername "amimoto"
    MasterUserPassword "kdr61o9tc9"
    MultiAZ false
    Port 3306
    PreferredBackupWindow "00:00-00:30"
    PreferredMaintenanceWindow "sun:16:00-sun:17:30"
    Tags [
      _{
        Key "Application"
        Value do
          Ref "AWS::StackName"
        end
      }
    ]
    VPCSecurityGroups [
      _{
        Ref "SecurityGroup"
      }
    ]
  end
end

#"DBSnapshotIdentifier" : String,
#"Iops" : Number,
