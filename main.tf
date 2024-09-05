resource "local_file" "my_pet" {
  filename = "pets.txt"
  content = "My cat Name is ${random_pet.petname.id}"
  
}
resource "random_pet" "petname" {
    prefix = "Mr"
    separator = "."
    length = "1"
  
}
output "petname" {
  value = random_pet.petname.id
}
