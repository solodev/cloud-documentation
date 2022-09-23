# Add Site

Adding a site to your org in Solodev Cloud is a simple process, and can be completed in minutes by following the steps below. 



## Step 1: Pick a Type

There are three types of sites to choose from when adding a new site.

<img src="../../../images/sites-add-site-pick-type.jpg" alt="site type drop-down menu" style="width: 50%; display: block"></a>

**CMS:** A CMS (Content Management System) lets your team create pages, build websites, publish content dynamically, and utilize data modules to streamline your content operations. With a CMS, you can manage users and groups with permissions on a site or even a page level, allowing you to control and collaborate with your team on digital experiences. There are several CMS options to choose from in Solodev Cloud, including Solodev CMS and WordPress.

**Static:** A static website uses server-side rendering to push pre-built HTML, CSS, and JavaScript files to a web browser. Static sites decouple your content repository from your front-end interface, giving you greater flexibility with minimal cost to host and maintain. Sites launched with Solodev Static can be built and managed using our simple <a href="/pages/pages/read/">drag-and-drop editor</a>.

**External:** In addition to launching a CMS or a static site via Solodev Cloud, you can connect an external site and manage your name, domain, login, and other variables within your Solodev Cloud account. 

---

## Step 2: Add Site

Once you have picked a type, follow the instructions below based on a CMS, static, or external site.

### Add CMS Site

When choosing to add a CMS site you will be presented with the "Add CMS Site" form. This form consists of five fields, four of which are required to generate your new site.

#### Name

In Solodev Cloud, naming your site is an easy way to help organize your deployments, particularly in a shared org. A name is composed of two parts: a unique prepend title (such as "mysite") and a valid domain (such as "solodev.com"). 

On your sites dashboard, each card will be appear with its corresponding name in this format: mysite.solodev.com

First, add your prepend name in the blank field to the left.

Next, select a domain from the drop-down menu on the right to associate with your site. Remember that you will have to point your DNS server to this address prior to launch. If you do not currently have a domain name, you can choose the "<a href="/infrastructure/domains/add/">Add Domain</a>" option from the drop-down menu.

><img src="../../../images/sites-add-site-name-domain.jpg" alt="enter a name and domain for your site" style="width: 70%; display: block"></a>

!!!Please Note:
A valid <a href="/infrastructure/domains/">domain name</a> is required to proceed to the next step.
!!!


#### Time Zone

Select the appropriate time zone for your website from the drop-down menu.

><img src="../../../images/sites-add-site-cms-timezone.jpg" alt="select time zone from drop-down" style="width: 70%; display: block"></a>


#### CMS

Choose a CMS from the drop-down menu. For a CMS to be available, you must first purchase and install in your account. To do so, select the "Add CMS" option in the drop-down menu to browse the Content Management section of Marketplace.

><img src="../../../images/sites-add-site-cms-choose-cms.jpg" alt="select a cms from drop-down" style="width: 70%; display: block"></a>


#### Cluster

Next, you will need to select a cluster from the drop-down menu to host your CMS site. For a cluster to be available, you must first deploy one in your account. To do so, select the "Add Cluster" option in the drop-down menu to browse the Containers section of Marketplace.

><img src="../../../images/sites-add-site-cms-choose-cluster.jpg" alt="select a cluster from drop-down" style="width: 70%; display: block"></a>


#### Theme

A theme is a pre-built set of custom templates, styles, and components that instantly add visual elements to your site. As an option, you can choose a theme from the drop-down menu to deploy with any new site.

For a theme to be available, you must first add one to your account. To do so, select "Add Theme" in the drop-down menu to browse options in the Marketplace. Once installed, it will appear in the menu when adding a site. 

><img src="../../../images/sites-add-site-cms-choose-theme.jpg" alt="select a theme from drop-down" style="width: 70%; display: block"></a>


#### Add

Once you’ve completed all of the fields, click the blue “Add” button and your site will be created. 

><img src="../../../images/sites-add-site-addbtn.jpg" alt="click add button" style="width: 70%; display: block"></a>

!!!Please Note:
The site build process may take several minutes to complete after clicking the "Add" button. Do not close or quit your browser duing this process.
!!!

---

### Add Static Site

When choosing to add a static site you will be presented with the "Add Static Site" form. This form consists of four required fields to generate your new site.

#### Name

In Solodev Cloud, naming your site is an easy way to help organize your deployments, particularly in a shared org. A name is composed of two parts: a unique prepend title (such as "mysite") and a valid domain (such as "solodev.com"). 

On your sites dashboard, each card will be appear with its corresponding name in this format: mysite.solodev.com

First, add your prepend name in the blank field to the left.

Next, select a domain from the drop-down menu on the right to associate with your site. Remember that you will have to point your DNS server to this address prior to launch. If you do not currently have a domain name, you can choose the "<a href="/infrastructure/domains/add/">Add Domain</a>" option from the drop-down menu.

><img src="../../../images/sites-add-site-name-domain.jpg" alt="enter a name and domain for your site" style="width: 70%; display: block"></a>

!!!Please Note:
A valid <a href="/infrastructure/domains/">domain name</a> is required to proceed to the next step.
!!!


#### Time Zone

Select the appropriate time zone for your website from the drop-down menu.

><img src="../../../images/sites-add-site-cms-timezone.jpg" alt="select time zone from drop-down" style="width: 70%; display: block"></a>


#### Static

Select your instance of Solodev Static from the drop-down menu. You must have an active instance of Solodev Static to add your site. If you do not have Solodev Static, select the “Add Static” option from the drop-down menu to take you directly to the content management section of the Marketplace.

><img src="../../../images/sites-add-site-static-static.jpg" alt="select a cms from drop-down" style="width: 70%; display: block"></a>


#### Provider

Choose your provider from the drop-down menu. You must have a <a href="/infrastructure/providers/">Provider</a> to host your static site with. If you do not have a provider, select the "<a href="/infrastructure/providers/add/">Add Provider</a>" option from the drop-down menu.

><img src="../../../images/sites-add-site-static-provider.jpg" alt="select a cluster from drop-down" style="width: 70%; display: block"></a>


#### Add

Once you’ve successfully completed all of the fields, click the blue “Add” button and your site will be created. 

><img src="../../../images/sites-add-site-addbtn.jpg" alt="click add button" style="width: 70%; display: block"></a>

!!!Please Note:
The site build process may take several minutes to complete after clicking the "Add" button. Do not close or quit your browser duing this process.
!!!

---

### Add External Site

When choosing to add an external site you will be presented with the "Add External Site" form. This form consists of two required fields.

#### Domain

Enter a domain name for your site in www.yourdomainhere.com format. Do not include "http://" or "https://" when entering your domain. You must have a valid <a href="/infrastructure/domains/">domain name</a> and point your DNS to this server.

><img src="../../../images/sites-add-site-external-domain.jpg" alt="enter a valid domain name" style="width: 70%; display: block"></a>


#### Time Zone (Required)

Select the appropriate time zone for your website from the drop-down menu.

><img src="../../../images/sites-add-site-cms-timezone.jpg" alt="select time zone from drop-down" style="width: 70%; display: block"></a>


#### Add

Once you’ve completed the fields, click the blue “Add” button and your site will be created. 

><img src="../../../images/sites-add-site-addbtn.jpg" alt="click add button" style="width: 70%; display: block"></a>
