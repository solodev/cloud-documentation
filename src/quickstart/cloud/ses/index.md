#

<div class="header">
  <div class="inner">
    <img src="/static/images/logos/ses-logo.png" alt="SES Logo">
    <div>
      <h1 style="color: #222;">SES</h1>
      <p style="padding-left: 2rem; margin-bottom: 0; color: #222;">Flexible, scalable, and cost-effective email service.</p>
    </div>
  </div>
</div>

Amazon Simple Email Service (SES) is a reliable, scalable email service that enables applications like Solodev CMS to send transactional notifications — such as user registration and password reset emails. This guide walks you through configuring AWS SES to relay email from your CMS using your verified domain.

!!!info Note
SES starts in "sandbox mode" and can only send emails to verified addresses until you request and receive production access.
!!!

## Prerequisites
- Have an active [AWS Account](/quickstart/cloud/aws).
- Access to manage DNS records for your domain.
- Administrator access to [Solodev CMS](https://cms.solodev.net/quickstart/) if you plan to configure SES for email delivery within your instance.

## Step-by-Step Setup Guide

{% tabs %}

{% tab title="Step 1: Setup domain identity" %}

**Create the domain identity:**

1. In the **AWS Management Console**, go to **Amazon SES**.

2. Click **Get set up** and then select **Create Identity** under Verify sending domain.

3. Choose **Domain** as the identity type.

4. Enter your domain name (for example: `example.com`).

5. Under Easy DKIM, select **RSA_2048_BIT**.

6. Scroll to the bottom and click <span class="text-orange">**Create Identity**</span>.

**Verify domain ownership:**

1. In your newly created Domain Identity, go to the **Authentication** tab.

2. Copy the CNAME records provided by AWS (typically 3 records for DKIM).

3. Add these CNAME records to your domain's DNS settings wherever your DNS is managed (e.g., Route 53, Cloudflare, GoDaddy).

4. Wait for AWS to verify the records. Verification status can be checked in the Domain Identity details page or the main SES dashboard.

!!!warning Important
This verification may take anywhere from a few minutes to several hours. Your domain must be verified before you can send emails.
!!!

{% endtab %}

{% tab title="Step 2: Create SMTP credentials" %}

1. In Amazon SES, go to **SMTP settings** and click **Create SMTP credentials** in the upper right corner. This will create a new IAM user with permissions to send emails via SES.

2. Keep the default permission policy and click **Create user**.

3. Copy the **Access Key** and **Secret Token** — these are your SMTP username and password.

!!!warning Important
Save these credentials securely. You won't be able to retrieve the secret token again after this step.
!!!

{% endtab %}

{% tab title="Step 3: Configure & go live" %}

**Configure your email service:**

If you're using Solodev CMS, configure email delivery with your SES credentials:

1. In Solodev CMS, go to **Settings** → **Email**.

2. Enter the following configuration:

**Setting** | **Value** 
:--- | ---
Email From Address | Any email using your verified domain (e.g., `noreply@example.com`)
SMTP Host | `email-smtp.us-east-1.amazonaws.com`
Port | `587`
SMTP Username | Access Key (from Step 2)
SMTP Password | Secret Token (from Step 2)

3. Save the settings and send a test email to confirm the connection works.

!!!info Alternative Services
If you're not using Solodev, you can configure these SMTP settings in any email client or application that supports SMTP authentication.
!!!

**Request production access:**

Before SES can send live emails to any recipient, you must request production access:

1. In Amazon SES, click **Request production access**.

2. Complete the form with the following details:
   - **Mail type:** Select the appropriate type (Transactional, Marketing, or both)
   - **Website URL:** Your domain or application URL
   - **Use case description:** Explain your intended use


3. In the **Use case details**, describe your intended use. Be clear about:
   - The type of emails you'll send (transactional, marketing, or both)
   - Your typical email volume
   - How recipients are added to your mailing list
   - How you handle bounces and complaints

!!!tip Tip
Focus on demonstrating that you follow email best practices and won't use SES for spam. Mention if emails are transactional (password resets, notifications) vs. marketing (newsletters, promotions).
!!!

4. Submit the form and wait for AWS to review your request.

5. Once approved (typically within 24-48 hours), your domain will be able to send production emails to any recipient.

{% endtab %}

{% endtabs %}

## Additional Resources

- [AWS SES Documentation](https://docs.aws.amazon.com/ses/)
- [Solodev Email Settings](https://cms.solodev.net/admin/settings/config/#email)
- [AWS SES Pricing](https://aws.amazon.com/ses/pricing/)

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
  .dark .pluggable .rounded-t a.text-gray-500 {
    color: #fff;
  }
</style>