resource "aws_instance" "db" {
    count = 3
    #count = length(var.instance_name)

    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t2.micro"


    tags = {
      Name = var.instance_name[count.index]
    }
  
}

#resource <resource-type> <resource-name>
resource "aws_security_group" "allow_ssh" {
    name = "allow-ssh"
    description = "allowing SSH access"

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        
    }

    egress {
        from_port        = 0 # form 0 to 0 means, opening  all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
     }


    tags = {
        Name = "allow_ssh"
        createdBy = "hemanth"
    }

}