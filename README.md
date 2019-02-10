# Lambda Node.js Example

## Install Dependencies
 * Install the AWS CLI: `brew install awscli` on a OS X.
 * Install [just runner][just] Can be installed via
   homebrew `brew install just` or grab one of the
   [prebuilt binaries][just-binaries].

## Setup Environment
 * Copy `.env.example` to `.env`
 * Update [AWS credentials][aws-creds] appropriately. The
   `.env` file already has `AWS_PROFILE=` in it, you can
   remove that and replace with whatever way you prefer
   to authenticate.
 * Assign an `APP_NAME`. This will be used to name the
   cloudformation stack and other references.
 * Assign a `BUCKET_NAME`. This will be where the versioned
   lambda zip files will be uploaded to.

## Deploy & Test
 * Run `just deploy` to deploy the configuration.
 * Once deploy is complete, run `just url` to get the url of
   your API Gateway. Try making a POST request to the url to
   receive the Hello World response.

## Wrapping Up
 * When you're done, run `just delete` to destroy the stack and
   all of it's dependencies in AWS.

[aws-creds]:     https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html#cli-quick-configuration
[just]:          https://github.com/casey/just
[just-binaries]: https://github.com/casey/just/releases
