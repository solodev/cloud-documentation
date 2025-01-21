Welcome to your next big adventure! In this first part, we’ll focus on launching your WordPress CMS—the heart and soul of your website. This is where your journey begins, as we set up the foundation that will power your content, engage your audience, and bring your vision to reality!

## Launch WordPress Pro

The first thing you need to do is to head over to the [AWS Marketplace](https://aws.amazon.com/marketplace/pp/prodview-l5326ck4qjosk?sr=0-4&ref_=beagle&applicationId=AWSMPContessa) and hit that <span class="text-orange">**Subscribe**</span> button. It’s like claiming your spot on the WordPress rocket. Then, come back here, and we’ll guide you through the next steps of your journey!

To launch an instance, follow the CloudFormation Guide. Solodev makes it super simple — just click the Launch button below.

<a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=wordpress-pro&templateURL=https://wordpress-release.s3.amazonaws.com/cloudformation/wordpress-pro-linux.yaml" rel="noopener noreferrer" target="_blank" class="btn-orange-lg mb-2">LAUNCH WORDPRESS <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>

### Step 1: Create stack

Your CloudFormation template is locked and loaded — just click <span class="text-orange">**Next**</span> to kick things off.

### Step 2: Name Your Stack & Add Details

Give your stack a name (get creative or keep it simple), then fill in the setup parameters.

### Step 3: Fine-Tune Your Settings

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
**Pro tip:** Take a deep breath and relax—this part’s a breeze, but a little patience goes a long way!
!!!

## Access your WordPress instance

Once your stack is up and running, it’s time to explore! Head to the **Outputs** tab, find the **AdminURL**, and click or copy it. Paste it into your browser, and there you go — your website is live and ready for action!

<hr>

**Congrats on launching your WordPress CMS!** You've laid the foundation for an amazing website. With your CMS live and ready, it's time to take things to the next level.

In [Part 2](/tutorials/add-wordpress-website-part-2/), we’ll guide you through configuring your domain, securing your site with an SSL/TLS certificate, and boosting performance with a lightning-fast CDN. These steps will help ensure your website is not just functional but also secure, speedy, and polished.