#!/usr/bin/env bash
DEFAULT="deployer"
PROFILE=${AWS_PROFILE:-$DEFAULT}
BUCKET=${DESTINATION_BUCKET}
aws s3 sync $DIR s3://$BUCKET/ --delete
aws cloudfront create-invalidation  --distribution-id $AWS_CLOUDFRONT_ID --cli-input-json '{"DistributionId":"'"$AWS_CLOUDFRONT_ID"'","InvalidationBatch":{"Paths":{"Quantity":2,"Items":["/index.html","/*"]},"CallerReference": "'$(date "+%s")'"}}'
ERROR=$?
if [ "$ERROR" -eq 0 ];
then
    echo "Updated!"
	exit 0
else
    echo "Update failed!"
	exit 1
fi

