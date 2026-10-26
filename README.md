Task 3: Infrastructure as Code with Terraform



Objective



Provision a local Docker container using Terraform.



Tools Used



Terraform



Docker Desktop



Docker provider for Terraform



Nginx Alpine image



Project Description



This project uses Terraform Infrastructure as Code (IaC) to provision an Nginx Docker container locally.



Terraform manages the Docker image and container resources through the main.tf configuration file.



Configuration



Docker image: nginx:alpine



Container name: terraform-task3-nginx



Container port: 80



Host port: 18081



Application URL: http://localhost:18081



Commands Executed



terraform init



terraform fmt



terraform validate



terraform plan



terraform apply



terraform state list



terraform show



terraform output



terraform destroy



Verification



The Nginx welcome page was displayed successfully in the browser, confirming that the container was serving HTTP requests.



Execution Logs



The execution-logs.txt file contains captured Terraform and Docker verification command output.



Cleanup



Terraform destroy is used to remove the resources managed by this configuration after verification.

