resource "local_file" "pet" {
    filename="/workspaces/hab-iac-terraform/pet.txt"
    content="We love pets"
    file_permission = "0700"
}