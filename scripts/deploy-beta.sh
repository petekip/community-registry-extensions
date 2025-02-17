#!/bin/sh
#
# Run this from the release folder to deploy to the beta account

export PROFILE=cep-beta
export PACKAGE_BUCKET=community-registry-extensions-beta-packages
export CEP_ENV=beta
export PREFIX=AwsCommunity
export PREFIX_LOWER=awscommunity
export GIT_BRANCH=release
export GIT_URL=https://github.com/aws-cloudformation/community-registry-extensions.git
export GITHUB_SECRET_ARN=arn:aws:secretsmanager:us-east-1:676545906896:secret:cep-github-webhook-secret-L1HEni
export PUBLISH_BUILD_BUCKET_NAME=community-registry-extensions-publish-build
export PROD_ACCOUNT_ID=387586997764
export NOTIFICATION_EMAIL="tfc-builderexperience-iac-cep+${CEP_ENV}@amazon.com"

./deploy-beta.sh
