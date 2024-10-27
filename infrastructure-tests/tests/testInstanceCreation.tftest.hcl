test "instance created" {
  terraform {
    source = "../main.tf"
  }
  expect(aws_instance.example).to exist
}