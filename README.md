# Packer Examples

Packer is powerful, single binary tool created to automatically install and configure software inside machine image defined by code - so called "provisioning".

Intent of this repository is to provide set of examples to grab idea around building images via HashiCorp Packer mainly on AWS.

## Commands

## Samples

### 01 Simple Redis

Simple Ubuntu image with redis-server install. AWS keys are provided via CLI build command
Source: https://www.packer.io

### 02 Amazon Docker Host

### 03 Packer Machine for building AMI's

Machine in Amazon cloud providing Packer capabilities in secure manner - deploys temporary EC2, taking AMI and terminates.

Source: https://aws.amazon.com/blogs/devops/how-to-create-an-ami-builder-with-aws-codebuild-and-hashicorp-packer/