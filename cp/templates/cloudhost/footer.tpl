{if $filename != 'about-us' 

&& $filename != 'cloud-hosting' 

&& $filename != 'dedicated-server' 

&& $filename != 'domain-search' 

&& $filename != 'legal-agreement' 

&& $filename != 'privacy-policy' 

&& $filename != 'reseller-hosting' 

&& $filename != 'shared-hosting' 

&& $filename != 'transfer-domain' 

&& $filename != 'vps-server' 

&& $filename != 'wordpress-hosting'}





                </div><!-- /.main-content -->

                {if !$inShoppingCart && $secondarySidebar->hasChildren()}

                    <div class="col-md-3 pull-md-left sidebar sidebar-secondary">

                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}

                    </div>

                {/if}

            <div class="clearfix"></div>

        </div>

    </div>

</section>

{/if}



{if !in_array($templatefile, ['login', 'clientregister', 'password-reset-container', 'logout'])}



<!-- ========= Footer Section Start ========= -->



<footer class="footer">

  <div class="container">

    <div class="row">

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

        <div class="about">

          <div class="footer_logo padding_top_60"><a href="{$WEB_ROOT}"><img src="{$WEB_ROOT}/templates/{$template}/custom/images/footer-logo.png" alt="{$companyname}" title="{$companyname}" /></a></div>

        </div>

      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

        <ul class="footer_menu">

          <li><a href="{$WEB_ROOT}">Home</a></li>

          <li><a href="{$WEB_ROOT}/about-us.php">About Us</a></li>

          <li><a href="{$WEB_ROOT}/contact.php">Contact</a></li>

          <li><a href="{$WEB_ROOT}/domain-search.php">Domain Search</a></li>

          <li><a href="{$WEB_ROOT}/domain-transfer.php">Domain Transfer</a></li>

        </ul>

      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

        <ul class="footer_menu">

          <li><a href="{$WEB_ROOT}/shared-hosting.php">Shared Hosting</a></li>

          <li><a href="{$WEB_ROOT}/reseller-hosting.php">Reseller Hosting</a></li>

          <li><a href="{$WEB_ROOT}/wordpress-hosting.php">WordPress Hosting</a></li>

          <li><a href="{$WEB_ROOT}/dedicated-server.php">Dedicated Server</a></li>

          <li><a href="{$WEB_ROOT}/vps.php">VPS</a></li>

          <li><a href="{$WEB_ROOT}/cloud-hosting.php">Cloud Hosting</a></li>

        </ul>

      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">

        <div class="footerp">

          <p><strong>Helpline Numbers</strong></p>

          <p class="padding_top_10">+91-99947 99930</p>

          <p class="padding_top_10"><strong>Address</strong></p>

          <p class="padding_top_10">35,Muthiyan Kovil, 2nd Street, Velliyankadu, Tirupur-641604</p>

          <p class="padding_top_10"><strong>Email</strong></p>

          <p class="padding_top_10"><a href="mailto:info@amznhost.com">info@amznhost.com</a></p>

        </div>

      </div>

    </div>

  </div>

</footer>

<div class="footer-bottom padding_tb_20">

  <div class="container">

    <div class="row">

      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

        <p class="font-14 color-grey">{lang key="copyrightFooterNotice" year=$date_year company=$companyname}</p>

      </div>

      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

        <div class="payment_icon text-right"><i class="fab fa-cc-visa color-grey font-40" aria-hidden="true"></i><i class="fab fa-cc-paypal color-grey font-40" aria-hidden="true"></i><i class="fab fa-cc-discover color-grey font-40" aria-hidden="true"></i><i class="fab fa-cc-mastercard color-grey font-40" aria-hidden="true"></i></div>

      </div>

    </div>

  </div>

</div>



<!-- ========= Footer Section End ========= --> 

{/if}



{if $filename != 'about-us' 

&& $filename != 'cloud-hosting' 

&& $filename != 'dedicated-server' 

&& $filename != 'domain-search' 

&& $filename != 'legal-agreement' 

&& $filename != 'privacy-policy' 

&& $filename != 'reseller-hosting' 

&& $filename != 'shared-hosting' 

&& $filename != 'transfer-domain' 

&& $filename != 'vps-server' 

&& $filename != 'wordpress-hosting'}



<div id="fullpage-overlay" class="hidden">

    <div class="outer-wrapper">

        <div class="inner-wrapper">

            <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">

            <br>

            <span class="msg"></span>

        </div>

    </div>

</div>



<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">

    <div class="modal-dialog">

        <div class="modal-content panel-primary">

            <div class="modal-header panel-heading">

                <button type="button" class="close" data-dismiss="modal">

                    <span aria-hidden="true">&times;</span>

                    <span class="sr-only">{$LANG.close}</span>

                </button>

                <h4 class="modal-title"></h4>

            </div>

            <div class="modal-body panel-body">

                {$LANG.loading}

            </div>

            <div class="modal-footer panel-footer">

                <div class="pull-left loader">

                    <i class="fas fa-circle-notch fa-spin"></i>

                    {$LANG.loading}

                </div>

                <button type="button" class="btn btn-default" data-dismiss="modal">

                    {$LANG.close}

                </button>

                <button type="button" class="btn btn-primary modal-submit">

                    {$LANG.submit}

                </button>

            </div>

        </div>

    </div>

</div>

{/if}







{include file="$template/includes/generate-password.tpl"}



{$footeroutput}



<script src="{$WEB_ROOT}/templates/{$template}/js/custom.js?v={$versionHash}"></script>



{literal} 

<script>

$('#lang-btn').on('click', function () {

$('.language-menu .menu').toggleClass('show');

});

$(document).mouseup(function (e) {

var container = $(".language-menu .menu");



// if the target of the click isn't the container nor a descendant of the container

if (!container.is(e.target) && container.has(e.target).length === 0) {

  container.removeClass('show');

}

});



$('#currency-btn').on('click', function () {

$('.currency-menu .menu').toggleClass('show');

});

$(document).mouseup(function (e) {

var container = $(".currency-menu .menu");



// if the target of the click isn't the container nor a descendant of the container

if (!container.is(e.target) && container.has(e.target).length === 0) {

  container.removeClass('show');

}

});



</script>

{/literal}



</body>

</html>

