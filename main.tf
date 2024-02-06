resource "aws_s3_bucket" "bucket" {
    count=length(var.bucket_names)
    bucket = "bucket-${var.bucket_names[count.index]}"
    
}

locals{
    cloudeq=["jess","mallika","jj","aak"]
}

resource "null_resource" "cloudeq" {
  for_each = toset(local.cloudeq)
  triggers = {
    name=each.value
  }
}

