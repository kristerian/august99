HOW to run the script.

PREREQUISITES

1. Make sure that you have terafform 1.0.5 or latest installed on the system. 
Refer to the link for download and installation
https://learn.hashicorp.com/tutorials/terraform/install-cli

2. Git 2.33.0 or latest Must be installed.
Refer to link below.
https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

3. pull it from https://github.com/kristerian/august99.git
4. Go to august99 folder. 

NOTE: If you have your own aws Account it is important to change the following AWS_ACCESS_KEY_ID, and AWS_ACCESS_SECRET_ACCESS_KEY inside deploy.sh file so you can see the instance in your own account.
Change the AWS_ACCESS_DEFAULT_REGION accordingly in terraform.tf file for your preference and AMI_ID if you wanted a different os.

#changeme
export AWS_ACCESS_KEY_ID="AKIA2JW3OZSUMLL2CF4M"
export AWS_DEFAULT_REGION="ca-central-1"
export AWS_SECRET_ACCESS_KEY="A4u2E6mKi6J18f6Gof2AYFX+kgP8yrHOy7H5V3L6" 

IF YOU GET ERROR 403 on creation use the following access keys instead.

AVAILABLE ACCESS KEYS

AWS_ACCESS_KEY_ID="AKIA2JW3OZSUPIFGSBXG"
AWS_SECRET_ACCESS_KEY="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"


AWS_ACCESS_KEY_ID="AKIA2JW3OZSULP25ID5M"
AWS_SECRET_ACCESS_KEY="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"



###########################################################################



To create instance
1. Type sudo ./deploy.sh create

To destroy instance
2. Type sudo ./deploy.sh delete

3. To access the webserver check output instance_public_ip on your terminal.


