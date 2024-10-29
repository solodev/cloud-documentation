#

<div class="header">
  <div class="inner">
    <img src="/static/images/logos/recaptcha-logo.png" alt="reCAPTCHA Logo">
    <div>
      <h1>reCAPTCHA</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Security service developed by Google to protect websites from spam and abuse.</p>
    </div>
  </div>
  <a href="https://www.google.com/recaptcha/admin" rel="noopener noreferrer" target="_blank" style="background-color: #f99700; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;">SIGN UP <span style="padding-left: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>
</div>

reCAPTCHA uses advanced algorithms and behavioral analysis to distinguish between humans and bots, enhancing online security. It offers different verification methods, including image challenges and invisible detection, to create a smoother user experience while keeping automated attacks at bay.

## Prerequisites
- Preexisting [website](https://cms.solodev.net/workspace/websites/).
- Preexisting [Google Account](https://accounts.google.com/).

## Billing Information

Before installing reCAPTCHA, you will need a Google Account to set up your billing information.

1. Go to the [Google Cloud Console](https://console.cloud.google.com/). If you don't have a Google Account, [create a new account](https://accounts.google.com/signup).

2. Log in with the Google account associated with your reCAPTCHA project.

3. From the navigation menu, go to **Billing**.

<p><img src="/static/images/recaptcha/billing-nav.jpg" alt="Google console navigation" style="width: 23%;"></p>

4. Link an existing **Billing Account** or create a new one by clicking **Manage Billing Accounts**.

<p><img src="/static/images/recaptcha/billing.jpg" alt="Google console billing" style="width: 30%;"></p>

### Manage Billing Accounts

1. Select **Create Account**.

<p><img src="/static/images/recaptcha/create-account.jpg" alt="Google console Create Account" style="width: 30%;"></p>

2. Name your billing account and select your country and click **Agree & Continue**.

<p><img src="/static/images/recaptcha/account-info-1.jpg" alt="Google console Account Information Step 1" style="width: 30%;"></p>

6. Select your payment method and add your credit card or bank account details. Once completed, click **Submit and Enable Billing**.

<p><img src="/static/images/recaptcha/account-info-2.jpg" alt="Google console Account Information Step 2" style="width: 23%;"></p>

## Installation

1. Go to **reCAPTCHA** and login to your account.

2. Click the plus icon to **Create** a new project.

<p><img src="/static/images/recaptcha/recaptcha-create.jpg" alt="reCAPTCHA create" style="width: 20%;"></p>

3. Enter a label for your project.

<p><img src="/static/images/recaptcha/recaptcha-project-form.jpg" alt="reCAPTCHA form" style="width: 35%;"></p>

4. Select **"Score Based (v3)"** as the reCAPTCHA type.

5. Add your domain under **"Domain"**.

6. Click <span class="text-blue">**Submit**</span>.

### Site and Secret Keys

1. On the next screen, copy and save the **Site Key** and **Secret Key** for future use.

<p><img src="/static/images/recaptcha/recaptcha-keys.jpg" alt="reCAPTCHA keys" style="width: 50%;"></p>

### Setup on CMS

{% tabs %}

{% tab title="CMS Settings" %}

1. Log in to **Solodev CMS**.

<img src="/static/images/quickstart/login-screen.jpg" alt="Solodev CMS Login Screen" style="width: 50%;">

2. From the left navigation, go to **Settings** and then **Config**.

<img src="/static/images/recaptcha/solodev-config-left-nav.jpg" alt="Solodev CMS Config Left Nav" style="width: 14%; margin-bottom: 1rem;">

3. Open the **Google** Accordion.

<img src="/static/images/recaptcha/solodev-recaptcha-keys.jpg" alt="Solodev CMS Config reCAPTCHA" style="width: 90%; margin-bottom: 1rem;">

4. Paste the **Site** and **Secret Keys** you previously received.

5. Click <span class="text-blue">**Submit**</span>.

{% endtab %}

{% tab title="CMS Form" %}

To enable reCAPTCHA on your form:

1. Go to the form you want to enable reCAPTCHA.

2. Click **Modify** on the actions bar.

<img src="/static/images/recaptcha/solodev-form-modify.jpg" alt="Solodev CMS Form Modify" style="width: 60%; margin-bottom: 1rem;">

3. On the Modify modal, open the Advanced Accordion.

4. Click the **"Enable reCAPTCHA"** checkbox.

<img src="/static/images/recaptcha/solodev-form-modify-advanced.jpg" alt="Solodev CMS Form Modify Advanced" style="width: 50%; margin-bottom: 1rem; display: block;">

5. Click <span class="text-blue">**Submit**</span>.

6. Go to your form code and add the following shortcode:

```js
[recaptcha id="1"]
```

!!!Note:
Update the ID number with your ID form.
!!!

{% endtab %}

{% endtabs %}

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
</style>