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

## Installation

1. Go to **reCAPTCHA** and login to your account. If you don't have one, [create a new account](https://www.google.com/recaptcha/admin).

2. Click the plus icon to **Create** a new project.

3. Enter a label for your project. 

4. Select **"Score Based (v3)"** as the reCAPTCHA type.

5. Add your domain under **"Domain"**.

6. Click <span class="text-blue">**Submit**</span>.

7. On the next screen, copy and save the **Site Key** and **Secret Key** for future use.

<!-- <p><img src="/static/images/swiftype/swiftype-install-search.jpg" alt="Swiftype Install Search" style="width: 20%;"></p> -->

{% tabs %}

{% tab title="CMS Settings" %}

1. Log in to **Solodev CMS**.

2. From the left navigation, go to **Settings** and then **Config**.

3. Open the **Google** Accordion.

4. Paste the **Site** and **Secret Keys** you previously received.

5. Click <span class="text-blue">**Submit**</span>.

{% endtab %}

{% tab title="CMS Form" %}

To enable reCAPTCHA on your form:

1. Go to the form you want to enable reCAPTCHA.

2. Click **Modify** on the actions bar.

3. On the Modify modal, open the Advanced Accordion.

4. Click the **"Enable reCAPTCHA"** checkbox.
 
5. Click <span class="text-blue">**Submit**</span>.

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