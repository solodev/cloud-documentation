#

<div class="header">
  <div class="inner">
    <img src="/static/images/logos/cdn.png" alt="CDN Logo">
    <div>
      <h1>CDN</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Protect websites and apps with CDN.</p>
    </div>
  </div>
</div>

A Content Delivery Network (CDN) is a network of servers spread out across different locations to deliver content faster to users. By storing copies of files closer to where they're needed, CDNs help websites load quicker and handle more traffic without breaking a sweat.

<div class="card-lg" style="margin: 3rem 0 1.5rem;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <div style="width: 120px;">
      <img src="/static/images/logos/cdn-cms.png" alt="CMS CDN Logo" style="width: 100%;">
    </div>
    <div style="margin-left: 30px; width: 80%;">
      <h2>CMS CDN</h2>
      <p style="font-size: .9rem;"><strong>Prerequisites:</strong> you need a <a href="https://console.aws.amazon.com/acm/" target="_blank">certificate</a> with the name of site you are trying to launch <br>and have an existing <a href="/quickstart/cms/solodev-cms" target="_blank">CMS</a>.</p>
      <p class="mt-2" style="margin-bottom: 0;">Enhance the performance of your CMS and speed up load times.</p>
    </div>
  </div>
  <div>
    <a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=cms-cdn&templateURL=https://solodev-cms.s3.amazonaws.com/cloudformation/cloudfront-cms.yaml" class="btn-orange-lg" target="_blank">LAUNCH <img src="/static/images/icons/circle-play-solid.svg" style="width: 16px; margin-left: 1rem;"></a>
  </div>
</div>

<div class="card-lg" style="margin-bottom: 1.5rem;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <div style="width: 120px;">
      <img src="/static/images/logos/cdn-wordpress.png" alt="WordPress CDN Logo" style="width: 100%;">
    </div>
    <div style="margin-left: 30px; width: 80%;">
      <h2>WordPress CDN</h2>
      <p style="font-size: .9rem;"><strong>Prerequisites:</strong> you need a <a href="https://console.aws.amazon.com/acm/" target="_blank">certificate</a> with the name of site you are trying to launch <br>and have an existing <a href="/quickstart/cms/wordpress" target="_blank">WordPress</a>.</p>
      <p class="mt-2" style="margin-bottom: 0;">Boost your site's speed by delivering content from servers near your visitors.</p>
    </div>
  </div>
  <div>
    <a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=cms-cdn&templateURL=https://s3.amazonaws.com/wordpress-release/cloudformation/cloudfront-wordpress.yaml" class="btn-orange-lg" target="_blank">LAUNCH <img src="/static/images/icons/circle-play-solid.svg" style="width: 16px; margin-left: 1rem;"></a>
  </div>
</div>

<div class="card-lg" style="margin-bottom: 1.5rem;">
  <div style="display: flex; align-items: center; justify-content: start;">
    <div style="width: 120px;">
      <img src="/static/images/icons/drupal-cdn.jpg" alt="Drupal CDN Logo" style="width: 100%;">
    </div>
    <div style="margin-left: 30px; width: 80%;">
      <h2>Drupal CDN</h2>
      <p style="font-size: .9rem;"><strong>Prerequisites:</strong> you need a <a href="https://console.aws.amazon.com/acm/" target="_blank">certificate</a> with the name of site you are trying to launch <br>and have an existing <a href="/quickstart/cms/drupal" target="_blank">Drupal</a>.</p>
      <p class="mt-2" style="margin-bottom: 0;">Speed up content delivery and improve performance.</p>
    </div>
  </div>
  <div>
    <a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=cms-cdn&templateURL=https://s3.amazonaws.com/drupal-release/cloudformation/cloudfront-drupal.yaml" class="btn-orange-lg" target="_blank">LAUNCH <img src="/static/images/icons/circle-play-solid.svg" style="width: 16px; margin-left: 1rem;"></a>
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