<div class="container">
    <div class="row">
        <div class="auth-content-wrap main-content col-sm-12">
            <div class="logincontainer">
                <div class="auth-body">
                    <div class="header-lined auth-header text-center">
                        {if $assetLogoPath}
                            <a href="{$WEB_ROOT}/index.php" class="logo"><img src="{$assetLogoPath}" width="120" class="img-responsive" alt="{$companyname}"></a>
                        {else}
                            <a href="{$WEB_ROOT}/index.php" class="logo logo-text">{$companyname}</a>
                        {/if}
                        <h1>{$LANG.pwreset}</h1>
                    </div>
    
                    {if $loggedin && $innerTemplate}
                        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.noPasswordResetWhenLoggedIn textcenter=true}
                    {else}
                        {if $successMessage}
                            {include file="$template/includes/alert.tpl" type="success" msg=$successTitle textcenter=true}
                            <p>{$successMessage}</p>
                        {else}
                            {if $errorMessage}
                                {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
                            {/if}
    
                            {if $innerTemplate}
                                {include file="$template/password-reset-$innerTemplate.tpl"}
                            {/if}
                        {/if}
                    {/if}
                </div>
                <div class="text-center auth-footer mt-20"> Don't have an account yet? <a href="{$WEB_ROOT}/register.php">{$LANG.register}</a> </div>
            </div>

        </div>
    </div>
</div>
