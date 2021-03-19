<!-- ========= Inner Page Banner Start ========= -->

<section class="page_banner">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <h1 class="color-white text-uppercase">Shared <strong> Hosting</strong></h1>
        <p class="color-white padding_top_20">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has <br>
          been the industry's standard dummy text.</p>
      </div>
    </div>
  </div>
</section>

<!-- ========= Inner Page Banner End ========= --> 

<!-- ========= Pricing Table Start ========= -->

{if count($sharedhostingproducts) gt 0 && ($sharedhostingproducts.0.monthly gt 0 || $sharedhostingproducts.0.annually gt 0 || $sharedhostingproducts.0.biennially gt 0 || $sharedhostingproducts.0.triennially gt 0)}
<section class="pricing_table bottom_padding_xs">
  <div class="container">
    <div class="row">
      {foreach $sharedhostingproducts as $myproduct}
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="pricing_box"> <span class="title">{$myproduct.name}</span>
          <div class="pricing"> {$myproduct.prefix} {$myproduct.monthly}<small>/month</small></div>
          <ul class="color-grey">
            {$myproduct.description}
          </ul>
          <div class="order_now"><a class="btn_primary margin_tb_20 border-radius-5 display-inline-block" href="cart.php?a=add&pid={$myproduct.relid}">Order Now</a></div>
        </div>
      </div>
      {/foreach}
    </div>
  </div>
</section>
{/if}

<!-- ========= Pricing Table End ========= --> 

<!-- ========= Best Services Start ========= -->

<section class="best_services">
  <div class="container">
    <div class="row">
      <div class="col col-md-6">
        <h3 class="color-white">printing and industry</h3>
        <p class="color-white padding_tb_30">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        <a href="#" class="btn_primary border-radius-5 display-inline-block">Get Started</a> </div>
      <div class="col col-md-6"></div>
    </div>
  </div>
</section>

<!-- ========= Best Services End ========= --> 

<!-- ========= Services Section Start ========= -->

<section class="our_services_main text-center">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100">
          <h2 class="no_margin no_padding text-uppercase color-black">Our <span>Hosting Features</span></h2>
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

<!-- ========= Why Chhose Start ========= -->

<section class="background-grey text-center bottom_padding_xs">
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
        <div class="right_icon_box border-radius-5 padding_50">
          <div class="icon_right border-radius-5"><i class="fas fa-check-square color-white font-32"></i></div>
          <h5 class="padding_tb_20">Fast Loading</h5>
          <p class="font-14 color-grey">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="right_icon_box border-radius-5 padding_50">
          <div class="icon_right border-radius-5"><i class="fa fa-phone-square color-white font-32" aria-hidden="true"></i></div>
          <h5 class="padding_tb_20">Free Call Support</h5>
          <p class="font-14 color-grey">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="right_icon_box border-radius-5 padding_50">
          <div class="icon_right border-radius-5"><i class="fa fa-mobile color-white font-32" aria-hidden="true"></i></div>
          <h5 class="padding_tb_20">Mobile Application</h5>
          <p class="font-14 color-grey">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Why Chhose End ========= --> 