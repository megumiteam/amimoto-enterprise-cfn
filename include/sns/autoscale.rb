SNSAutoScale do
  Type "AWS::SNS::Topic"
  Properties do
    DisplayName do
        Fn__Join [
          "_",
          [
            _{
              Ref "AWS::StackName"
            },
            "AutoScale"
          ]
        ]
    end
    TopicName do
        Fn__Join [
          "_",
          [
            _{
              Ref "AWS::StackName"
            },
            "AutoScale"
          ]
        ]
    end
    Subscription [
      _{
        Endpoint do
          Ref "MailAddress"
        end
        Protocol "email"
      }
    ]
  end
end
