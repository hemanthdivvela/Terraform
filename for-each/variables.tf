variable instance_name {
  type        = map
  default     = {
    db = "t3.small"
    backend  = "t3.medium"
    frontend = "t3.micro"
    
    }
    
}

variable "common_tags" {
    type = map
    default = {
        project = "Expense"
        Terrafrom = "true"
    }
}

variable "domain_name"{
    default = "hemanth78s.online"
}

variable "zone_id" {
    default = "Z06442153P3P64BRXY581"
  
}