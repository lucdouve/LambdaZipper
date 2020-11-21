# Python 3.7 Package Creator for AWS Lambda
This is a ported version of this [repository](https://github.com/tiivik/LambdaZipper) of the Python 3.6 Docker by [Rainer Selvet (Tiivik)](https://github.com/tiivik).

All credits go to this repo: https://github.com/tiivik/LambdaZipper

## Quick start
`docker run --rm -v $(pwd):/package lucdouve/lambdazipperpython3.7 MY_PIP_PACKAGE`

**Example:**

`docker run --rm -v $(pwd):/package lucdouve/lambdazipperpython3.7 numpy`

Result is `numpy.zip` that can be added/uploaded as a [Lambda Layer](https://aws.amazon.com/blogs/aws/new-for-aws-lambda-use-any-programming-language-and-share-common-components/) or extracted into your existing Lambda deployment package.

---

### This project consists of two key components
1. Docker environment mimicing AWS Lambda environment. If you are looking for an advanced Lambda environment replication, take a look at [lambci/docker-lambda](https://github.com/lambci/docker-lambda).
2. Packaging script to build AWS Lambda ready packages from Python 3.6 modules.

## Dockerfile for Lambda environment
Premade Docker image can be found on Docker Hub for [Python 3.6](https://cloud.docker.com/repository/docker/tiivik/lambdazipper) or [Python 3.7](https://cloud.docker.com/repository/docker/lucdouve/lambdazippepython3.7)
