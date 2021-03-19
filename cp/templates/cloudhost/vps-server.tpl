<!-- ========= Inner Page Banner Start ========= -->

<section class="page_banner">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <h1 class="color-white text-uppercase">Virtual Private <strong> Server</strong></h1>
        <p class="color-white padding_top_20">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has <br>
          been the industry's standard dummy text.</p>
      </div>
    </div>
  </div>
</section>

<!-- ========= Inner Page Banner End ========= --> 

<!-- ========= Pricing Table Start ========= -->

{if count($vpsproducts) gt 0 && ($vpsproducts.0.monthly gt 0 || $vpsproducts.0.annually gt 0 || $vpsproducts.0.biennially gt 0 || $vpsproducts.0.triennially gt 0)}
<section class="pricing_table bottom_padding_xs">
  <div class="container">
    <div class="row">
      {foreach $vpsproducts as $myproduct}
      <div class="col-md-3 col-sm-3 col-xs-12">
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

<section class="bottom_padding text-center">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100">
          <h2 class="no_margin no_padding text-uppercase color-black">Our <span>Technical Features</span></h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="services_boxs">
          <div class="sboxs">
            <div class="sboxs_f border-radius-5"><i class="fa fa-database font-40" aria-hidden="true"></i>
              <h5 class="padding_top_20">Plesk Onyx</h5>
            </div>
            <div class="sboxs_b border-radius-5">
              <table>
                <tbody>
                  <tr>
                    <td><h5 class="margin_bottom_20">Plesk Onyx</h5>
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
              <h5 class="padding_top_20">DDoS Protection</h5>
            </div>
            <div class="sboxs_b border-radius-5">
              <table>
                <tbody>
                  <tr>
                    <td><h5 class="margin_bottom_20">DDoS Protection</h5>
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
              <h5 class="padding_top_20">Data Security</h5>
            </div>
            <div class="sboxs_b border-radius-5">
              <table>
                <tbody>
                  <tr>
                    <td><h5 class="margin_bottom_20">Data Security</h5>
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
              <h5 class="padding_top_20">DDR3 ECC RAM</h5>
            </div>
            <div class="sboxs_b border-radius-5">
              <table>
                <tbody>
                  <tr>
                    <td><h5 class="margin_bottom_20">DDR3 ECC RAM</h5>
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

<!-- ========= Why Chhose Start ========= -->

<section class="background-grey text-center bottom_padding_xs">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="heading padding_bottom_100">
          <h2 class="no_margin no_padding text-uppercase color-black">Why <span>Domain VPS</span></h2>
          <p class="padding_top_20 color-grey">Magna eget scelerisque metus dictum Nunc enim Sed massa massa in neque</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="right_icon_box border-radius-5 padding_50">
          <div class="icon_right border-radius-5"><i class="fas fa-check-square color-white font-32" aria-hidden="true"></i></div>
          <h5 class="padding_tb_20">SAN Storage</h5>
          <p class="font-14 color-grey">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="right_icon_box border-radius-5 padding_50">
          <div class="icon_right border-radius-5"><i class="fa fa-phone-square color-white font-32" aria-hidden="true"></i></div>
          <h5 class="padding_tb_20">Full Scalability</h5>
          <p class="font-14 color-grey">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="right_icon_box border-radius-5 padding_50">
          <div class="icon_right border-radius-5"><i class="fa fa-mobile color-white font-32" aria-hidden="true"></i></div>
          <h5 class="padding_tb_20">Load Balancing</h5>
          <p class="font-14 color-grey">Lorem Ipsum is simply dummy text of the printing and industry Lorem Ipsum has been the industry's standard dummy text.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ========= Why Chhose End ========= --> 