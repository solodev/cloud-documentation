#!/usr/bin/env bash
aws s3 sync dist s3://cloud-documentation --delete --acl public-read