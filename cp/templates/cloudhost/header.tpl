<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="{$charset}" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    {include file="$template/includes/head.tpl"}

    {include file="$template/includes/redcheap-seo.tpl"}



    {$headoutput}



</head>

<body data-phone-cc-input="{$phoneNumberInputStyle}" class="body-wraper {if in_array($templatefile, ['login', 'clientregister', 'password-reset-container', 'logout'])}auth-wrap{/if}">

{$headeroutput} 

{if !in_array($templatefile, ['login', 'clientregister', 'password-reset-container', 'logout'])}

<!-- ========= Header Section Start ========= -->



<header>

  <div class="top_header">

    <div class="container">

      <div class="row">

        <div class="col-md-6 col-sm-6 col-xs-12">

          <ul class="top_menu">

            <li><i class="fa fa-phone"></i>  (+91)9994799930 </li>

            <li><i class="fa fa-envelope"></i> <a href="mailto:support@amznhost.com">support@amznhost.com</a></li>

          </ul>

        </div>

        <div class="col-md-6 col-sm-6 col-xs-12">

          <div class="top_link pull-right">

            <ul>

              {if $languagechangeenabled && count($locales) > 1}

              <li class="register"><div class="language-menu ml-2">

              <button id="lang-btn"> {$activeLocale.localisedName} <i class="fa fa-angle-down ml-2 angle"></i> </button>

              <div class="menu text-center">

                <div class="head">change language</div>

                {foreach $locales as $locale}

                <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>

                 {/foreach}

                 </div>

                </div>

              </li>

              {/if}

              {if !$loggedin && count($multiCurrency) > 1}

                <li class="login"><div class="currency-menu ml-2">

                {foreach $multiCurrency as $currency}

                  {if $currency.id eq $selectedCurrency}

              <button id="currency-btn">{$currency.code}  <i class="fa fa-angle-down ml-2 angle"></i> </button>{/if}

                {/foreach}

              <div class="menu text-center">

                <div class="head">change Currency</div>

                {foreach $multiCurrency as $currency}

                {if $currency.id neq $selectedCurrency}

                  {if $isQueryExist eq true}

                  <a href="{$urlForCurrentcy}&currency={$currency.id}">{$currency.code}</a>

                  {else}

                  <a href="{$urlForCurrentcy}?currency={$currency.id}">{$currency.code}</a>

                  {/if}

                {/if}

              {/foreach}

                 </div>

            </div></li>

              {/if}

              {if $loggedin}

                <li class="login">

                    <a href="#" data-toggle="popover" id="accountNotifications" data-placement="bottom">

                        {$LANG.notifications}

                        {if count($clientAlerts) > 0}

                            <span class="label label-info">{lang key='notificationsnew'}</span>

                        {/if}

                        <b class="caret"></b>

                    </a>

                    <div id="accountNotificationsContent" class="hidden">

                        <ul class="client-alerts">

                        {foreach $clientAlerts as $alert}

                            <li>

                                <a href="{$alert->getLink()}">

                                    <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>

                                    <div class="message">{$alert->getMessage()}</div>

                                </a>

                            </li>

                        {foreachelse}

                            <li class="none">

                                {$LANG.notificationsnone}

                            </li>

                        {/foreach}

                        </ul>

                    </div>

                </li>

              {/if}

            </ul>

          </div>

          <div class="social_icon pull-right">

            <ul>

              <li class="facebook"><a target="_blank" href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a></li>

              <li class="twitter"><a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a></li>

              <li class="googleplus"><a target="_blank" href="http://plus.google.com"><i class="fab fa-google-plus"></i></a></li>

              <li class="linkedin"><a target="_blank" href="http://www.linkedin.com"><i class="fab fa-linkedin"></i></a></li>

              <li class="youtube"><a target="_blank" href="http://www.youtube.com"><i class="fab fa-youtube"></i></a></li>

            </ul>

          </div>

        </div>

      </div>

    </div>

  </div>

  <div class="clearfix"></div>

  <div id="header" class="padding_tb_20">

    <div class="container">

      <div class="row">

        <div class="col-md-12">

          <div class="logo padding_right_50"> <a href="{$WEB_ROOT}"><img id="logo" src="{$WEB_ROOT}/templates/{$template}/custom/images/logo.png" alt="{$companyname}" title="{$companyname}"></a> </div>

          <div class="header-right clearfix">

            <div class="main-navigation animated">

              <nav class="navbar yamm navbar-default" role="navigation">

                <div class="navbar-header">

                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>

                </div>

                <div class="collapse navbar-collapse scrollspy smooth-scroll pull-right no_padding" id="navbar-collapse-1">

                  <ul class="nav navbar-nav">

                    {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}

                  </ul>

                  <ul class="nav navbar-nav navbar-right login active">

                    {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}

                  </ul>

                </div>

              </nav>

            </div>

          </div>

        </div>

      </div>

    </div>

  </div>

</header>



<!-- ========= Header Section End ========= --> 

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



{if $templatefile == 'homepage'}

{else}

{include file="$template/includes/redcheap-pageheader.tpl"}

{include file="$template/includes/verifyemail.tpl"}



<section id="main-body">

    {if !in_array($templatefile, ['login', 'clientregister', 'password-reset-container', 'logout'])}

    <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">

        <div class="row">

            {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}

                <div class="col-md-3 pull-md-left sidebar">

                    {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}

                </div>

            {/if}



            <!-- Container for main page display content -->

            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">

    {/if}

    {/if}

{/if}

