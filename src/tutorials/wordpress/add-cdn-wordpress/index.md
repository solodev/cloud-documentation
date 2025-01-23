Welcome to Part 2 of your WordPress website journey! In this section, we’ll explore the power of a Content Delivery Network (CDN). A CDN is a network of servers spread across the globe, designed to deliver your website’s content faster by storing copies of it closer to your visitors. This means they won’t have to wait as long for your site to load. By adding a CDN to your WordPress site, you'll boost load times, enhance security, and ensure smooth performance for your audience. It’s an essential tool for anyone looking to improve site speed and user experience!

## Request your certificate

First, let’s make your site secure. An SSL/TLS certificate protects your website by encrypting information between your site and visitors. It also shows a “padlock” in the browser to let users know your site is safe. Let’s get that certificate set up!

1. Pop into the AWS Management Console and search for **Certificate Manager** in the Services menu.

2. Click on <span class="text-orange">**Request**</span> — think of it as applying for your domain's VIP pass.

<p><img src="/static/images/common/certificate/request-certificate.jpg" alt="Request Certificate" style="width: 80%;"></p>

3. Select **Request a public certificate** and hit <span class="text-orange">**Next**</span>.

<p><img src="/static/images/common/certificate/request-certificate-type.jpg" alt="Certificate Type" style="width: 80%;"></p>

4. Drop in your domain name (e.g., `example.com`). Want to cover all your subdomains? Use `*.example.com` for wildcard coverage.

<p><img src="/static/images/common/certificate/request-certificate-name.jpg" alt="Certificate Name" style="width: 80%;"></p>

5. Give yourself a high-five and hit <span class="text-orange">**Next**</span>.

## Add a CDN

Time to give your site some turbo-charged speed with a Content Delivery Network (CDN).

### Step 1: Create stack

Click the button below and let CloudFormation work its magic.

<a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=wordpress-cdn&templateURL=https://wordpress-release.s3.us-east-1.amazonaws.com/cloudformation/cloudfront-wordpress.yaml" rel="noopener noreferrer" target="_blank" class="btn-orange-lg mb-2">LAUNCH CDN<span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>

!!!
**Heads Up:** If you’re not in `us-east-1`, adjust the region in the AWS console menu to match where you are.
!!!

<p><img src="/static/images/tutorials/wordpress/wordpress-create-stack-cdn.jpg" alt="WordPress Pro CDN Create Stack" style="width: 90%;"></p>

### Step 2: Name your stack & add details

Pick a name that works for you—whether it’s fun, simple, or somewhere in between. Just make sure it’s between 1–128 characters, begins with a letter, and doesn’t include any special characters.

<p><img src="/static/images/tutorials/wordpress/wordpress-cdn-stack-name.jpg" alt="WordPress Pro CDN Create Stack" style="width: 50%;"></p>

### Step 3: Customize your settings

Add details like your domain name, certificate ARN, and CMS DNS. The wizard will guide you here.

<p><img src="/static/images/tutorials/wordpress/wordpress-cdn-stack-parametes.jpg" alt="WordPress Pro CDN Parameters" style="width: 50%;"></p>

Name   | Description
---    | ---
CloudFront Certificate ARN | The AWS Certification Manager certificate ARN for the CloudFront distribution certificate. To find the certificate navigate to **Certificate Manager,** click on the respective domain name and copy the **ARN.**
Website Domain Name | The domain name of the Wordpress website (e.g. example.com).
CMS DNS Name | The Wordpress DNS or IP used to login. To find the DNS navigate to CloudFormation, locate your WordPress instance,  click on the Outputs tab, and copy the **AdminUrl.**

### Step 4: Configure stack options

Optional but useful for organizing resources.

<p><img src="/static/images/quickstart/stack-advanced.jpg" alt="WordPress Pro advanced options" style="width: 50%;"></p>

### Step 5: Review and create

Double-check everything and hit <span class="text-orange">**Submit**</span>.

## Update Record

1. Go to **Route 53** by searching for it in the Services menu.

2. Under **Hosted Zones**, select the domain you created earlier.

3. Select your domain and click on <span class="text-orange">**Edit Record**</span>.

<!-- <p><img src="/static/images/common/route-53/create-record-bar.jpg" alt="WordPress Pro create record bar" style="width: 90%;"></p> -->

4. Update the **Record Type** to **A - Routes traffic to an IPv4 address and some AWS resources**

5. Enable **Alias** and link it to your CloudFront distribution.

!!!
**Pro Tip:** Confirm the correct CloudFront distribution by matching its domain name in the CloudFront dashboard.
!!!

6. Under **Route traffic to** select **Alias to CloudFront distribution**.

7. Select the corresponding CloudFront distribution.

8. Click  <span class="text-orange">**Save**</span> and allow about 60 seconds for the changes to take effect.

## Access your CMS

Now it's time to log into your WordPress dashboard and start building your website! Here's how:

1. Open your browser and paste the WebsiteURL to see your WordPress front-end website live.

2. For full control simply add `/wp-admin` to your URL and log in using the credentials listed in the Outputs tab.

<hr>

**Congratulations, you did it!** Your website is now fully optimized — blazing fast, secure, and equipped with all the tools to stand out in the digital world. With your sleek SSL certificate and lightning-fast CDN, you have built a solid foundation to impress and engage your visitors. Now it's time to start customizing, creating, and bringing your vision to life. Get ready to take on the internet!


<!-- ## Access your CMS

Now it’s time to log into your WordPress dashboard and start building your website! Here’s how: -->

<!-- 1. Log in to **WordPress**. Head to your WordPress dashboard—your site’s command center.

<p><img src="/static/images/wordpress/wordpress-login-screen.jpg" alt="WordPress Login Screen" style="width: 25%;"></p>

2. Navigate to **Settings**. This is your control panel for all the important tweaks.

3. In the **WordPress Address (URL)** and **Site Address (URL)** fields, replace the IP address with your shiny new domain name (e.g.,`https://www.example.com`).

<p><img src="/static/images/tutorials/wordpress/wordpress-settings.jpg" alt="WordPress Settings" style="width: 82%;"></p>

4. Click <span class="text-blue">**Save Changes**</span>.

5. Voilà! Your WordPress is now accessible through your custom FQDN. -->

<!-- <p><img src="/static/images/tutorials/wordpress/wordpress-website.jpg" alt="WordPress Pro Website" style="width: 90%;"></p> -->