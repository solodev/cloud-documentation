# Add AWS Account Manually

Use this guide to manually set up integration between the Cloud and AWS via Access keys.

In order to integrate Solodev Cloud with AWS please follow these simple steps:

#### AWS
1. Create an AWS IAM user to be used for the integration with the Solodev Cloud. Easiest way to do it is via your AWS console. To make sure that the user will have necessary permissions please refer to IAM Policy .
2. Generate an access key and secret key for the  integration with Solodev Cloud.

#### Solodev Cloud

3. In the **Provider** tile, click **Add Cloud Account**, select AWS, click **Install for free**, click **Complete Purchase**, and select **Install**.
4. You will be taken to "Add Provider" tile. Click **Manually**, and then select the Access Keys option from the dropdown menu.
5. Enter your Account ID, AWS Access Key and AWS Secret Key.
6. Click **Connect**.
7. Wait few minutes for data to start being collected.

#### AWS IAM Permissions

AWS IAM permissions enable Solodev Cloud to collect data necessary to monitor your AWS environment.

To correctly set up the AWS Integration, you must attach the relevant IAM policies to the Solodev Cloud IAM Role in your AWS account.

#### AWS Integration IAM Policy

The following permissions included in the policy document use wild cards such as List* and Get*. If you require strict policies, use the complete action names as listed and reference the Amazon API documentation for your respective services.

```js 
{
    "Version": "2022-10-17",
    "Statement": [
        {
            "Action": [
                "apigateway:GET",
                "autoscaling:Describe*",
                "backup:List*",
                "budgets:ViewBudget",
                "cloudfront:GetDistributionConfig",
                "cloudfront:ListDistributions",
                "cloudtrail:DescribeTrails",
                "cloudtrail:GetTrailStatus",
                "cloudtrail:LookupEvents",
                "cloudwatch:Describe*",
                "cloudwatch:Get*",
                "cloudwatch:List*",
                "codedeploy:List*",
                "codedeploy:BatchGet*",
                "directconnect:Describe*",
                "dynamodb:List*",
                "dynamodb:Describe*",
                "ec2:Describe*",
                "ecs:Describe*",
                "ecs:List*",
                "elasticache:Describe*",
                "elasticache:List*",
                "elasticfilesystem:DescribeFileSystems",
                "elasticfilesystem:DescribeTags",
                "elasticfilesystem:DescribeAccessPoints",
                "elasticloadbalancing:Describe*",
                "elasticmapreduce:List*",
                "elasticmapreduce:Describe*",
                "es:ListTags",
                "es:ListDomainNames",
                "es:DescribeElasticsearchDomains",
                "events:CreateEventBus",
                "fsx:DescribeFileSystems",
                "fsx:ListTagsForResource",
                "health:DescribeEvents",
                "health:DescribeEventDetails",
                "health:DescribeAffectedEntities",
                "kinesis:List*",
                "kinesis:Describe*",
                "lambda:GetPolicy",
                "lambda:List*",
                "logs:DeleteSubscriptionFilter",
                "logs:DescribeLogGroups",
                "logs:DescribeLogStreams",
                "logs:DescribeSubscriptionFilters",
                "logs:FilterLogEvents",
                "logs:PutSubscriptionFilter",
                "logs:TestMetricFilter",
                "organizations:Describe*",
                "organizations:List*",
                "rds:Describe*",
                "rds:List*",
                "redshift:DescribeClusters",
                "redshift:DescribeLoggingStatus",
                "route53:List*",
                "s3:GetBucketLogging",
                "s3:GetBucketLocation",
                "s3:GetBucketNotification",
                "s3:GetBucketTagging",
                "s3:ListAllMyBuckets",
                "s3:PutBucketNotification",
                "ses:Get*",
                "sns:List*",
                "sns:Publish",
                "sqs:ListQueues",
                "states:ListStateMachines",
                "states:DescribeStateMachine",
                "support:DescribeTrustedAdvisor*",
                "support:RefreshTrustedAdvisorCheck",
                "tag:GetResources",
                "tag:GetTagKeys",
                "tag:GetTagValues",
                "xray:BatchGetTraces",
                "xray:GetTraceSummaries"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
```

