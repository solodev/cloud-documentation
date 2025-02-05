Welcome to your next exciting challenge! Today, we’re tackling the steps to set up a Drupal website. We’ll start by installing the [Drupal CMS](/quickstart/cms/drupal/), move on to configuring your domain, secure it with an SSL/TLS certificate, and then supercharge performance with a CDN.

## What You’ll Need

Before we dive in, here’s your toolkit checklist:

- An active [AWS account](/quickstart/cloud/aws/).
- Access to manage or to create your domain (through AWS Route 53 or another registrar).
- Sufficient permissions in your AWS account to create and manage resources.

Ready? Let’s get started!

## Step 1: Launch Drupal Pro

Let’s get Drupal up and running!

1. Visit the [AWS Marketplace](https://aws.amazon.com/marketplace/server/procurement?productId=prod-jquf35j7xh5aq) and click the <span class="text-orange">**Subscribe**</span> button to kickstart the process.

2. Follow the CloudFormation guide to complete the setup. Solodev makes it straightforward — just follow [these steps](/quickstart/cms/drupal/#launch-software).

!!!
**Pro tip:** Have a cup of coffee or tea handy — this step is smooth sailing, but a little extra fuel never hurts!
!!!

## Step 2: Set Up Your Domain

It’s time to plant your digital flag and claim your place on the web! Follow these steps to tame your domain using AWS Route 53.

1. Log in to your **AWS Management Console**.          

2. Navigate to **Route 53** by typing it into the search bar — think of it as your AWS compass.

3. In the Route 53 dashboard, select **Hosted Zones** (this is where your domain will live).

<p><img src="/static/images/common/route-53/route-53-hosted-zones-nav.jpg" alt="Route 53 Left Navigation" style="width: 15%;"></p>

4. Ready to build your digital HQ? Click **Create hosted zone** or select an existing one if you’ve already got the ball rolling.

<p><img src="/static/images/common/route-53/create-hosted-zones.jpg" alt="Route 53 Create hosted zone" style="width: 80%;"></p>

5. Enter your domain name in the **Domain name** field (e.g., `example.com`).

<p><img src="/static/images/common/route-53/hosted-zones-config.jpg" alt="Route 53 Domain name" style="width: 80%;"></p>

6. Choose **Public hosted zone** to make your domain accessible to the world.

<p><img src="/static/images/common/route-53/hosted-zones-config-type.jpg" alt="Route 53 Type" style="width: 80%;"></p>

7. Smash that <span class="text-orange">**Create hosted zone**</span> button, and boom — you're live!

**Congrats!** Your domain is officially set up and ready to shine.

!!!
**Pro Tip:** For advanced settings or a deeper dive, check out the [AWS Route 53 Documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html) — it’s like your treasure map for the finer details.
!!!

## Step 3: Request Your Certificate

Time to give your domain the VIP treatment with a shiny new certificate! Here’s how to get it done:

1. Log in to the AWS Management Console and search for **Certificate Manager** in the Services menu — your gateway to secure greatness.

2. Click on <span class="text-orange">**Request**</span>. Think of it as applying for your domain’s golden ticket to the secure web.

<p><img src="/static/images/common/certificate/request-certificate.jpg" alt="Request Certificate" style="width: 80%;"></p>

3. Choose **Request a public certificate** and click <span class="text-orange">**Next**</span>.

<p><img src="/static/images/common/certificate/request-certificate-type.jpg" alt="Certificate Type" style="width: 80%;"></p>

4. Enter your domain name (e.g., `example.com`). Want to cover all your bases? Use `*.example.com` to secure subdomains too!

<p><img src="/static/images/common/certificate/request-certificate-name.jpg" alt="Certificate Name" style="width: 80%;"></p>

5. Pat yourself on the back and click <span class="text-orange">**Next**</span>. Your certificate request is in motion!

## Step 4: Add a CDN

Let’s give your site some turbo-charged speed and global reach by setting up a CDN. Here’s how:

{% tabs %}

{% tab title="Cloudformation" %}

1. Hit the launch button below and let CloudFormation weave its wizardry.

<a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=drupal-cdn&templateURL=https://drupal-release.s3.us-east-1.amazonaws.com/cloudformation/cloudfront-drupal.yaml" rel="noopener noreferrer" target="_blank" class="btn-orange-lg mb-2">LAUNCH CDN<span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>

!!!
**Heads Up:** If you’re not in `us-east-1`, adjust the region in the AWS console menu to match where you are.
!!!

<p><img src="/static/images/tutorials/drupal/drupal-create-stack-cdn.jpg" alt="Drupal Pro CDN Create Stack" style="width: 90%;"></p>

2. Whether you go bold or keep it classic, ensure your stack name is 1–128 characters, starts with a letter, and avoids symbols.

<p><img src="/static/images/tutorials/drupal/drupal-cdn-stack-name.jpg" alt="Drupal Pro CDN Create Stack" style="width: 50%;"></p>

3. Provide key details like your domain name, certificate ARN, and CMS DNS. Don’t worry—the setup wizard will lead the way!

<p><img src="/static/images/tutorials/drupal/drupal-cdn-stack-parametes.jpg" alt="Drupal Pro CDN Parameters" style="width: 50%;"></p>

Name   | Description
---    | ---
Domain Name | Fully qualified domain name used to host your Drupal CMS.
Drupal backend Endpoint | The Drupal DNS or IP used to login. To find the DNS navigate to **EC2,** click on the respective instance and copy the **Public IPv4 DNS.**
CloudFront Certificate ARN | The AWS Certification Manager certificate ARN for the CloudFront distribution certificate. To find the certificate navigate to **Certificate Manager,** click on the respective domain name and copy the **ARN.**
Backend listening on https or http? | Select between http or https.

4. **Advanced Options & Tags:** Optional but useful for organizing resources.

<p><img src="/static/images/quickstart/stack-advanced.jpg" alt="WordPress Pro advanced options" style="width: 50%;"></p>

5. **Review & Submit:** Double-check everything and hit <span class="text-orange">**Submit**</span>.

{% endtab %}

{% endtabs %}

## Step 5: Point Your Domain

Plant Your Flag Online with Route 53.

1. Open the AWS Management Console and search for **Route 53** in the Services menu.

2. Once there, click on <span class="text-orange">**Create Record**</span>.

3. Set up your record by adding your subdomain (e.g., `www` for `www.example.com`), selecting **A - Routes traffic to an IPv4 address** as the record type, enabling **Alias**, and linking it to your CloudFront distribution.

<p><img src="/static/images/tutorials/wordpress/create-record.jpg" alt="WordPress Pro CDN Stack" style="width: 90%;"></p>

Name   | Description
---    | ---
Record Name | Enter the subdomain name but without the domain name. For example, to route traffic for www.example.com, enter only **www**.
Record Type | Choose the applicable DNS record type. Select **A - Routes traffic to an IPv4 address and some AWS resources**.
Alias | Enable **Alias** to show more options.
Route traffic to | Select **Alias to CloudFront distribution**.
Choose distribution | Select the corresponding CloudFront distribution.
Routing policy | Select **Simple routing**.

!!!
**Pro Tip:** Double-check the correct CloudFront distribution by matching its domain name in the CloudFront dashboard.
!!!

## Step 6: Dive into Your Website

It's time to unlock your Drupal dashboard and bring your website to life! Here's how:

1. Open **CloudFormation** from the search bar in your AWS Management Console.

2. Select your Drupal stack from the list.

3. Go to the **Outputs** tab, where you'll find all the essential details. Copy the **AdminUrl** value—this is your entry point

<!-- <p><img src="/static/images/wordpress/wordpress-stack-outputs.jpg" alt="WordPress Pro Stack Outputs" style="width: 62%;"></p> -->

4. Open your favorite browser, paste the AdminUrl, and discover your Drupal front-end site in action.

!!!
**Pro Tip:** For full access to the admin panel, add `/user/login` to your URL and log in with the credentials found in the Outputs tab. It’s your personal gateway to the Drupal backend.
!!!

**You're all set!** Start customizing, creating, and shaping the site of your dreams. Your digital adventure begins now!

<hr>

**Congratulations, you're all set!** Your website is now optimized for peak performance—secure, ultra-fast, and packed with the essential tools to shine in the digital world. From the polished SSL certificate to the speedy CDN, you've built a rock-solid foundation that will impress and engage your visitors. It's time to make your mark on the web!

<!-- <p><img src="/static/images/tutorials/wordpress/wordpress-website.jpg" alt="WordPress Pro Website" style="width: 90%;"></p> -->