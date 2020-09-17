help:           ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

deploy-pbdf:
	echo "deploying to $$AWS_PROFILE" \
    	&& aws s3 sync ./pbdf/inz-demo/ s3://inz-demo-scheme/pbdf/inz-demo/ --exclude ".git*" --exclude "deploy.sh" --exclude ".idea/*"

deploy:
	echo "deploying to $$AWS_PROFILE" \
    	&& aws s3 sync ./inz-demo/ s3://inz-demo-scheme/inz-demo/ --exclude ".git*" --exclude "deploy.sh" --exclude ".idea/*"
