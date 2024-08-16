#

<div class="header">
  <div class="inner">
    <img src="/static/images/logos/serverless-keycloak.png" alt="Keycloak Logo">
    <div>
      <h1>Keycloak Serverless</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Keycloak provides user federation, strong authentication, user management, fine-grained authorization, and more.</p>
    </div>
  </div>
  <a href="https://aws.amazon.com/marketplace/server/procurement?productId=prod-hdehqqssxce6q" rel="noopener noreferrer" target="_blank" style="background-color: #f99700; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;">SUBSCRIBE <span style="padding-left: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>
</div>

## Prerequisites

* Have an existing [AWS Account](/quickstart/cloud/aws)</a>.
* Have an existing <a href="https://console.aws.amazon.com/acm/" target="_blank">Certificate <span>:icon-link-external:</span></a>.
* Previously created <a href="https://console.aws.amazon.com/route53/" target="_blank">Hostname <span>:icon-link-external:</span></a>.
* Preexisting VPC <a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=solodev-vpc&templateURL=https://s3.amazonaws.com/solodev-cms/cloudformation/infrastructure/vpc.yaml" target="_blank" class="btn-orange-sm mt-2" style="margin-left: .5rem;">LAUNCH STACK <span>:icon-play:</span></a>

## Subscription

The following steps cover the setup of the **Keycloak Serverless** on the AWS Marketplace. Click the **“Continue to Subscribe”** button at the top of the AWS Marketplace listing page to continue the process. Keycloak Serverless is available as a monthly subscription on the AWS Marketplace. The subscription includes the software's operational and infrastructure costs for running on AWS.

1. Subscribe to Solodev on the AWS Marketplace. <a href="https://aws.amazon.com/marketplace/server/procurement?productId=prod-hdehqqssxce6q" target="_blank" class="btn-orange-sm" style="margin-left: 1rem;">SUBSCRIBE <span>:icon-link-external:</span></a>
2. Review and accept the **"Terms and Conditions"**.
3. Click **"Continue to Configuration"**.

<p><img src="/static/images/keycloak/keycloak-subscribe-terms.jpg" alt="Keycloak Serverless Continue to Configuration" style="width: 80%;"></p>

!!!NOTE:
Once accepted, you will receive a thank you message asking you to configure your software. <br>This process can take a few moments. Please do not exit the screen or refresh the page.
!!!

### <span class="text-teal">Configure Software</span>

1. Choose a fulfillment option and software version to launch this software.

<p><img src="/static/images/keycloak/keycloak-configure-options.jpg" alt="Keycloak Configure options" style="width: 45%;"></p>

**Name** | **Description** 
:--- | ---
Fulfillment option | Select a fulfillment option. Default: Deploy Container.
Software version | Select the software version. The latest version of Keycloak Serverless is always recommended.

2. Click <span class="text-orange">**"Continue to Launch."**</span>

<p><img src="/static/images/keycloak/keycloak-continue-to-launch.jpg" alt="Keycloak continue to launch" style="width: 80%;"></p>

### <span class="text-teal">Launch Software</span>

Review the launch configuration details and follow the instructions to launch this software.

{% tabs %}

{% tab title="CloudFormation" %}

Before launching the Keycloak Serverless software, make sure you are logged into your AWS account. If you do not have an AWS account, click here to create one. Once you have signed in, click the button below and follow the outlined steps.

<a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=keycloak-pro&templateURL=https://s3.amazonaws.com/keycloak-pro/cloudformation/keycloak-serverless.yaml" rel="noopener noreferrer" target="_blank" class="btn-orange-lg mb-2">LAUNCH KEYCLOAK <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>

!!!NOTE:
If your AWS region is different from `us-east-1`, make sure to select your specific region from the top menu.
!!!

#### Create Stack

1. Create a stack.

<p><img src="/static/images/keycloak/keycloak-create-stack.jpg" alt="Keycloak Serverless Create Stack" style="width: 90%;"></p>

2. Click <span class="text-orange">**Next**</span>.

#### Stack Details

##### Provide a stack name

1. Provide a stack name. Stack name must be 1 to 128 characters, start with a letter, and only contain alphanumeric characters.

<p><img src="/static/images/keycloak/keycloak-stack-name.jpg" alt="Keycloak Serverless stack name" style="width: 62%;"></p>

##### Parameters

1. Specify the parameters in the setup section.

<p><img src="/static/images/keycloak/keycloak-params-setup.jpg" alt="Keycloak Serverless params setup" style="width: 50%;"></p>

Name   | Description
---    | ---
CertificateArn | (Required) CertificateArn for SSL cert that matches the FQDN above. Please visit the <a href="https://docs.aws.amazon.com/acm/" target="_blank">AWS Certificate Manager :icon-link-external:</a>.
Hostname | (Required) Domain name or IP address used to access the Keycloak instance (e.g. keycloak.domain.com).

2. VPC Settings.

<p><img src="/static/images/keycloak/keycloak-vpc-settings.jpg" alt="Keycloak Serverless params optional" style="width: 28%;"></p>

Name   | Description
---    | ---
VPCID | Choose which VPC the Application should be deployed to. <br><br>An Amazon Virtual Private Cloud (VPC) is a dedicated environment that lets you launch the AWS resources that power your Keycloak Serverless in an isolated virtual network. If you do not have a VPC, you will need to create one in your VPC Console. For instructions on how to create a VPC, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html" target="_blank">click here for instructions :icon-link-external:</a>.
PubSubnets | The ID of the public subnets in Availability Zone 1 and 2 in your existing VPC (e.g., subnet-a0246dcd). <br><br>A subnet is a range of IP addresses contained in your VPC. You can create AWS resources, such as EC2 instances, in specific subnets, enabling you to group network resources more efficiently. If you do not have any existing subnets, you will need to create one in your Subnet Console. For instructions, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#ec2-shared-VPC-subnets" target="_blank">click here :icon-link-external:</a>. (Choose two).
PrivSubnets | The ID of the private subnets in Availability Zone 1 and 2 in your existing VPC (e.g., subnet-a0246dcd). (Choose two).
DBSubnets | The ID of the database subnets in Availability Zone 1 and 2 in your existing VPC (e.g., subnet-a0246dcd). (Choose two).

3. Fargate Task Size Settings

<p><img src="/static/images/keycloak/keycloak-fargate-settings.jpg" alt="Keycloak Serverless Fargate Task Size Settings" style="width: 55%;"></p>

Name   | Description
---    | ---
TaskCPU | The amount of CPU to reserve for your keycloak task.
TaskMemory | The amount of memory to reserve for your keycloak task. Please confirm the memory you select is compatible with the TaskCPU: <a href="https://docs.aws.amazon.com/AmazonECS/latest/userguide/fargate-task-defs.html#fargate-tasks-size" target="_blank">https://docs.aws.amazon.com/AmazonECS/latest/userguide/fargate-task-defs.html#fargate-tasks-size :icon-link-external:</a>

4. AutoScaling Settings

<p><img src="/static/images/keycloak/keycloak-autoscaling-settings.jpg" alt="Keycloak Serverless AutoScaling Settings" style="width: 28%;"></p>

Name   | Description
---    | ---
MinContainers | Minimum containers count.
MaxContainers | Maximum containers count.
AutoScalingTargetCpuUtilization | Auto scaling target CPU utilization.

5. Environment variable

<p><img src="/static/images/keycloak/keycloak-environment-variable.jpg" alt="Keycloak Serverless Environment variable" style="width: 80%;"></p>

Name   | Description
---    | ---
JavaOpts | JAVA_OPTS environment variable.
DeletionPolicy | A Deletion Policy is a configuration that you can set for resources in AWS CloudFormation templates to specify what should happen to the resource when its stack is deleted.
HostnameStrict | Enables strict hostname validation. If you do not have a domain yet, set to `false`. For production environments, it's recommended to set this to `true` to ensure the request hostname matches the configured hostname for security purposes, unless your reverse proxy or load balancer overwrites the `Host` header.

!!!Note:
If you set `HostnameStrict=true`, you need to create your domain in [Amazon Route 53](https://console.aws.amazon.com/route53).
!!!

6. Click <span class="text-orange">**Next**</span>.

#### Configure Stack Options

1. Add a new tag. **This step is optional**.

Tags (key-value pairs) are used to apply metadata to AWS resources, which can help in organizing, identifying, and categorizing those resources. You can add up to 50 unique tags for each stack. If you need more information about tags, click here.

<p><img src="/static/images/quickstart/stack-tags.jpg" alt="Keycloak Serverless tags" style="width: 80%;"></p>

2. Specify an existing AWS Identity and Access Management (IAM) service role that CloudFormation can assume. **This step is optional**.

<p><img src="/static/images/quickstart/stack-permissions.jpg" alt="Keycloak Serverless permissions" style="width: 80%;"></p>

3. Select the stack failure options.

<p><img src="/static/images/quickstart/stack-failure.jpg" alt="Keycloak Serverless failure" style="width: 80%;"></p>

Name   | Description
---    | ---
Behavior on provisioning failure | Specify the roll back behavior for a stack failure..
Delete newly created resources during a rollback | Specify whether resources that were created during a failed operation should be deleted regardless of their deletion policy.

To learn more about the stack failure options, <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-failure-options.html" target="_blank">click here :icon-link-external:</a>.

#### Advanced options

1. You can set additional options for your stack, like notification options and a stack policy. For more information, <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-console-add-tags.html" target="_blank">click here :icon-link-external:</a>.

<p><img src="/static/images/quickstart/stack-advanced.jpg" alt="Keycloak Serverless advanced options" style="width: 50%;"></p>

2. Click <span class="text-orange">**Next**</span>.

### Review and create

1. Review your settings.

2. Acknowledge the AWS CloudFormation terms. For more information, [click here](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html?icmpid=docs_cfn_console#using-iam-capabilities).

<p><img src="/static/images/quickstart/stack-capabilities-short.jpg" alt="Keycloak Serverless capabilities" style="width: 62%;"></p>

3. Click <span class="text-orange">**Submit**</span>.

### Stacks

1. <span class="text-orange">**Watch your Keycloak being created!**</span> Once the status changes from **CREATE_IN_PROGRESS** to **CREATE_COMPLETE**, you can access your Keycloak.

<p><img src="/static/images/keycloak/keycloak-stack.jpg" alt="Keycloak Stack" style="width: 62%;"></p>

2. Click on the **Outputs** tab and click on the **KeyCloakContainerServiceEndpointURL** value.

<p><img src="/static/images/keycloak/keycloak-stack-outputs.jpg" alt="Keycloak Stack Outputs" style="width: 62%;"></p>

3. This will open your login screen.

<p><img src="/static/images/keycloak/keycloak-login-screen.jpg" alt="Keycloak Login Screen" style="width: 40%;"></p>

### Access your credentials

1. Go to the [AWS Secrets Manager console](https://console.aws.amazon.com/secretsmanager).

2. In the the filter box, enter **KeyCloakKCSecret**. 

<p><img src="/static/images/keycloak/keycloak-secret.jpg" alt="Keycloak Secret" style="width: 62%;"></p>

3. Click on the **KeyCloakKCSecret** corresponding to the Keycloak you deployed.

4. On the **Overview** tab, click **Retrieve secret value**.

<p><img src="/static/images/keycloak/keycloak-retrieve-secret.jpg" alt="Keycloak retrieve secret" style="width: 62%;"></p>

5. Copy the **username** and **password**.

<p><img src="/static/images/keycloak/keycloak-secret-values.jpg" alt="Keycloak secret values" style="width: 30%;"></p>

6. Use the credentials you just retrieve to log in.

<p><img src="/static/images/keycloak/keycloak-login-screen-with-credentials.jpg" alt="Keycloak Login Screen" style="width: 40%;"></p>

{% endtab %}

{% endtabs %}

<style>
  /* Headers */
  .header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 2rem 1.5rem;
    margin-bottom: 2rem;
    background-color: #eef6ff;
  }
  .header .inner {
    display: flex;
    align-items: center;
    justify-content: start;
  }
  .header img {
    width: 80px;
  }
  .header h1 {
    margin-left: 0;
    font-size: 2rem;
    margin-bottom: 0.25rem;
  }
  .header p {
    padding-left: 2rem;
    margin-bottom: 0;
  }
</style>