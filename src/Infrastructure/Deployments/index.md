# Deployments

## Introduction
Previously, we discussed how you can leverage containers to deploy applications, services, and websites at light speed and manage them all in one place with minimal configuration. When you link your AWS account to Solodev Cloud you can leverage the power of deployments and launch CloudFormation applications in very little time. Deployments are ideal for Enterprise sys-admins interested in high availability server instances and managing single tenant applications. In addition to the granular permissions offered by Solodev Cloud, you can enjoy the added security provided by AWS Identity Access Management (IAM) to further control access to resources.   

## Considerations and advantages
In addition to the aforementioned advantages, deployments allow you to launch a wide variety of applications with EC2 instances, load balancers, and autoscaling. They can also manage manage server configurations with AWS OpsWorks that controls Chef recipes.

 

Since the deployments offered by Solodev tend to differ in technical complexity, Solodev recommends choosing your deployments based on project requirements and the scale of your operation. For example, if a developer and their organization would like to make a lifestyle blog to accompany their brand, Solodev CMS Professional Edition is an optimal solution for their needs. Descriptions of the Solodev deployments and links to their installation instructions are provided below.

 

## Enterprise options
[Solodev CMS Professional Edition](https://github.com/solodev/aws/blob/master/pages/solodev-cms-pro.md): Build professional-grade websites, apps, or portals with the power of Solodev, backed by PHP, Apache Mongo and more -- all on a single EC2 instance with an external Amazon RDS MySQL database that can be managed by AWS Opsworks.

[Solodev CMS Enterprise Edition](https://www.solodev.com/enterprise/): Quickly and easily deploy Solodev Enterprise to build websites, portals or applications that can handle any amount of traffic, leveraging multiple geographic data centers for unmatched redundancy, security and scalability. 

[Solodev Personalize](https://www.solodev.com/marketplace/personalize): Automate the process of deploying event trackers. 

[Solodev IoT](https://www.solodev.com/marketplace/iot): manage licenses, updates, and deploy code through serverless lambda calls.

## Add Deployments

Add deployments to any of your organizations. Deployments include CMS platforms such as Solodev CMS Enterprise or Professional Editions, but they can also include other applications that are launched using Amazon CloudFormation. Available apps will be featured in the Deployments section of Solodev Cloud. 

 

To get started, please follow the steps below. 

 

**Prerequisites**

Before launching a deployment, Solodev Cloud developers should: 

- Create an AWS account. 

- Connect their AWS account to Solodev Cloud.

- Place a credit card on file.

- Review the description of Solodev stacks. 

**Adding a deployment**

- In the Solodev dashboard, click Infrastructure.

- Click Deployments.

- Click the Add deployment card.

- In the desired deployment card, click Get Now.

- Click Set up plan.

- Under the pricing and installation section, choose a monthly subscription plan.

- Click Buy Now.

- Click Complete Purchase and install.

- Review the prices and click Install.

- Enter the name of the deployment

- Select a provider (like AWS).

- Enter the VPCID. For more information, click here.

- Enter the subnets.

- Enter the KeyName.

- Click the checkbox to accept terms and conditions.

- Click Launch.

 
 ## Managing Deployments

 Delete or grant other users access your deployments with the update button. Controlling access to deployments and deleting deployments will be outlined in the permissions and delete sections that follow. 

**Permissions**

- On the Solodev Cloud workspace, click Infrastructure.
- Click the desired deployment. 
- Click the dropdown arrow on the update button.
- Click Permissions. 
- Type a Name of the user in your organization. 
- Select the role. 
- Click the **+** button. 
- Click Submit. 

To remove deployment access from other users, please refer to the steps below: 
- On the Solodev Cloud workspace, click Infrastructure.
- Click the desired deployment. 
- Click the dropdown arrow on the update button.
- Click Permissions. 
- Click the x icon next to the user in the permissions modal. 
- Click Submit. 

**Delete deployments**

Developers are able to remove deployments from their organizations. Please note that deleting deployments will delete all other assets linked to the deployment such as Apps, Modules or Sites. Please refer to the instructions below to remove your deployment. 

- On the Solodev Cloud workspace, click Infrastructure.
- Click the desired deployment. 
- Click the Update button. 
- Click the advanced dropdown box. 
- Type 'DELETE' in the Delete box. 
- Click Delete. 