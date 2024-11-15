resource "aws_instance" "db"{
    ami = data.aws_ami.ami_id.id 
    vpc_security_group_ids = ["sg-0e9b9d879e1385874"]
    instance_type = "t2.micro"


    tags = {
      Name = "db"
    }
}