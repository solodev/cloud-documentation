# Apps

*Extend the functionality of Solodev to fit your individual use case.* 

--- 

Solodev Apps are ways to extend the functionality of Solodev CMS to fit individual use cases. Apps themselves can create customized backend views, power a number of different frontend experiences, and even be used to power customized API integrations. No matter their purposes, however, Solodev Apps generally share the same framework and employ a number of different deployment methods dependent upon the broad use case.

 

There are three overarching types of apps:

***Backend Apps***
Backend Apps are installed directly within Solodev CMS and allow you to create custom views within the CMS itself. Backend Apps can aggregate form data, for example, for custom reporting purposes or they can be used to perform a variety of data modifications pertaining to your individual modules. Backend apps can be as simple or as complex as needed with the common denominator being that they are directly accessed from within the CMS itself.

 

***Frontend Apps***
Frontend Apps are those which are installed at a layer associated with public-facing websites. These apps can either replace an entire website or be installed in a subdirectory of a website. They can be used to authenticate frontend users (“Contacts” within the CMS) so that a website can power a wide variety of portals. Conversely, they can be used without any authentication needed and power a true, headless website experience.

 

***Serverless Apps***
Serverless Apps are typically utilized to extend the Solodev API and integrate with third-party services. This allows developers to build custom API endpoints that can query third-party services, update data modules within Solodev CMS, or vice-versa. Although not exclusively limited to those purposes, Serverless Apps are ultimately deployed to serverless environments such as ECS Clusters.

 

Solodev Apps can additionally be built and worked on locally utilizing Docker containers. Apps are generally managed in individual Git repositories so that the full development cycle, from local development and testing to deployment, is fully managed with contemporary standards.

 

The deployment process for these apps varies slightly within each type. Generally speaking, however, there is some variety of pipeline that automates the archiving of the app and then the deployment process. These pipelines are commonly triggered through Git tags providing a level of granular control over deployments.

 

Throughout the articles within this collection, you can expect to learn how to configure an application based upon its designated usage as well as all of the necessary resources needed for a full deployment process.


## Cloning the Solodev App Boilerplate

The Solodev App Boilerplate is hosted on GitHub and can be accessed at the following URL: https://github.com/techcto/solodev-app. 

Developers can clone the boilerplate into their own repositories and proceed to customize based upon its intended usage (backend, frontend, serverless) as detailed in the additional articles of this section.

The Solodev App Boilerplate can be used as a starting point for all types of apps and included different types of pipelines configurations to meet specific deployment goals.

## App Framework

- Content coming soon. 

## Backend App

**Setting up Bitbucket Pipelines (Backend App)**

- Content coming soon. 

**Configuring IAM Users, Roles, and Policies (Backend App)**

- Content coming soon. 

**Installing a Backend App**

- Content coming soon. 

## Frontend App

**Setting up Bitbucket Pipelines (Frontend App)**

- Content coming soon. 

**Configuring IAM Users, Roles, and Policies (Frontend App)**

- Content coming soon. 

**Configuring AWS CodeDeploy**

- Content coming soon.

## Severless App

**Setting up Bitbucket Pipelines (Serverless App)**

- Content coming soon. 

**Deploying an App to ECS Clusters**

- Content coming soon. 

## Building Apps Locally

**Make a route inside the controller**

- Content coming soon. 

**How to post to a module**

- Content coming soon. 

**Building Locally with Docker Containers**

- Content coming soon.

**Compiling CSS and JS with NPM**

- Content coming soon.

**How to list module entries**

- Content coming soon. 