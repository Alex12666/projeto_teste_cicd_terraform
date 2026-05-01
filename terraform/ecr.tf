resource "aws_ecr_repository" "my_images" {
  name                 = "my_images"
  image_tag_mutability = "MUTABLE"

  
}