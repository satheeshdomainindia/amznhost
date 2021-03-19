<!-- ========= Inner Page Banner Start ========= -->

<section class="page_banner">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <h1 class="color-white text-uppercase"><strong>Wordpress</strong> Hosting</h1>
        <p class="color-white padding_top_20">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has <br>
          been the industry's standard dummy text.</p>
      </div>
    </div>
  </div>
</section>

<!-- ========= Inner Page Banner End ========= --> 

<!-- ========= Services Section Start ========= -->

<section class="our_services_main text-center">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100">
          <h2 class="no_margin no_padding color-black">WordPress works Auto-magically</span></h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fab fa-jsfiddle"></i></span></div>
          <h5>Auto-Setup</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fa fa-life-ring" aria-hidden="true"></i></span></div>
          <h5>Auto-Backups</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fa fa-tachometer" aria-hidden="true"></i></span></div>
          <h5>Auto-Secured</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
    </div>
    <div class="row margin_top_50">
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fab fa-vimeo-square"></i></span></div>
          <h5>Auto-Updates</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fa fa-life-ring" aria-hidden="true"></i></span></div>
          <h5>Auto-Caching</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fas fa-cloud-upload-alt"></i></span></div>
          <h5>Auto-Updates</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Services Section End ========= --> 

<!-- ========= Pricing Table Start ========= -->
{if count($wprdpressroducts) gt 0 && ($wprdpressroducts.0.monthly gt 0 || $wprdpressroducts.0.annually gt 0 || $wprdpressroducts.0.biennially gt 0 || $wprdpressroducts.0.triennially gt 0)}
<section class="pricing_table2 background-grey text-center">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100">
          <h2 class="no_margin no_padding color-black">Select a Plan</h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
    {foreach $wprdpressroducts as $myproduct}
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="pricing_box padding_20 border-radius-5">
          <h1 class="color-grey">{$myproduct.prefix} {$myproduct.monthly}<small>/mo</small></h1>
          <h5 class="padding_tb_20 color-grey">{$myproduct.name}</h5>
          <ul class="color-grey">
            {$myproduct.description}
          </ul>
          <div class="order_now"><a class="btn_primary margin_tb_20 border-radius-5 display-inline-block" href="cart.php?a=add&pid={$myproduct.relid}">Buy Now</a></div>
        </div>
      </div>
    {/foreach}
    </div>
  </div>
</section>
{/if}
<!-- ========= Pricing Table End ========= --> 

<!-- ========= Services Section Start ========= -->

<section class="our_services_main bottom_padding_xs">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100 text-center">
          <h2 class="no_margin no_padding color-black">Wordpress <span>powers 27% of websites</span></h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="left_icon_box">
          <div class="left_icon"><i class="fab fa-jsfiddle font-26"></i></div>
          <h5>Ready-made Themes</h5>
          <p class="font-14 padding_top_20">Integer mattis hendrerit pellentesque. In ac ligula leo. Sed sed turpis risus.</p>
        </div>
      </div>
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="left_icon_box">
          <div class="left_icon"><i class="fa fa-life-ring font-26" aria-hidden="true"></i></div>
          <h5>SEO-friendly</h5>
          <p class="font-14 padding_top_20">Integer mattis hendrerit pellentesque. In ac ligula leo. Sed sed turpis risus.</p>
        </div>
      </div>
    </div>
    <div class="row margin_top_50">
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="left_icon_box">
          <div class="left_icon"><i class="fa fa-tachometer font-26" aria-hidden="true"></i></div>
          <h5>Diversified Plugins</h5>
          <p class="font-14 padding_top_20">Integer mattis hendrerit pellentesque. In ac ligula leo. Sed sed turpis risus.</p>
        </div>
      </div>
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="left_icon_box">
          <div class="left_icon"><i class="fab fa-vimeo-square font-26" aria-hidden="true"></i></div>
          <h5>Mobile Compatible</h5>
          <p class="font-14 padding_top_20">Integer mattis hendrerit pellentesque. In ac ligula leo. Sed sed turpis risus.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Services Section End ========= --> 

<!-- ========= Services Box Start ========= -->

<section class="service_box background-grey text-center bottom_padding_xs">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100">
          <h2 class="no_margin no_padding color-black">Wordpress Powered by Domain Hosting</h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="s_box">
          <div class="s_icon margin_bottom_20"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/wordpress.png" alt="" title="" /></div>
          <h4>Blazing-Fast Load Time</h4>
          <p class="color-grey font-14 padding_tb_20">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="s_box">
          <div class="s_icon margin_bottom_20"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/cloud.png" alt="" title="" /></div>
          <h4>Instant Scaling</h4>
          <p class="color-grey font-14 padding_tb_20">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
    </div>
    <div class="row margin_top_50">
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="s_box">
          <div class="s_icon margin_bottom_20"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/dedicated.png" alt="" title="" /></div>
          <h4>Your Data - Safeguarded</h4>
          <p class="color-grey font-14 padding_tb_20">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="s_box">
          <div class="s_icon margin_bottom_20"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/dedicated.png" alt="" title="" /></div>
          <h4>Automatic Failover</h4>
          <p class="color-grey font-14 padding_tb_20">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Services Box End ========= --> 