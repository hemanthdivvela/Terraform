resource "aws_instance" "expense" {
    for_each = var.instance_name # each key and each value
    ami = data.aws_ami.ami_info.id 
    vpc_security_group_ids = ["sg-0e9b9d879e1385874"]
    instance_type = each.value


    tags = merge (
        var.common_tags,
    {
        Name = each.key 
        module = each.key

    }
    ) 
}