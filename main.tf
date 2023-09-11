provider "ibm" {
  generation         = 2
  region             = "au-syd"
}

data "ibm_iam_access_group" "accgroup" {
}

output "accgroups" {
  value = data.ibm_iam_access_group.accgroup.groups[*].name
}

#This is a test comment