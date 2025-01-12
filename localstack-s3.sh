docker run \
  -e SERVICES=s3 \
  -e LAMBDA_EXECUTOR=docker \
  -e DATA_DIR=/tmp/localstack/data \
  -p 4566:4566 \
  --restart=always \
  localstack/localstack &

sudo apt install awscli

'''
aws configure

aws --endpoint-url=http://localhost:4566 s3 mb s3://sync-files

aws --endpoint-url=http://localhost:4566 s3 ls

aws --endpoint-url=http://localhost:4566 s3 ls s3://sync-files
'''

