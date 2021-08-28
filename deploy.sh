#!/bin/bash

#change me
export AWS_ACCESS_KEY_ID="AKIA2JW3OZSUCEZURAJ5"
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
