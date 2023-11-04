# configure aws provider to establich a secure connection between terraform and aws
provider "aws" {
region =
profile =

default_tag {
  tags = {
    "Automation" =
    "Project"    =
    "Environment"=
    }
  }
}
