<!-- ========= Home Slider Start ========= -->

<section class="home_banner text-center">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <h1 class="color-white text-uppercase font-40">Find the perfect domain name for your website</h1>
        <h2 class="color-white text-uppercase font-22 margin_top_50">Register a Domain name</h2>
      </div>
      <div class="col-md-10 col-md-push-1 col-sm-12 col-xs-12">
        <div class="banner_search margin_top_50 border-radius-5">
          <form method="post" action="domainchecker.php">
            <input type="text" class="search_box border-radius-tb-left-5" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" />
            {if $registerdomainenabled}
            <input type="submit" class="btn_primary search_button border-radius-tb-right-5" value="{$LANG.search}" />
            {/if}
          </form>
        </div>
      </div>
      {if count($pricetable) gt 0}
      <div class="col-md-10 col-md-push-1 col-sm-12 col-xs-12">
        <ul class="promo_list margin_top_50">
          <div class="row"> {foreach $pricetable as $price}
            {if $price.extension == '.com'}
            <li class="col-md-2 col-sm-4 col-xs-12"><strong class="padding_20 border-radius-5"><span class="font-22">.COM</span> {$price.prefix}{$price.msetupfee}</strong></li>
            {elseif $price.extension == '.net'}
            <li class="col-md-2 col-sm-4 col-xs-12"><strong class="padding_20 border-radius-5"><span class="font-22">.NET</span> {$price.prefix}{$price.msetupfee}</strong></li>
            {elseif $price.extension == '.org'}
            <li class="col-md-2 col-sm-4 col-xs-12"><strong class="padding_20 border-radius-5"><span class="font-22">.ORG</span> {$price.prefix}{$price.msetupfee}</strong></li>
            {elseif $price.extension == '.biz'}
            <li class="col-md-2 col-sm-4 col-xs-12"><strong class="padding_20 border-radius-5"><span class="font-22">.BIZ</span> {$price.prefix}{$price.msetupfee}</strong></li>
            {elseif $price.extension == '.info'}
            <li class="col-md-2 col-sm-4 col-xs-12"><strong class="padding_20 border-radius-5"><span class="font-22">.INFO</span> {$price.prefix}{$price.msetupfee}</strong></li>
            {elseif $price.extension == '.co.in'}
            <li class="col-md-2 col-sm-4 col-xs-12"><strong class="padding_20 border-radius-5"><span class="font-22">.CO.IN</span> {$price.prefix}{$price.msetupfee}</strong></li>
            {/if}
            {/foreach} </div>
        </ul>
      </div>
      {/if}
      <div class="col-md-12 col-sm-12 col-xs-12"> <a class="btn_primary margin_top_50 border-radius-5 display-inline-block" href="#">Domain Promo</a> <a class="btn_secondry margin_top_50 border-radius-5 display-inline-block margin_left_20" href="#">Transfer a Domain</a> </div>
    </div>
  </div>
</section>

<!-- ========= Home Slider End ========= --> 

<!-- ========= Pricing Table Start ========= -->

{if count($sharedhostingproducts) gt 0 && ($sharedhostingproducts.0.monthly gt 0 || $sharedhostingproducts.0.annually gt 0 || $sharedhostingproducts.0.biennially gt 0 || $sharedhostingproducts.0.triennially gt 0)}
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
          <div class="icon_right border-radius-5"><i class="far fa-check-square color-white font-32"></i></div>
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

<!-- ========= Services Box Start ========= -->

<section class="service_box text-center">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100">
          <h2 class="no_margin no_padding text-uppercase color-black">Hosting and <span>Domain Solutions</span></h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="s_box">
          <div class="s_icon margin_bottom_20"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/wordpress.png" alt="" title="" /></div>
          <h4>WordPress Hosting</h4>
          <p class="color-grey font-14 padding_tb_20">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
          <a href="ch-wordpress-hosting.php" class="btn_primary border-radius-5 display-inline-block">Read More</a> </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="s_box">
          <div class="s_icon margin_bottom_20"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/cloud.png" alt="" title="" /></div>
          <h4>Cloud Hosting</h4>
          <p class="color-grey font-14 padding_tb_20">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
          <a href="ch-cloud-hosting.php" class="btn_primary border-radius-5 display-inline-block">Read More</a> </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="s_box">
          <div class="s_icon margin_bottom_20"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/dedicated.png" alt="" title="" /></div>
          <h4>Dedicated Server</h4>
          <p class="color-grey font-14 padding_tb_20">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
          <a href="ch-linux-dedicated-server.php" class="btn_primary border-radius-5 display-inline-block">Read More</a> </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Services Box End ========= --> 

<!-- ========= Best Services Start ========= -->

<section class="best_services">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-sm-12 col-xs-12">
        <h3 class="color-white">printing and industry Lorem Ipsum</h3>
        <p class="color-white padding_tb_30">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        <a href="#" class="btn_primary border-radius-5 display-inline-block">Get Started</a> </div>
      <div class="col col-md-6 hidden-sm hidden-md"></div>
    </div>
  </div>
</section>

<!-- ========= Best Services End ========= --> 

<!-- ========= Services Section Start ========= -->

<section class="bottom_padding text-center">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100">
          <h2 class="no_margin no_padding text-uppercase color-black">Our <span>Services</span></h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="services_boxs">
          <div class="sboxs">
            <div class="sboxs_f border-radius-5"><i class="fa fa-database font-40" aria-hidden="true"></i>
              <h5 class="padding_top_20">Web Hosting</h5>
            </div>
            <div class="sboxs_b border-radius-5">
              <table>
                <tbody>
                  <tr>
                    <td><h5 class="margin_bottom_20">Web Hosting</h5>
                      <p class="font-14">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="services_boxs">
          <div class="sboxs">
            <div class="sboxs_f border-radius-5"><i class="fa fa-database font-40" aria-hidden="true"></i>
              <h5 class="padding_top_20">VPS Hosting</h5>
            </div>
            <div class="sboxs_b border-radius-5">
              <table>
                <tbody>
                  <tr>
                    <td><h5 class="margin_bottom_20">VPS Hosting</h5>
                      <p class="font-14">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="services_boxs">
          <div class="sboxs">
            <div class="sboxs_f border-radius-5"><i class="fa fa-align-justify font-40" aria-hidden="true"></i>
              <h5 class="padding_top_20">Shared Hosting</h5>
            </div>
            <div class="sboxs_b border-radius-5">
              <table>
                <tbody>
                  <tr>
                    <td><h5 class="margin_bottom_20">Shared Hosting</h5>
                      <p class="font-14">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="services_boxs">
          <div class="sboxs">
            <div class="sboxs_f border-radius-5"><i class="fa fa-mobile font-40" aria-hidden="true"></i>
              <h5 class="padding_top_20">Mobile Application</h5>
            </div>
            <div class="sboxs_b border-radius-5">
              <table>
                <tbody>
                  <tr>
                    <td><h5 class="margin_bottom_20">Mobile Application</h5>
                      <p class="font-14">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Services Section End ========= --> 

<!-- ========= Testimonial Section Start ========= -->

<section class="testimonial" id="carousel">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100 text-center">
          <h2 class="no_margin no_padding text-uppercase color-white">Clients <span>Feed Back</span></h2>
          <p class="padding_top_20 color-white">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-10 col-md-push-1 col-sm-12 col-xs-12">
        <div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="3000">
          <ol class="carousel-indicators">
            <li data-target="#fade-quote-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#fade-quote-carousel" data-slide-to="1"></li>
            <li data-target="#fade-quote-carousel" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="active item">
              <blockquote class="padding_bottom_100 border-radius-5">
                <p class="text-center color-white font-16">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas, quos eaque molestias odio aut eius animi.</p>
              </blockquote>
              <div class="profile-circle margin_auto text-center"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/testmonial.png" alt="CEO" title="CEO" /></div>
            </div>
            <div class="item">
              <blockquote class="padding_bottom_100 border-radius-5">
                <p class="text-center color-white font-16">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas, quos eaque molestias odio aut eius animi.</p>
              </blockquote>
              <div class="profile-circle margin_auto text-center"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/testmonial.png" alt="CEO" title="CEO" /></div>
            </div>
            <div class="item">
              <blockquote class="padding_bottom_100 border-radius-5">
                <p class="text-center color-white font-16">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas, quos eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas, quos eaque molestias odio aut eius animi.</p>
              </blockquote>
              <div class="profile-circle margin_auto text-center"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/testmonial.png" alt="CEO" title="CEO" /></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Testimonial Section End ========= --> 

<!-- ========= Partners Section Start ========= -->

<section class="partners">
  <div class="container">
    <div class="row">
      <div class="col-md-2 col-sm-2 col-sm-12"> <img alt="Dummy Client" title="Dummy Client" src="{$WEB_ROOT}/templates/{$template}/custom/images/client1.gif"> </div>
      <div class="col-md-2 col-sm-2 col-sm-12"> <img alt="Dummy Client" title="Dummy Client" src="{$WEB_ROOT}/templates/{$template}/custom/images/client2.gif"> </div>
      <div class="col-md-2 col-sm-2 col-sm-12"> <img alt="Dummy Client" title="Dummy Client" src="{$WEB_ROOT}/templates/{$template}/custom/images/client3.gif"> </div>
      <div class="col-md-2 col-sm-2 col-sm-12"> <img alt="Dummy Client" title="Dummy Client" src="{$WEB_ROOT}/templates/{$template}/custom/images/client4.gif"> </div>
      <div class="col-md-2 col-sm-2 col-sm-12"> <img alt="Dummy Client" title="Dummy Client" src="{$WEB_ROOT}/templates/{$template}/custom/images/client5.gif"> </div>
      <div class="col-md-2 col-sm-2 col-sm-12"> <img alt="Dummy Client" title="Dummy Client" src="{$WEB_ROOT}/templates/{$template}/custom/images/client3.gif"> </div>
    </div>
  </div>
</section>

<!-- ========= Partners Section End ========= --> 