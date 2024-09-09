#

<div class="header">
  <div class="inner">
    <img src="/static/images/logos/swiftype-logo.svg" alt="Swiftype Logo">
    <div>
      <h1>Swiftype</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Create custom search experiences to drive sales and conversions.</p>
    </div>
  </div>
  <a href="https://app.swiftype.com/signup" rel="noopener noreferrer" target="_blank" style="background-color: #f99700; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;">SIGN UP <span style="padding-left: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>
</div>

Fast, relevant and powerful search experience for your website or custom application — without the learning curve. Sell more and get the right answers to more people on your platform.

## Prerequisites
- Preexisting [website](https://cms.solodev.net/workspace/websites/).

## Installation

1. Go to **Swiftype** and login to your account. If you don't have one, [create a new account](https://app.swiftype.com/signup).

2. Click **Create Engine**.

3. Add your website URL or a path.

4. Click **Verify URL**.

<p><img src="/static/images/swiftype/swiftype-create-engine.jpg" alt="Swiftype create engine" style="width: 50%;"></p>

5. Name your **Engine** something descriptive and select a **Language**.

<p><img src="/static/images/swiftype/swiftype-name-engine.jpg" alt="Swiftype name engine" style="width: 30%;"></p>

6. Click **Create Engine**.

<p><img src="/static/images/swiftype/swiftype-success-message.jpg" alt="Swiftype success message" style="width: 50%;"></p>

7. Click **Complete Setup**.

8. Look for **Setup and integration** at the bottom of the page and click on **Install Search**.

<p><img src="/static/images/swiftype/swiftype-install-search.jpg" alt="Swiftype Install Search" style="width: 20%;"></p>

{% tabs %}

{% tab title="Manual" %}

1. Copy the code snippet provided.

<p><img src="/static/images/swiftype/swiftype-snippet.jpg" alt="Swiftype code snippet" style="width: 55%;"></p>

2. Paste the code between the `<body>` HTML tags on every page of your website that you would like Swiftype's embedded options to appear.

{% endtab %}
{% tab title="Tag Manager" %}

1. Copy the code snippet provided.

<p><img src="/static/images/swiftype/swiftype-snippet.jpg" alt="Swiftype code snippet" style="width: 55%;"></p>

2. Go to **Google Tag Manager** and log in.

3. Select the container for the website where you want to add Swiftype.

4. Click on **"Tags"** in the left sidebar.

5. Then, click the **New** button to create a new tag.

<p><img src="/static/images/tag-manager/gtm-new-tag.jpg" alt="Google Tag Manager New Tag" style="width: 60%;"></p>

6. Name your tag something descriptive, like **"Swiftype Search Integration"**.

7. Choose **Tag Configuration** and select **Custom HTML**.

8. Paste the Swiftype snippet.

9. Click on **"Triggering"**. Select **All Pages** if you want the search script to be available on every page of your website.

<p><img src="/static/images/tag-manager/gtm-new-tag-all-pages.jpg" alt="Google Tag Manager All Pages Trigger" style="width: 60%;"></p>

!!!Note:
Alternatively, you can choose a specific trigger, like only firing on a particular page (e.g., a search results page).
!!!

10. Click <span class="text-orange">**Save**</span>.

11. Use the [**"Preview"** mode](https://support.google.com/tagmanager/answer/6107056) in Google Tag Manager to check if the tags are firing correctly, or use the Google Tag Assistant extension in your browser to verify the installation.

<p><img src="/static/images/tag-manager/gtm-preview.jpg" alt="Google Tag Manager Preview" style="width: 32%;"></p>

12. Click <span class="text-orange">**Publish**</span>.

{% endtab %}

{% endtabs %}

9. Go to the HTML where you have your search form.

10. On the input field, add the following class: `st-default-search-input`.

```js
<form>
  <input type="text" class="st-default-search-input" />
</form>
```

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