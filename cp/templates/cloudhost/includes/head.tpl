<!-- Styling -->
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
{assetExists file="custom.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
    var csrfToken = '{$token}',
        markdownGuide = '{lang key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang key="markdown.saved"}',
        saving = '{lang key="markdown.saving"}',
        whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
        requiredText = '{lang key="orderForm.required"}',
        recaptchaSiteKey = "{if $captcha}{$captcha->recaptcha->getSiteKey()}{/if}";
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}

<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/custom/css/all.css" media="all" />

<!-- Main Template CSS -->
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/custom/css/style.css" media="all" />

<!-- Default Color CSS -->

<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/custom/css/color/default.css" media="all" />


<!-- Green Color CSS -->

<!--<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/custom/css/color/green.css" media="all" />-->


<!-- Orange Color CSS -->

<!--<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/custom/css/color/orange.css" media="all" />-->


<!-- Yellow Color CSS -->

<!--<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/custom/css/color/yellow.css" media="all" />-->


<!-- Peache Color CSS -->

<!--<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/custom/css/color/peach.css" media="all" />-->


<!-- Purple Color CSS -->

<!--<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/custom/css/color/purple.css" media="all" />-->


<!-- Blue Color CSS -->

<!--<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/custom/css/color/blue.css" media="all" />-->


<!-- Oive Color CSS -->

<!--<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/custom/css/color/olive.css" media="all" />-->