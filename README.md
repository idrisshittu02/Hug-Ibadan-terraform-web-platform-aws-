Terraform Web Platform on AWS

 A Multi-Environment Web Application Infrastructure Application Infrastructure built with Terraform and deployed on AWS.
This project provisions a secure, scalable, and production-ready environment from scratch — so you can focus on building applications instead of managing infrastructure.

✨ Features

Modular Infrastructure – clean separation of networking, compute, database, and monitoring.

High Availability – Multi-AZ architecture with load balancing and auto-scaling.

Observability – CloudWatch dashboards, alarms, and metrics out-of-the-box.

Environment Ready – separate configs for dev and prod.

IaC Best Practices – reusable modules, remote state, and versioned provider lock files.

Architecture Overview-

          ┌──────────────┐
          │   Internet   │
          └──────┬───────┘
                 │
          ┌──────▼───────┐
          │   ALB        │
          └──────┬───────┘
        ┌────────┼────────┐
        ▼        ▼        ▼
    EC2 Instances (Auto Scaling)
                 │
            ┌────▼────┐
            │  RDS    │
            └─────────┘


VPC with public & private subnets across multiple AZs

Application Load Balancer (ALB) distributing traffic

EC2 Auto Scaling Group running the app

RDS MySQL Database for persistence

CloudWatch monitoring with dashboards

🚀 Getting Started
1. Clone the Repo
git clone https://github.com/idrisshittu02/Hug-Ibadan-terraform-web-platform-aws-.git
cd Hug-Ibadan-terraform-web-platform-aws-

2. Initialize Terraform
cd environments/dev
terraform init

3. Review & Apply
terraform plan
terraform apply

4. Access the App
terraform output website_url


Open the URL in your browser 🎉

🧪 Testing

Simulate load to trigger auto-scaling:

bash load_test.sh


Monitor scaling in AWS Console → EC2 → Auto Scaling Groups.

🛑 Cleanup

When done, destroy the stack:

cd environments/dev
terraform destroy


For production:

cd environments/prod
terraform destroy

👨🏽‍💻 Author

Idris Shittu
🌐 Cloud Engineer | ☁️ DevOps Enthusiast
📩 idrisshittu02@gmail.com

🐙 GitHub

⚡ Built with ❤️ and Terraform


