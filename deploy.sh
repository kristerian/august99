#!/bin/bash

#change me
export AWS_ACCESS_KEY_ID="AKIA2JW3OZSUB2WH25P3"
export AWS_DEFAULT_REGION="ca-central-1"
export AWS_SECRET_ACCESS_KEY="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"


case "$1" in 
create)
   terraform init
   terraform apply -auto-approve &
   ;;
destroy)
   terraform destroy -auto-approve
   ;;
*)
   echo "Usage: $0 {start|stop}"
esac

exit 0 
