Route do
  Type "AWS::EC2::Route"
  Properties do
    DestinationCidrBlock "0.0.0.0/0"
    GatewayId do
      Ref "InternetGateway"
    end
    RouteTableId do
      Ref "RouteTable"
    end
  end
end
