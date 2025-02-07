Welcome to Part 2 of your Drupal website journey! In [Part 1](/tutorials/drupal/launch-drupal-website-in-aws/), we deployed Drupal on AWS. Now, we’ll take the next step in boosting your site's performance and security by integrating a Content Delivery Network (CDN). A CDN accelerates content delivery by caching your website on servers around the globe, providing faster load times for visitors everywhere. Let’s dive into optimizing your Drupal site for an enhanced user experience and increased protection!

## Request your certificate

First, let’s make your site secure. An SSL/TLS certificate protects your website by encrypting information between your site and visitors. It also shows a “padlock” in the browser to let users know your site is safe. Let’s get that certificate set up!

1. Pop into the AWS Management Console and search for **Certificate Manager** in the Services menu.

2. Click on <span class="text-orange">**Request**</span> — think of it as applying for your domain's VIP pass.

<p><img src="/static/images/common/certificate/request-certificate.jpg" alt="Request Certificate" style="width: 80%;"></p>

3. Select **Request a public certificate** and hit <span class="text-orange">**Next**</span>.

<p><img src="/static/images/common/certificate/request-certificate-type.jpg" alt="Certificate Type" style="width: 80%;"></p>

4. Drop in your domain name (e.g., `example.com`). 

5. Click on **Add another name for this certificate** and add your domain with `*.` in front like (e.g., `*.example.com`).

<p><img src="/static/images/common/certificate/domain-names.jpg" alt="Domain names" style="width: 80%;"></p>

5. Hit <span class="text-orange">**Next**</span>.

6. Click **Create records in Route 53** to validate your domain.

<p><img src="/static/images/common/certificate/create-record-domain.jpg" alt="Create records in Route 53 action bar" style="width: 80%;"></p>

7. You will see your domain(s) here. Just hit the <span class="text-orange">**Create record(s)**</span> button.

<p><img src="/static/images/common/certificate/create-dns.jpg" alt="Create DNS in Route 53 action bar" style="width: 80%;"></p>

8. AWS is in the process of generating your certificate. This may take about 10 minutes.

## Add a CDN

Time to give your site some turbo-charged speed with a Content Delivery Network (CDN).

### Step 1: Create stack

Click the button below and let CloudFormation work its magic.

<a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=drupal-cdn&templateURL=https://drupal-release.s3.us-east-1.amazonaws.com/cloudformation/cloudfront-drupal.yaml" rel="noopener noreferrer" target="_blank" class="btn-orange-lg mb-2">LAUNCH CDN<span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>

!!!
**Heads Up:** If you’re not in `us-east-1`, adjust the region in the AWS console menu to match where you are.
!!!

<p><img src="/static/images/tutorials/drupal/drupal-create-stack-cdn.jpg" alt="Drupal Pro CDN Create Stack" style="width: 90%;"></p>

### Step 2: Name your stack & add details

Pick a name that works for you—whether it’s fun, simple, or somewhere in between. Just make sure it’s between 1–128 characters, begins with a letter, and doesn’t include any special characters.

<p><img src="/static/images/tutorials/drupal/drupal-cdn-stack-name.jpg" alt="Drupal Pro CDN Create Stack" style="width: 50%;"></p>

### Step 3: Customize your settings

Add details like your domain name, certificate ARN, and CMS DNS. The wizard will guide you here.

<p><img src="/static/images/tutorials/drupal/drupal-cdn-stack-parametes.jpg" alt="Drupal Pro CDN Parameters" style="width: 50%;"></p>

Name   | Description
---    | ---
Domain Name | Fully qualified domain name used to host your Drupal CMS.
Drupal backend Endpoint | The Drupal DNS or IP used to login. To find the DNS navigate to **EC2,** click on the respective instance and copy the **Public IPv4 DNS.**
CloudFront Certificate ARN | The AWS Certification Manager certificate ARN for the CloudFront distribution certificate. To find the certificate navigate to **Certificate Manager,** click on the respective domain name and copy the **ARN.**
Backend listening on https or http? | Select between http or https.

### Step 4: Configure stack options

Optional but useful for organizing resources.

<p><img src="/static/images/quickstart/stack-advanced.jpg" alt="Drupal Pro advanced options" style="width: 50%;"></p>

### Step 5: Review and create

Double-check everything and hit <span class="text-orange">**Submit**</span>.

## Update Record

1. Go to **Route 53** by searching for it in the Services menu.

2. Under **Hosted Zones**, select the domain you created earlier.

3. Select your domain and click on <span class="text-orange">**Edit Record**</span>.

4. Update the **Record Type** to **A - Routes traffic to an IPv4 address and some AWS resources**

5. Enable **Alias**.

6. Under **Route traffic to** select **Alias to CloudFront distribution**.

7. Select the corresponding CloudFront distribution.

8. Click <span class="text-orange">**Save**</span> and allow about 60 seconds for the changes to take effect.

!!!
**Pro Tip:** Confirm the correct CloudFront distribution by matching its domain name in the CloudFront dashboard.
!!!

## Access your CMS

Now it's time to log into your Drupal dashboard and start building your website! Here's how:

1. Open your browser and paste the WebsiteURL to see your Drupal front-end website live.

2. For full control simply add `/user/login` to your URL and log in using the credentials listed in the Outputs tab.

<hr>

**Congratulations, you did it!** Your website is now fully optimized — blazing fast, secure, and equipped with all the tools to stand out in the digital world. With your sleek SSL certificate and lightning-fast CDN, you have built a solid foundation to impress and engage your visitors. Now it's time to start customizing, creating, and bringing your vision to life. Get ready to take on the internet!