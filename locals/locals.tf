locals {
    ami_id = "ami-09c813fb71547fc4f"
    sg_id = "sg-0e9b9d879e1385874" # replace with your SG ID
    #instance_type = "t3.medium"
    instance_type = var.instance_type == "db" ? "t2.medium" : "t3.medium"
    tags ={
        Name = "locals"
    }
}