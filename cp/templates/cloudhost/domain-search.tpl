<!-- ========= Home Slider Start ========= -->

<section class="domain_search_page">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <h1 class="color-white text-uppercase font-40">Register a Domain name</h1>
      </div>
      <div class="col-md-6 col-sm-12 col-xs-12">
        <div class="banner_search margin_top_50">
          <form method="post" action="domainchecker.php">
            <input type="text" class="search_box" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" />
            <input type="submit" class="btn_primary search_button" value="{$LANG.search}" />
          </form>
        </div>
      </div>
      {if count($pricetable) gt 0}
      <div class="col-md-6 col-sm-12 col-xs-12">
        <ul class="promo_list margin_top_50 color-white text-center">
          {foreach $pricetable as $price}
          {if $price.extension == '.com'}
          <li><span class="font-22">.COM</span> {$price.prefix}{$price.msetupfee}</li>
          {elseif $price.extension == '.net'}
          <li><span class="font-22">.NET</span> {$price.prefix}{$price.msetupfee}</li>
          {elseif $price.extension == '.org'}
          <li><span class="font-22">.ORG</span> {$price.prefix}{$price.msetupfee}</li>
          {elseif $price.extension == '.biz'}
          <li><span class="font-22">.BIZ</span> {$price.prefix}{$price.msetupfee}</li>
          {/if}
          {/foreach}
        </ul>
      </div>
      {/if} </div>
  </div>
</section>

<!-- ========= Home Slider End ========= --> 

<!-- ========= Why Choose Start ========= -->

<section class="why_choose text-center bottom_padding_xs">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100">
          <h2 class="no_margin no_padding text-uppercase color-black">Why Choose <span>Cloud Host</span></h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="s_box">
          <div class="s_icon margin_bottom_20"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/fast-loading.png" alt="" title="" /></div>
          <h4 class="margin_bottom_20">Fast Loading</h4>
          <p class="color-grey font-14">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="s_box">
          <div class="s_icon margin_bottom_20"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/free-support.png" alt="" title="" /></div>
          <h4 class="margin_bottom_20">Free Call Support</h4>
          <p class="color-grey font-14">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="s_box">
          <div class="s_icon margin_bottom_20"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/mobile-application.png" alt="" title="" /></div>
          <h4 class="margin_bottom_20">Mobile Application</h4>
          <p class="color-grey font-14">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Why Choose End ========= --> 

<!-- ========= Best Services Start ========= -->

<section class="best_services">
  <div class="container">
    <div class="row">
      <div class="col col-md-6">
        <h3 class="color-white">printing and industry Lorem Ipsum.</h3>
        <p class="color-white padding_tb_30">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        <a href="#" class="btn_primary border-radius-5 display-inline-block">Get Started</a> </div>
      <div class="col col-md-6"></div>
    </div>
  </div>
</section>

<!-- ========= Best Services End ========= --> 

<!-- ========= Services Section Start ========= -->

<section class="our_services_main text-center bottom_padding_xs">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100">
          <h2 class="no_margin no_padding text-uppercase color-black">Our <span>Domains Features</span></h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fab fa-jsfiddle"></i></span></div>
          <h5>Affordable Pricing</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fa fa-life-ring" aria-hidden="true"></i></span></div>
          <h5>Professional Support</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fa fa-tachometer" aria-hidden="true"></i></span></div>
          <h5>99.99% Uptime Guarantee</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
    </div>
    <div class="row margin_top_50">
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fab fa-vimeo-square"></i></span></div>
          <h5>security</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fa fa-life-ring" aria-hidden="true"></i></span></div>
          <h5>Money Back Guarantee</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="services_box border-radius-5 padding_20">
          <div class="services_icon margin_bottom_20"><span><i class="fas fa-cloud-upload-alt"></i></span></div>
          <h5>Data on Domainfront</h5>
          <p class="font-14 padding_top_10">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Services Section End ========= --> 
