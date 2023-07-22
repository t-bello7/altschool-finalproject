### Hipster Shop
The [Hipster Shop](https://github.com/GoogleCloudPlatform/microservices-demo) is a microservices-based e-commerce solution that aims to address the challenges faced by modern online retailers, aim at improving customers experience. <br>The application can either be deployed locally or remotely.Steps taken for deployment of this application have been listed below.

### Pre-requisites
- An AWS account
- A GitHub account
- Install Terraform 
- Install AWS CLI

### For Local deployment: 

### Setup credentials 
You will need to set up your credentials as it is very important for deployment. The deployment of this application was done using AWS, other cloud providers can be used based on your field of expertise.

### Create a private AWS bucket for remote state files

### Clone the project repo from GitHub
```
git clone https://github.com/t-bello7/altschool-finalproject.git
```
### Add the following secrets to your repository <br>
Add the AWS_REGION, AWS_SECRET_ACCESS_KEY, AWS_ACCESS_KEY, AWS_STATE_BUCKET_NAME, AWS_BUCKET_KEY to your repository, a detailed step is attached in the [link](https://docs.github.com/en/codespaces/managing-codespaces-for-your-organization/managing-encrypted-secrets-for-your-repository-and-organization-for-github-codespaces)

### Make a PR or push to the test branch to trigger the GitHub Actions pipeline
<br>
<br>

## RESOURCES
- https://github.com/docker/build-push-action/issues/223
- https://www.aviator.co/blog/how-to-monitor-and-alert-on-nginx-ingress-in-kubernetes/s
