export AWS_ACCESS_KEY_ID="AKIA2JW3OZSUMLL2CF4M"
export AWS_DEFAULT_REGION="ca-central-1"
export AWS_SECRET_ACCESS_KEY="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"

#!/bin/bash

case "$1" in 
start)
   terraform init
   terraform apply -auto-approve &
   echo $!>/var/run/hit.pid
   ;;
stop)
   terraform destroy -auto-approve
   rm /var/run/hit.pid
   ;;
*)
   echo "Usage: $0 {start|stop}"
esac

exit 0 
