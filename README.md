# Terraform AWS Modules ☁️

A collection of secure, reusable Terraform modules demonstrating **DRY infrastructure as code**.

### 🛠 Tech Stack
- Terraform
- AWS (S3, RDS, IAM)

### 💡 Key Highlights
- **DRY Code:** Built with adaptability in mind using variables and outputs.
- **Secure by Default:** Enforced S3/RDS encryption and strict IAM roles.
- **Team-Ready:** Designed to be easily consumed by development teams.

### 📁 Modules Included
1. **[S3 Bucket](./modules/s3)** - Standardized with AES256 encryption & blocked public access.
2. **[RDS Instance](./modules/rds)** - Secure database instance with subnet grouping.
3. **[IAM Role](./modules/iam_role)** - Strict roles with managed/inline policy attachments.

👉 **Check out [`examples/complete`](./examples/complete) to see it in action!**
