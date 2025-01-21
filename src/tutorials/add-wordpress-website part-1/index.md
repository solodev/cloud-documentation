Ready to embark on the journey to your very own WordPress-powered website? In this guide, we’ll start by **creating a hosted zone** — staking your claim in the digital world. Then, we’ll move on to **launching WordPress**, **pointing your domain**, and finally, **accessing your WordPress instance** to bring your vision to life. Let’s dive in!

## Create a hosted zone

It’s time to stake your claim in the vast digital wilderness! Let’s use AWS Route 53 to make your domain official and get it ready for action.

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

!!!warning Note:
Once your hosted zone is created, make sure your domain is properly connected. Here’s what you’ll need to do:
- **For domains registered with another registrar:** Check out the guide on [Making Amazon Route 53 the DNS service for an existing domain](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html).
- **For domains registered with Route 53:** Follow the steps in [Adding or changing name servers and glue records for a domain](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-name-servers-glue-records.html).
!!!

!!!
**Pro Tip:** Want to dig deeper? The [AWS Route 53 Documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html) is your go-to treasure map for advanced configurations.
!!!

## Launch WordPress Pro

The first step is simple — head over to the [AWS Marketplace](https://aws.amazon.com/marketplace/pp/prodview-l5326ck4qjosk?sr=0-4&ref_=beagle&applicationId=AWSMPContessa) and click that <span class="text-orange">**Subscribe**</span> button. It's like securing your seat on the WordPress rocket ship, ready for takeoff. Once you're done, come right back here, and we’ll guide you through the next stages of your adventure!

Ready to launch your WordPress instance? Just follow the CloudFormation Guide. Solodev makes it a breeze — click the Launch button below, and let’s get started!

<a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=wordpress-pro&templateURL=https://wordpress-release.s3.amazonaws.com/cloudformation/wordpress-pro-linux.yaml" rel="noopener noreferrer" target="_blank" class="btn-orange-lg mb-2">LAUNCH WORDPRESS <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>

### Step 1: Create stack

Your CloudFormation template is locked and loaded — just click <span class="text-orange">**Next**</span> to kick things off.

### Step 2: Name your stack & add details

Give your stack a name (get creative or keep it simple), then fill in the setup parameters.

### Step 3: Fine-tune your settings

#### Network Settings:
Choose your VPCID, PublicSubnet1ID, PublicSubnet2ID, and KeyName from the dropdowns. Need a refresher? You can [learn more about these here](/quickstart/cms/wordpress/#parameters).

#### WordPress Settings:
Set up the essentials like your AdminPassword, DatabasePassword, WebsiteURL, and Webmaster. Think of this as laying the groundwork for your site’s security and accessibility.

#### SSO:
If you want to integrate Single Sign-On (SSO) for a smoother login experience, now’s your chance! While optional, this step can make managing access a breeze.

### Step 4: Configure stack options
This part is totally optional, so feel free to skip or explore as needed. If you’d like more details, [check out this guide](/quickstart/cms/wordpress/#configure-stack-options). Once you're ready, acknowledge the AWS CloudFormation terms, and hit <span class="text-orange">**Next**</span> to set things in motion!

### Step 5: Review and create
Take a moment to review your settings and ensure everything looks good. Once you're confident, hit <span class="text-orange">**Submit**</span> — and just like that, you're on your way to launching your stack!

!!!
**Pro tip:** Take a deep breath and relax — this part’s a breeze, but a little patience goes a long way!
!!!

## Point Your Domain

Claim your corner of the web using Route 53.

1. Hop over to **Route 53** by searching for it in the Services menu.

2. Find Hosted Zones and click <span class="text-orange">**Create Record**</span>.

3. Enter the subdomain name (like `www` for `www.example.com`), choose CNAME, and paste your IP.

<p><img src="/static/images/tutorials/wordpress/create-record.jpg" alt="WordPress Pro CDN Stack" style="width: 90%;"></p>

Name   | Description
---    | ---
Record Name | Enter the subdomain name but without the domain name. For example, to route traffic for www.example.com, enter only **www**.
Record Type | Choose the applicable DNS record type. Select **CNAME - Routes traffic to another domain name and some AWS resources**.
Value | Paste the **IPv4 address**. To find the DNS navigate to **EC2,** click on the respective instance and copy the **Public IPv4 DNS.**

## Access your WordPress instance

Once your stack is up and running, it’s time to explore! Head to your browser and paste your website URL — your WordPress site is live and ready for action!

!!!Note:
If you're unsure of the URL you used for your stack, simply head to CloudFormation, click on the **Outputs** tab, locate the **WebsiteUrl**, and either click it or copy it to your browser.
!!!

In [Part 2](/tutorials/add-wordpress-website-part-2/), we’ll focus on enhancing your site’s performance by adding a lightning-fast CDN. This step will supercharge your website, ensuring faster load times and an optimized user experience for visitors around the world.