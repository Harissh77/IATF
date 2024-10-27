variables {
  instance_name = "MyInstance"
}

run "test_resource_creation" {
  command = plan
}
