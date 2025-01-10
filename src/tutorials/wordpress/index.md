This tutorial guides you through setting up a domain, securing it with an SSL/TLS certificate, and optimizing performance using a [CDN](/quickstart/cms/wordpress/#next-steps) — all through AWS services. You will also learn how to launch a [WordPress CMS](/quickstart/cms/wordpress) and configure essential features.

## Prerequisites

- An active [AWS account](/quickstart/cloud/aws/).
- Access to manage your domain (through AWS Route 53 or another registrar).
- Sufficient permissions in your AWS account to create and manage resources.

## Launch WordPress Pro

1. Subscribe to [WordPress on the AWS Marketplace](https://aws.amazon.com/marketplace/pp/prodview-l5326ck4qjosk?sr=0-4&ref_=beagle&applicationId=AWSMPContessa).

2. Follow the steps under [Cloudformation](quickstart/cms/wordpress/#launch-software).

## Setup a Domain

In this step, we’ll walk through the process of setting up a domain in AWS using Route 53.

1. Log in to your **AWS Management Console**.

2. Navigate to **Route 53** by searching for it in the Services menu.

3. In the Route 53 dashboard, click on **Hosted zones**.

4. Click **Create hosted zone** or select an existing one.

5. Enter your domain name in the **"Domain name"** field (e.g., example.com).

6. Select the **Public hosted zone** type.

7. Click <span class="text-orange">**Create hosted zone**</span>.

!!!Note:
You have now successfully set up your domain in AWS! For advanced configurations, refer to the [AWS Route 53 Documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html).
!!!

## Request a Certificate

1. Navigate to **Certificate Manager** by searching for it in the Services menu.

2. Click **Request a certificate**.

3. Select **Request a public certificate** and click Next.

4. Enter your domain name (e.g., example.com).

  - Use *.example.com for a wildcard certificate to include all subdomains.

5. Click <span class="text-orange">**Next**</span>.

## Add a CDN

1. Navigate to [WordPress CDN Section](/quickstart/cms/wordpress/#next-steps).

2. Click on **Launch** and follow the prompts to configure your CDN settings.

<hr>

**Congratulations!** You’ve successfully set up your domain, secured it with SSL/TLS using AWS Certificate Manager, and enhanced its performance with a CDN. These steps ensure your website is accessible, secure, and optimized for faster delivery to users worldwide. With your WordPress CMS launched and configured, you’re ready to start building and managing your content.