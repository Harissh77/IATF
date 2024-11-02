variables {
  instance_name= var.instance_name
}
run "Test1_Resource_Name_Format_Check" {
command = plan
assert {
	condition = startswith(aws_instance.server.tags.Name, "IATF")
        error_message = "Instance Name $(var.instance_name) did not start with IATF"
}
assert {
	condition = length(aws_instance.server.tags.Name) <= 25
        error_message = "Instance Name $(var.instance_name) is greater than 20 chars "
}

}

run "Test2_Resource_Name_Length_Check" {
command = plan
assert {
	condition = length(aws_instance.server.tags.Name) <= 25
        error_message = "Instance Name $(var.instance_name) is greater than 20 chars "
}
}

run "Test3_Resource_Type_Check" {
command = plan

variables {
   resource_type="t2.micro"
}
assert {
	condition = aws_instance.server.instance_type == var.resource_type
        error_message = "Instance Type Mismatch "
}


}
