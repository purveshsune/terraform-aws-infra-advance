#dev env
module "dev_infra" {
    source = "./infra"
    env = "dev"
    aws_instance_count = 1
    aws_instance_type = "t2.micro"
    ami = "ami-03fd334507439f4d1"
}
#stg_infra
module "stg_infra" {
    source = "./infra"
    env = "stg"
    aws_instance_count = 2
    aws_instance_type = "t2.micro"
    ami = "ami-03fd334507439f4d1"
}
#qa_infra
module "qa_infra" {
    source = "./infra"
    env = "qa"
    aws_instance_count = 2
    aws_instance_type = "t2.micro"
    ami = "ami-03fd334507439f4d1"
}
#prd_infra
module "prd_infra" {
    source = "./infra"
    env = "prd"
    aws_instance_count = 4
    aws_instance_type = "t2.micro"
    ami = "ami-03fd334507439f4d1"
}

output "dev_infra_ec2_ip" {
  value = module.dev_infra.ec2_public_ip
}
output "stg_infra_ec2_ip" {
  value = module.stg_infra.ec2_public_ip
}
output "qa_infra_ec2_ip" {
  value = module.qa_infra.ec2_public_ip
}
output "prd_infra_ec2_ip" {
  value = module.prd_infra.ec2_public_ip
}