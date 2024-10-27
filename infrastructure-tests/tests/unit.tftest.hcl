variables {
  instance_name= "HGInstance"
}
run "Test1_Resource_Name_Formar_Check" {
command = plan
assert {
	condition = startswith(aws_instance.create_instance.tags.Name, "IATF")
        error_message = "Instance Name $(var.instance_name) did not start with IATF"
}
assert {
	condition = length(aws_instance.create_instance.tags.Name) <= 25
        error_message = "Instance Name $(var.instance_name) is greater than 20 chars "
}

}

run "Test2_Resource_Name_Length_Check" {
command = plan
assert {
	condition = length(aws_instance.create_instance.tags.Name) <= 25
        error_message = "Instance Name $(var.instance_name) is greater than 20 chars "
}
}

run "Test3_Resource_Type_Check" {
command = plan

variables {
   resource_type="t2.micro"
}
assert {
	condition = aws_instance.create_instance.instance_type == var.resource_type
        error_message = "Instance Name $(var.instance_name) is greater than 20 chars "
}

test "Test4_Resource_Created_Check" {
  terraform {
    source = "../main.tf"
  }
  expect(aws_instance.create_instance).to exist
}

}
