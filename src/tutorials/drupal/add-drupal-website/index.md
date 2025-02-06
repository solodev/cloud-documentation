Excited to bring your own Drupal-powered website to life? This guide will walk you through the steps of **creating a hosted zone** to establish your domain, **launching Drupal**, **connecting your domain**, and finally, **accessing your Drupal instance** to start building your site. Let’s get started!

## Create a hosted zone

Now’s your chance to carve out your space in the digital landscape! Using AWS Route 53, we'll get your domain set up and ready to roll.

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

## Launch Drupal Pro

The first step is straightforward — visit the [AWS Marketplace](https://aws.amazon.com/marketplace/pp/prodview-l5326ck4qjosk?sr=0-4&ref_=beagle&applicationId=AWSMPContessa) and click that <span class="text-orange">**Subscribe**</span> button.Think of it as reserving your spot on the Drupal express, ready to take you to new digital heights. Once subscribed, head back here, and we’ll walk you through the next steps!

Eager to launch your Drupal instance? Follow the CloudFormation Guide. Solodev makes it easy — click the Launch button below, and let’s get rolling!

<a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=drupal-pro&templateURL=https://drupal-release.s3.amazonaws.com/cloudformation/drupal-pro-linux.yaml" rel="noopener noreferrer" target="_blank" class="btn-orange-lg mb-2">LAUNCH DRUPAL <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>


### Step 1: Create stack

Your CloudFormation template is locked and loaded — just click <span class="text-orange">**Next**</span> to kick things off.

<!-- <p><img src="/static/images/wordpress/wordpress-create-stack.jpg" alt="WordPress Pro Create Stack" style="width: 90%;"></p> -->

### Step 2: Name your stack & add details

Give your stack a name (get creative or keep it simple), then fill in the setup parameters.

<!-- <p><img src="/static/images/wordpress/wordpress-stack-name.jpg" alt="WordPress Pro stack name" style="width: 62%;"></p> -->

### Step 3: Fine-tune your settings

#### Network Settings:
Choose your VPCID, PublicSubnet1ID, PublicSubnet2ID, and KeyName from the dropdowns. Need a refresher? You can [learn more about these here](/quickstart/cms/drupal/#parameters).

<!-- <p><img src="/static/images/wordpress/wordpress-params-setup.jpg" alt="WordPress Pro params setup" style="width: 50%;"></p> -->

#### Drupal Settings:
Set up the essentials like your AdminPassword, DatabasePassword, WebsiteURL, and Webmaster. Think of this as laying the groundwork for your site’s security and accessibility.

<!-- <p><img src="/static/images/wordpress/wordpress-settings.jpg" alt="WordPress Pro Settings" style="width: 50%;"></p> -->

### Step 4: Configure stack options
This part is totally optional, so feel free to skip or explore as needed. If you’d like more details, [check out this guide](/quickstart/cms/drupal/#configure-stack-options). Once you're ready, acknowledge the AWS CloudFormation terms, and hit <span class="text-orange">**Next**</span> to set things in motion!

### Step 5: Review and create
Take a moment to review your settings and ensure everything looks good. Once you're confident, hit <span class="text-orange">**Submit**</span> — and just like that, you're on your way to launching your stack!

!!!
**Pro tip:** Take a deep breath and relax — this part’s a breeze, but a little patience goes a long way!
!!!

## Point your domain

It’s time to claim your corner of the web using Route 53. Follow these steps to connect your domain to your Drupal site:

1. Navigate to **Route 53** by searching for it in the Services menu.

2. Locate **Hosted Zones** and select the domain you created earlier.

3. Click <span class="text-orange">**Create Record**</span>.

<p><img src="/static/images/common/route-53/create-record-bar.jpg" alt="Drupal Pro create record bar" style="width: 90%;"></p>

4. Under **Record Name**, type the subdomain name (e.g., `www` for `www.example.com`). From the **Record Type** dropdown, select `CNAME - Routes traffic to another domain name and some AWS resources`, and in the **Value** box, paste the `AdminUrl` of your instance.

<p><img src="/static/images/common/route-53/create-record-cname.jpg" alt="Drupal Pro create record CNAME" style="width: 90%;"></p>

!!!
**Pro Tip:** Need the AdminUrl for your Drupal dashboard? Go to CloudFormation, locate your Drupal instance, and click on the Outputs tab.
!!!

## Access your Drupal instance

Once your stack is up and running, it’s time to explore! Head to your browser and paste your website URL — your Drupal site is live and ready for action!

!!!Note:
Ensure you use `http://` instead of `https://` when accessing your site.
!!!

In [Part 2](/tutorials/drupal/add-drupal-website/), we’ll focus on enhancing your site’s performance by adding a lightning-fast CDN. This step will supercharge your website, ensuring faster load times and an optimized user experience for visitors around the world.