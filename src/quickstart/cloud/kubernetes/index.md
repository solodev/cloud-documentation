# 

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div  style="display: flex; align-items: center; justify-content: start;">
    <img src="/static/images/logos/kubernetes-pro-logo.jpg" alt="Kubernetes Logo" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">Kubernetes</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Deploy websites and apps in containers at scale with Kubernetes and AWS.</p>
    </div>
  </div>
</div>

Solodev Managed Kubernetes is the answer to your container challenges! Unleash the power of Kubernetes with the technology, processes, and support to successfully scale and manage your cluster.

## Prerequisites

* Access Key and a Secret Token from your AWS account IAM user. For more information on IAM user, <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html?icmpid=docs_iam_help_panel" target="_blank" rel="noopener noreferrer">click here</a>.
* You might need to install or update the [following packages](#required-utilities).
* [Configure AWS Profile](#configure-aws-profile).

## Create a cluster

A cluster is a cohesive group of interconnected virtual machines (EC2 instances) or containers (ECS or EKS clusters) that collaborate to optimize workload distribution and resource management.

The following commands will create a cluster in your AWS account, set up the necessary CloudFormation stacks, and install the Kubernetes dashboard.

1. Download the following file:

```js
curl -O https://solodev-cms.s3.amazonaws.com/eks/ekscli.sh && chmod 700 ekscli.sh
```

2. Run the following command:

```js
./ekscli.sh create cluster
```

!!!NOTE:
This process takes approximately 15 to 30 minutes.
!!!

## Access the Kubernetes Dashboard

The Kubernetes dashboard provides a graphical interface that simplifies these management tasks, making it easier for administrators and developers to interact with and monitor Kubernetes clusters without needing to use command-line tools exclusively.

The following command opens a localhost dashboard where you can view the cluster you just created at <a href="http://localhost:8443" target="_blank" rel="noopener noreferrer">http://localhost:8443</a>. If it does not open automatically, you can access it manually.

```js
./ekscli.sh dashboard
```

1. Copy the key from the command line and paste into the Bearer token field in the browser.
2. Explore the interface to familiarize yourself with its layout and functionalities.

## Install Solodev CMS for EKS

The following commands will install Solodev CMS for EKS onto the cluster you just created. 

1. Run the following command:

```js
./ekscli.sh install cms
```

  This will prompt you for the following information:

  **Namespace:** Enter the namespace you prefer (e.g., `solodev`).
  **Release:** Enter the latest Solodev CMS release (e.g., `10.3.60`).

!!!NOTE:
You can monitor the pod creation progress in the dashboard under your namespace.
!!!

2. Look for the value labeled `NAME: cms**********` in the output and copy it.
3. After the CMS has installed, you can test it by running the following command:

```js
./ekscli.sh cms cms**********
```

<!-- <p><img src="/static/images/quickstart/eks/eks-cms-console.jpg" alt="EKS CMS console" style="width: 62%;"></p> -->

!!!NOTE:
This updates the ports for the CMS on Kubernetes to be hosted locally so you can access it in the browser.
!!!

4. Go to <a href="http://localhost" target="_blank" rel="noopener noreferrer">http://localhost :icon-link-external:</a> in your browser.

## Next Step

### Add your First Website

Please [follow this link](https://cms.solodev.net/workspace/websites/add-website/) to learn more about Solodev and to learn how to build your first website.

## Required Utilities

{% tabs %}
{% tab title="Windows" %}
* You need to have **Chocolatey** installed or any other package manager you prefer. For instructions on how to install Chocolatey, <a href="https://chocolatey.org/install" target="_blank" rel="noopener noreferrer">click here</a>.
* You will also need the following packages:

  * **EKS CTL**
   
    `eksctl` is a command-line tool provided by AWS (Amazon Web Services) that simplifies the creation, management, and operation of Kubernetes clusters on AWS's managed Kubernetes service known as Amazon EKS (Elastic Kubernetes Service).

    ```js
    choco install eksctl
    ```

  * **Kubernetes Command-Line Tool**

    The `kubectl` is a command-line tool for Kubernetes that lets users deploy and manage applications, inspect and manage cluster resources, view logs, and troubleshoot issues within Kubernetes environments. It communicates with the Kubernetes API server to execute commands, handle operations like creating, deleting, scaling, and updating resources such as pods, services, and deployments.

    ```js
    choco install kubernetes-cli
    ```

  * **Kubernetes Helm**

    `Kubernetes Helm` is a package manager for Kubernetes that simplifies the process of deploying and managing applications on Kubernetes clusters. It allows users to define, install, and upgrade complex Kubernetes applications and their dependencies through charts. A `Helm chart` is a collection of files that describe a set of Kubernetes resources, such as deployments, services, and config maps, packaged together for easy deployment.

    ```js
    choco install kubernetes-helm
    ```

  * **jq**

    `jq` is a lightweight and flexible command-line JSON processor. It allows you to parse, filter, map, and transform JSON data with ease.

    ```js
    choco install jq
    ```

  * **Python**

    `Python` is a versatile and powerful scripting language that allows you to automate tasks, interact with system resources, and integrate with various APIs and libraries. <a href="https://apps.microsoft.com/search?query=Python&hl=en-us&gl=US" target="_blank" rel="noopener noreferrer">Download the latest version from the Microsoft Store.</a>
{% endtab %}

{% tab title="Linux" %}
Coming soon...
{% endtab %}

{% tab title="MacOs" %}
Coming soon...
{% endtab %}
{% endtabs %}

## Configure AWS Profile

1. Make sure you have the latest version of `aws cli`. If you do not, <a href="https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#getting-started-install-instructions" target="_blank" rel="noopener noreferrer">follow this instructions.</a>
```js
aws --version
```
2. Configure your user credentials by running the following command:
```js
aws configure --profile PROFILE-NAME
```

!!!NOTE:
Replace `PROFILE-NAME` with you own.
!!!

You will be prompted for the following information:

```js
AWS Access Key ID [None]:
AWS Secret Access Key [None]:
Default region name [None]:
Default output format [None]:json
```

  1. **AWS Access Key ID**: Obtain this from your IAM user settings.
  2. **AWS Secret Access Key**: Obtain this from your IAM user settings.
  3. **Default Region Name**: Enter your preferred AWS region (e.g., `us-east-1`).
  4. **Default Output Format**: Specify `json` for JSON output format.

## Next Step

Subscribe to [Solodev CMS for EKS](https://cms.solodev.net/quickstart/solodev-cms-for-kubernetes/).

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