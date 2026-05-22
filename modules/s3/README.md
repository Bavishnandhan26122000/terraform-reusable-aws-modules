# AWS S3 Bucket Module

This module provisions an AWS S3 Bucket with best practices enforced:
- Server-Side Encryption (AES256) is enabled by default.
- Public Access is blocked by default.
- Versioning can be enabled or suspended (defaults to enabled).

## Usage

```hcl
module "secure_bucket" {
  source = "./modules/s3"

  bucket_name        = "my-secure-bucket"
  versioning_enabled = true
  tags = {
    Environment = "Production"
  }
}
```
