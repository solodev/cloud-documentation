This tutorial guides you through setting up a domain, securing it with an SSL/TLS certificate, and optimizing performance using a [CDN](/quickstart/cms/wordpress/#next-steps) — all through AWS services. You will also learn how to launch a [WordPress CMS](/quickstart/cms/wordpress) and configure essential features.

## Prerequisites

- An active [AWS account](/quickstart/cloud/aws/).
- Access to manage or to create your domain (through AWS Route 53 or another registrar).
- Sufficient permissions in your AWS account to create and manage resources.

## Launch WordPress Pro

1. Subscribe to [WordPress on the AWS Marketplace](https://aws.amazon.com/marketplace/pp/prodview-l5326ck4qjosk?sr=0-4&ref_=beagle&applicationId=AWSMPContessa).

2. Follow the steps under [Cloudformation](quickstart/cms/wordpress/#launch-software).

## Setup a Domain

In this step, we’ll walk through the process of setting up a domain in AWS using Route 53.

1. Log in to your **AWS Management Console**.          

2. Navigate to **Route 53** by searching for it in the Services menu.

3. In the Route 53 dashboard, click on **Hosted zones**.

<p><img src="/static/images/common/route-53/route-53-hosted-zones-nav.jpg" alt="Route 53 Left Navigation" style="width: 15%;"></p>

4. Click **Create hosted zone** or select an existing one.

<p><img src="/static/images/common/route-53/create-hosted-zones.jpg" alt="Route 53 Create hosted zone" style="width: 80%;"></p>

5. Enter your domain name in the **"Domain name"** field (e.g., example.com).

<p><img src="/static/images/common/route-53/hosted-zones-config.jpg" alt="Route 53 Domain name" style="width: 80%;"></p>

6. Select the **Public hosted zone** type.

<p><img src="/static/images/common/route-53/hosted-zones-config-type.jpg" alt="Route 53 Type" style="width: 80%;"></p>

7. Click <span class="text-orange">**Create hosted zone**</span>.

!!!Note:
You have now successfully set up your domain in AWS! For advanced configurations, refer to the [AWS Route 53 Documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html).
!!!

## Request a Certificate

1. Navigate to **Certificate Manager** by searching for it in the Services menu.

2. Click **Request a certificate**.

3. Select **Request a public certificate** and click Next.

4. Enter your domain name (e.g., example.com). Use *.example.com for a wildcard certificate to include all subdomains.

5. Click <span class="text-orange">**Next**</span>.

## Add a CDN

{% tabs %}

{% tab title="Cloudformation" %}

Click the Launch button below and follow the outlined steps.

<a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=wordpress-cdn&templateURL=https://wordpress-release.s3.us-east-1.amazonaws.com/cloudformation/cloudfront-wordpress.yaml" rel="noopener noreferrer" target="_blank" class="btn-orange-lg mb-2">LAUNCH CDN<span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>

!!!NOTE:
If your AWS region is different from `us-east-1`, make sure to select your specific region from the top menu.
!!!

#### Create Stack 

<p><img src="/static/images/tutorials/wordpress/wordpress-create-stack-cdn.jpg" alt="WordPress Pro CDN Create Stack" style="width: 90%;"></p>

2. Click <span class="text-orange">**Next**</span>.

3. Follow the steps.

{% endtab %}

{% endtabs %}

<hr>

**Congratulations!** You’ve successfully set up your domain, secured it with SSL/TLS using AWS Certificate Manager, and enhanced its performance with a CDN. These steps ensure your website is accessible, secure, and optimized for faster delivery to users worldwide. With your WordPress CMS launched and configured, you’re ready to start building and managing your content.