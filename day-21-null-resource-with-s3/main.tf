provider "aws" {
  
}

resource "null_resource" "pre_destroy_cleanup" {
  triggers = {
    bucket = "ntrbirthady"
  }

  provisioner "local-exec" {
    command = "bash cleanup_bucket.sh ${self.triggers.bucket}"
  }
}
