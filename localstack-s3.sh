docker run --rm -it \
  -e SERVICES=s3 \
  -e LAMBDA_EXECUTOR=docker \
  -e DATA_DIR=/tmp/localstack/data \
  -p 4566:4566 \
  localstack/localstack &

sudo apt install awscli

'''
aws configure

aws --endpoint-url=https://localhost s3 mb s3://sync-files

aws --endpoint-url=https://localhost s3 ls
'''

