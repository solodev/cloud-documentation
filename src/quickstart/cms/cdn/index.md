#

<div class="header">
  <div class="inner">
    <img src="/static/images/logos/cloudfront-logo.jpg" alt="CDN Logo">
    <div>
      <h1>CDN</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Protect websites and apps with CDN.</p>
    </div>
  </div>
</div>

A Content Delivery Network (CDN) is a network of servers spread out across different locations to deliver content faster to users. By storing copies of files closer to where they're needed, CDNs help websites load quicker and handle more traffic without breaking a sweat.

## Prerequisites

* Have an [AWS Account](/quickstart/cloud/aws)</a>.
* Have an existing [CMS](/quickstart/cms)</a>.
* Preexisting <a href="https://aws.amazon.com/route53/" target="_blank">DNS :icon-link-external:</a>.
* Have a <a href="https://docs.aws.amazon.com/acm/" target="_blank">Certificate :icon-link-external:</a>.

<div class="card-lg" style="margin: 3rem 0 1.5rem;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <div style="width: 120px;">
      <img src="/static/images/logos/cloudfront-logo.jpg" alt="CDN Logo" style="width: 100%;">
    </div>
    <div style="margin-left: 30px; width: 80%;">
      <h2>CMS CDN</h2>
      <p class="mt-2">Enhance the performance of your content management system by delivering assets like images, scripts, and stylesheets from servers closer to your users. Speeds up load times, ensure a smoother experience, and help your site scale efficiently during high traffic.</p>
    </div>
  </div>
  <div>
    <a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=cms-cdn&templateURL=https://solodev-cms.s3.amazonaws.com/cloudformation/cloudfront-cms.yaml" class="btn-orange-lg" target="_blank">LAUNCH <img src="/static/images/icons/circle-play-solid.svg" style="width: 16px; margin-left: 1rem;"></a>
  </div>
</div>

<div class="card-lg" style="margin-bottom: 1.5rem;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <div style="width: 120px;">
      <img src="/static/images/logos/cloudfront-logo.jpg" alt="CDN Logo" style="width: 100%;">
    </div>
    <div style="margin-left: 30px; width: 80%;">
      <h2>WordPress CDN</h2>
      <p class="mt-2">Boost your site's speed by delivering your content from servers located closer to your visitors. Reduce load times, improve performance, and help your site handle traffic spikes without slowing down.</p>
    </div>
  </div>
  <div>
    <a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=cms-cdn&templateURL=https://s3://wordpress-release/cloudformation/cloudfront-wordpress.yaml" class="btn-orange-lg" target="_blank">LAUNCH <img src="/static/images/icons/circle-play-solid.svg" style="width: 16px; margin-left: 1rem;"></a>
  </div>
</div>

<style>
  .card-lg {
    border: 1px solid #dee2e6;
    box-shadow: 0 1px 15px rgba(0, 0, 0, .15);
    padding: 1.5rem;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .card-lg h2 {
    margin-top: 0;
    font-size: 1.4rem;
  }
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