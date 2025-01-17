Welcome to your next big adventure! Today, we’re diving into the steps to set up a WordPress website. We’ll begin with launching a  [WordPress CMS](/quickstart/cms/wordpress), followed by configuring your domain, securing it with an SSL/TLS certificate, and optimizing performance with a CDN.

## What You’ll Need

Before we begin, here’s your backpack checklist:

- An active [AWS account](/quickstart/cloud/aws/).
- Access to manage or to create your domain (through AWS Route 53 or another registrar).
- Sufficient permissions in your AWS account to create and manage resources.

Ready? Let’s hit the ground running!

## Step 1: Launch WordPress Pro

First up, we’re getting WordPress ready to roll on AWS.

1. Head over to the [AWS Marketplace](https://aws.amazon.com/marketplace/pp/prodview-l5326ck4qjosk?sr=0-4&ref_=beagle&applicationId=AWSMPContessa) and hit that <span class="text-orange">**Subscribe**</span> button. It’s like claiming your spot on the WordPress rocket.

2. Follow the CloudFormation Guide. Solodev makes it super simple — just follow [these steps](/quickstart/cms/wordpress/#launch-software).

!!!
**Pro tip:** Keep your coffee nearby — this part's a breeze, but it’s always good to be prepared.
!!!

## Step 2: Set Up Your Domain

Now it’s time to stake your claim in the vast wilderness of the internet. Here’s how to tame your domain using AWS Route 53.

1. Log in to your **AWS Management Console**.          

2. Type **Route 53** into the search bar in the Services menu — your trusty GPS for all things AWS.

3. In the Route 53 dashboard, click on **Hosted Zones** (your domain’s future home).

<p><img src="/static/images/common/route-53/route-53-hosted-zones-nav.jpg" alt="Route 53 Left Navigation" style="width: 15%;"></p>

4. Ready to build? Click **Create hosted zone** or choose an existing one if you’ve already started.

<p><img src="/static/images/common/route-53/create-hosted-zones.jpg" alt="Route 53 Create hosted zone" style="width: 80%;"></p>

5. In the **"Domain name"** field, type your chosen domain (e.g., example.com).

<p><img src="/static/images/common/route-53/hosted-zones-config.jpg" alt="Route 53 Domain name" style="width: 80%;"></p>

6. Select **Public hosted zone** because we are all about that public presence.

<p><img src="/static/images/common/route-53/hosted-zones-config-type.jpg" alt="Route 53 Type" style="width: 80%;"></p>

7. Click that glorious orange <span class="text-orange">**Create hosted zone**</span> button, and voilà!

**Congrats!** Your domain is now set up and ready for action.

!!!
**Pro Tip:** Want to dig deeper? The [AWS Route 53 Documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html) is your go-to treasure map for advanced configurations.
!!!

## Step 3: Request Your Certificate

Let’s kick things off by securing your domain with a sleek new certificate!

1. Pop into the AWS Management Console and search for **Certificate Manager** in the Services menu.

2. Click on <span class="text-orange">**Request**</span> — think of it as applying for your domain's VIP pass.

<p><img src="/static/images/common/certificate/request-certificate.jpg" alt="Request Certificate" style="width: 80%;"></p>

3. Select **Request a public certificate** and hit <span class="text-orange">**Next**</span>.

<p><img src="/static/images/common/certificate/request-certificate-type.jpg" alt="Certificate Type" style="width: 80%;"></p>

4. Drop in your domain name (e.g., `example.com`). Want to cover all your subdomains? Use `*.example.com` for wildcard coverage.

<p><img src="/static/images/common/certificate/request-certificate-name.jpg" alt="Certificate Name" style="width: 80%;"></p>

5. Give yourself a high-five and hit <span class="text-orange">**Next**</span>.

## Step 4: Add a CDN

Time to give your site some turbo-charged speed with a Content Delivery Network (CDN).

{% tabs %}

{% tab title="Cloudformation" %}

1. **Launch it:** Click the button below and let CloudFormation work its magic.

<a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=wordpress-cdn&templateURL=https://wordpress-release.s3.us-east-1.amazonaws.com/cloudformation/cloudfront-wordpress.yaml" rel="noopener noreferrer" target="_blank" class="btn-orange-lg mb-2">LAUNCH CDN<span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>

!!!
**Heads Up:** If you’re not in `us-east-1`, adjust the region in the AWS console menu to match where you are.
!!!

<p><img src="/static/images/tutorials/wordpress/wordpress-create-stack-cdn.jpg" alt="WordPress Pro CDN Create Stack" style="width: 90%;"></p>

2. **Name Your Stack:** Get creative—or keep it simple! Just make sure it’s 1–128 characters, starts with a letter, and skips the symbols.

<p><img src="/static/images/tutorials/wordpress/wordpress-cdn-stack-name.jpg" alt="WordPress Pro CDN Create Stack" style="width: 50%;"></p>

3. **Fill in Parameters:** Add details like your domain name, certificate ARN, and CMS DNS. The wizard will guide you here.

<p><img src="/static/images/tutorials/wordpress/wordpress-cdn-stack-parametes.jpg" alt="WordPress Pro CDN Parameters" style="width: 50%;"></p>

Name   | Description
---    | ---
CloudFront Certificate ARN | The AWS Certification Manager certificate ARN for the CloudFront distribution certificate. To find the certificate navigate to **Certificate Manager,** click on the respective domain name and copy the **ARN.**
Website Domain Name | The domain name of the Wordpress website (e.g. example.com).
CMS DNS Name | The Wordpress DNS or IP used to login. To find the DNS navigate to **EC2,** click on the respective instance and copy the **Public IPv4 DNS.**

4. **Advanced Options & Tags:** Optional but useful for organizing resources.

<p><img src="/static/images/quickstart/stack-advanced.jpg" alt="WordPress Pro advanced options" style="width: 50%;"></p>

5. **Review & Submit:** Double-check everything and hit <span class="text-orange">Submit</span>.

{% endtab %}

{% endtabs %}

## Step 5: Point Your Domain

Claim your corner of the web using Route 53.

1. Hop over to **Route 53** by searching for it in the Services menu.

2. Find Hosted Zones and click <span class="text-orange">**Create Record**</span>.

3. Enter the subdomain name (like `www` for `www.example.com`), choose A - Routes traffic to IPv4, enable Alias, and select your CloudFront distribution.

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
**Pro Tip:** Confirm the correct CloudFront distribution by matching its domain name in the CloudFront dashboard.
!!!

## Step 6: Dive into Your Website

It's time to unlock your WordPress dashboard and bring your website to life! Here's how:

1. Head over to **CloudFormation** by typing it into the search bar in your AWS Management Console.

2. Select your WordPress stack from the list.

3. Navigate to the **Outputs** tab, where you'll find all the golden nuggets of information. Copy the **AdminUrl** value—it's your gateway to greatness.

<p><img src="/static/images/wordpress/wordpress-stack-outputs.jpg" alt="WordPress Pro Stack Outputs" style="width: 62%;"></p>

4. Open your favorite browser, paste the AdminUrl, and bask in the glory of your WordPress front-end website.

!!!
**Pro Tip:** Want to take full control? Simply tack on `/wp-admin` to your URL and log in using the credentials listed in the Outputs tab. It's your backstage pass to the WordPress magic.
!!!

**You're in!** Now it's time to start customizing, creating, and building the site of your dreams. Your digital journey awaits!

<hr>

## Step 7: Use Your Fully Qualified Domain Name

Tired of typing an IP address to reach your site? Let’s make your Fully Qualified Domain Name (FQDN) the star of the show:

1. Log in to **WordPress**. Head to your WordPress dashboard—your site’s command center.

<p><img src="/static/images/wordpress/wordpress-login-screen.jpg" alt="WordPress Login Screen" style="width: 25%;"></p>

2. Navigate to **Settings**. This is your control panel for all the important tweaks.

3. In the **WordPress Address (URL)** and **Site Address (URL)** fields, replace the IP address with your shiny new domain name (e.g.,`https://www.example.com`).

<p><img src="/static/images/tutorials/wordpress/wordpress-settings.jpg" alt="WordPress Settings" style="width: 82%;"></p>

4. Click <span class="text-blue">**Save Changes**</span>.

5. Voilà! Your WordPress is now accessible through your custom FQDN.

Time to bookmark that URL and show it off!

<hr>

**Congratulations, you did it!** Your website is now fully optimized—blazing fast, secure, and equipped with all the tools to stand out in the digital world. Whether it's the sleek SSL certificate or the lightning-fast CDN, you've set up a solid foundation that will have your visitors impressed and engaged. Get ready to take on the internet!

<!-- <p><img src="/static/images/tutorials/wordpress/wordpress-website.jpg" alt="WordPress Pro Website" style="width: 90%;"></p> -->