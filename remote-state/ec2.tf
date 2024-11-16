resource "aws_instance" "db" {

    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0e9b9d879e1385874"]
    instance_type = "t2.micro"


    tags = {
      Name = "db"
    }
  
}