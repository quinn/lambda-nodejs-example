deploy:
	bin/deploy

build:
	bin/build

check:
	aws cloudformation deploy --no-execute-changeset --stack-name $APP_NAME

url:
	aws cloudformation describe-stacks --stack-name $APP_NAME | grep apiGatewayInvokeURL | awk '{print $3}'

test:
	curl -X POST `just url`

check-error:
	aws cloudformation describe-stack-events --stack-name $APP_NAME

stacks:
	aws cloudformation list-stacks

delete:
	aws cloudformation delete-stack --stack-name $APP_NAME

