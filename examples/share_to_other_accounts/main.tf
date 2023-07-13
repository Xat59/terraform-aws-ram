module "ram" {
  source = "Xat59/ram/aws"

  resource_share_name = "share-dedicated-host-01"

  principals = ["XXXXXXXXXXXX", "YYYYYYYYYYYY"]
  resources  = ["arn:aws:ec2:eu-west-1:ZZZZZZZZZZZZ:dedicated-host/h-xxxxxxxxxxxxx"]
}
