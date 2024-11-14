variable "image_id" {
  type    = string
  default = "ami-09c813fb71547fc4f" #optional
  description = "RHEL-9 AMI ID" #optional

}

variable "instance_type" {
    type = string
    default = "t2.micro"
    
  
}

variable "instance_name" {
    default = "db"
  
}


# variable "tags" {
#     default = {
#         project = "Expense"
#         Enviroment = "Dev"
#         Module = "DB"
#         Name = "DB"
#     }
  
# }