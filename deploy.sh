#!/usr/bin/env bash
DEFAULT="deployer"
PROFILE=${AWS_PROFILE:-$DEFAULT}
BUCKET=${DESTINATION_BUCKET}
aws s3 sync $DIR s3://$BUCKET/ --delete --profile "$PROFILE"
aws cloudfront create-invalidation --cli-input-json '{"DistributionId":"'"$AWS_CLOUDFRONT_ID"'","InvalidationBatch":{"Paths":{"Quantity":2,"Items":["/index.html","/*"]},"CallerReference": "'$(date "+%s")'"}}'
ERROR=$?
if [ "$ERROR" -eq 0 ];
then
    echo "Updated!"
	exit 0
else
    echo "Update failed!"
	exit 1
fi

