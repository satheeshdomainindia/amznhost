<!-- ========= Inner Page Banner Start ========= -->

<section class="page_banner">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <h1 class="color-white text-uppercase"><strong>Cloud</strong> Hosting</h1>
        <p class="color-white padding_top_20">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has <br>
          been the industry's standard dummy text.</p>
      </div>
    </div>
  </div>
</section>

<!-- ========= Inner Page Banner End ========= --> 

<!-- ========= Pricing Table Start ========= -->

{if count($cloudproducts) gt 0 && ($cloudproducts.0.monthly gt 0 || $cloudproducts.0.annually gt 0 || $cloudproducts.0.biennially gt 0 || $cloudproducts.0.triennially gt 0)}
<section class="pricing_table bottom_padding_xs">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100 text-center">
          <h2 class="no_margin no_padding text-uppercase color-black">Our <span>Plan & Pricing</span></h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      {foreach $cloudproducts as $myproduct}
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

<section class="call_back">
  <div class="container">
    <div class="row">
      <div class="col col-md-6">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <h3 class="color-white">Contact Us</h3>
          <p class="color-white font-22 padding_tb_30">Get a Call Back</p>
          <p class="color-white font-14">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ndustry's standard dummy text ever since the 1500s, when an unknown printer took. </p>
        </div>
      </div>
      <div class="col col-md-6">
        <div class="call_back_form">
          <div class="col-md-6 col-sm-12 col-xs-12">
            <input type="text" class="margin_bottom_20 font-14" value="" placeholder="First Name" />
          </div>
          <div class="col-md-6 col-sm-12 col-xs-12">
            <input type="text" class="margin_bottom_20 font-14" value="" placeholder="Last Name" />
          </div>
          <div class="col-md-6 col-sm-12 col-xs-12">
            <input type="text" class="margin_bottom_20 font-14" value="" placeholder="Email Address" />
          </div>
          <div class="col-md-6 col-sm-12 col-xs-12">
            <input type="text" class="margin_bottom_20 font-14" value="" placeholder="Phone Number" />
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <textarea class="margin_bottom_20 font-14" placeholder="Decription"></textarea>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <input type="submit" class="btn_primary border-radius-5 display-inline-block" value="Send Now"/>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Best Services End ========= --> 

<!-- ========= Services Section Start ========= -->

<section class="our_services_main bottom_padding_xs">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100 text-center">
          <h2 class="no_margin no_padding text-uppercase color-black">Features <span>Cloud Hosting</span></h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="left_icon_box">
          <div class="left_icon"><i class="fab fa-jsfiddle font-26" aria-hidden="true"></i></div>
          <h5>Blazing-Fast Load Time</h5>
          <p class="font-14 padding_top_20">Integer mattis hendrerit pellentesque. In ac ligula leo. Sed sed turpis risus.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="left_icon_box">
          <div class="left_icon"><i class="fa fa-life-ring font-26" aria-hidden="true"></i></div>
          <h5>Instant Scaling</h5>
          <p class="font-14 padding_top_20">Integer mattis hendrerit pellentesque. In ac ligula leo. Sed sed turpis risus.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="left_icon_box">
          <div class="left_icon"><i class="fa fa-tachometer font-26" aria-hidden="true"></i></div>
          <h5>cPanel for Management</h5>
          <p class="font-14 padding_top_20">Integer mattis hendrerit pellentesque. In ac ligula leo. Sed sed turpis risus.</p>
        </div>
      </div>
    </div>
    <div class="row margin_top_50">
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="left_icon_box">
          <div class="left_icon"><i class="fab fa-vimeo-square font-26" aria-hidden="true"></i></div>
          <h5>Your Data - Safeguarded </h5>
          <p class="font-14 padding_top_20">Integer mattis hendrerit pellentesque. In ac ligula leo. Sed sed turpis risus.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="left_icon_box">
          <div class="left_icon"><i class="fa fa-life-ring font-26" aria-hidden="true"></i></div>
          <h5>Automatic Failover</h5>
          <p class="font-14 padding_top_20">Integer mattis hendrerit pellentesque. In ac ligula leo. Sed sed turpis risus.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="left_icon_box">
          <div class="left_icon"><i class="fa fa-life-ring font-26" aria-hidden="true"></i></div>
          <h5>Resource Management</h5>
          <p class="font-14 padding_top_20">Integer mattis hendrerit pellentesque. In ac ligula leo. Sed sed turpis risus.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Services Section End ========= --> 
