HOW to run the script.

Make sure that you have terafform installed on the system. 
Refer to the link for download https://www.terraform.io/downloads.html



NOTE: If you have your own aws Account it is important to change the following ACCESS_KEY_ID,ACCESS_DEFAULT_REGION and ACCESS_SECRET_ACCESS_KEY inside deploy.sh file.

AWS_ACCESS_KEY_ID="AKIA2JW3OZSUMLL2CF4M"
AWS_DEFAULT_REGION="ca-central-1"
AWS_SECRET_ACCESS_KEY="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" 

To create instance
1. Type ./deploy.sh create

To destroy instance
2. Type ./deploy.sh delete
