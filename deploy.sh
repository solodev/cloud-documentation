#!/usr/bin/env bash
aws s3 sync dist s3://solodev-cloud-documentation --delete --acl public-read