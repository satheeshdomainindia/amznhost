{include file="$template/includes/flashmessage.tpl"}
<div class="client-home-panels">
    <div class="row">
        <div class="col-md-12">
            {function name=outputHomePanelsAlerts}
                {if in_array($item->getName(), ["Overdue Invoices", "Unpaid Invoices", "Domains Expiring Soon"])}
                    <div menuItemName="{$item->getName()}" class="overdue-invoices alert alert-warning alert-faded alert-dismissible panel-accent-{$item->getExtra('color')}{if $item->getClass()} {$item->getClass()}{/if}"{if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>
                        {if $item->hasBodyHtml()}
                             <div class="alert-content">
                                <span class="alert-icon fas fa-exclamation-circle"></span> {$item->getBodyHtml()}
                            </div>
                        {/if}
                        <div class="alert-action">
                            {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                                <a href="{$item->getExtra('btn-link')}" data-toggle="tooltip" data-title="{$item->getExtra('btn-text')}" data-original-title="{$item->getExtra('btn-text')}" title="" class="pay-icon">
                                    {if $item->getExtra('btn-icon')}<i class="{$item->getExtra('btn-icon')}"></i>{/if}
                                   
                                </a>
                            {/if}
                            <a href="#" class="close" data-dismiss="alert" aria-label="close" data-toggle="tooltip" data-title="close" data-original-title="close"><i class="fas fa-times"></i></a>
                        </div>
                        <div class="custom-panel-footer">
                            {if $item->hasFooterHtml()}
                                {$item->getFooterHtml()}
                            {/if}
                        </div>
                    </div>
                 {/if}
            {/function}
            
            {foreach $panels as $item}
                {outputHomePanelsAlerts}
            {/foreach}
        </div>
    </div>
</div>



<div class="tiles clearfix client-dashboard-wrap">
    <div class="row">
        <div class="col-sm-3 col-xs-6" onclick="window.location='clientarea.php?action=services'">
            <a href="clientarea.php?action=services" class="client-dashboard-single">
                <i class="fas fa-cube"></i>
                <div class="icon-title-wrap">
                    <h2>{$clientsstats.productsnumactive}</h2>
                    <h5>{$LANG.navservices}</h5>
                </div>
            </a>
        </div>
        {if $registerdomainenabled || $transferdomainenabled}
            <div class="col-sm-3 col-xs-6" onclick="window.location='clientarea.php?action=domains'">
                <a href="clientarea.php?action=domains" class="client-dashboard-single">
                    <i class="fas fa-globe"></i>
                    <div class="icon-title-wrap">
                        <h2>{$clientsstats.numactivedomains}</h2>
                        <h5>{$LANG.navdomains}</h5>
                    </div>
                </a>
            </div>
        {elseif $condlinks.affiliates && $clientsstats.isAffiliate}
            <div class="col-sm-3 col-xs-6" onclick="window.location='affiliates.php'">
                <a href="affiliates.php" class="client-dashboard-single">
                    <i class="fas fa-shopping-cart"></i>
                    <div class="icon-title-wrap">
                        <h2>{$clientsstats.numaffiliatesignups}</h2>
                        <h5>{$LANG.affiliatessignups}</h5>
                    </div>
                </a>
            </div>
        {else}
            <div class="col-sm-3 col-xs-6" onclick="window.location='clientarea.php?action=quotes'">
                <a href="clientarea.php?action=quotes" class="client-dashboard-single">
                    <i class="far fa-file-alt"></i>
                    <div class="icon-title-wrap">
                        <h2>{$clientsstats.numquotes}</h2>
                        <h5>{$LANG.quotes}</h5>
                    </div>
                </a>
            </div>
        {/if}
        <div class="col-sm-3 col-xs-6" onclick="window.location='supporttickets.php'">
            <a href="supporttickets.php" class="client-dashboard-single">
                <i class="fas fa-comments"></i>
                <div class="icon-title-wrap">
                    <h2>{$clientsstats.numactivetickets}</h2>
                    <h5>{$LANG.navtickets}</h5>
                </div>
            </a>
        </div>
        <div class="col-sm-3 col-xs-6" onclick="window.location='clientarea.php?action=invoices'">
            <a href="clientarea.php?action=invoices" class="client-dashboard-single">
                <i class="fas fa-credit-card"></i>
                <div class="icon-title-wrap">
                    <h2>{$clientsstats.numunpaidinvoices}</h2>
                    <h5>{$LANG.navinvoices}</h5>
                </div>
            </a>
        </div>
    </div>
</div>


{foreach from=$addons_html item=addon_html}
    <div class="recommended-addon">
        {$addon_html}
    </div>
{/foreach}

<div class="client-home-panels">
    <div class="row">
        <div class="col-sm-6">
            {function name=outputHomePanels1}
                {if $item->getName() == 'Recent Support Tickets'}
                    <div menuItemName="{$item->getName()}" class="panel custom-panel-box">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                                    <div class="pull-right">
                                        <a href="{$item->getExtra('btn-link')}" data-toggle="tooltip" data-title="Open New Ticket" data-original-title="{$item->getExtra('btn-text')}" title="">
                                            {if $item->getExtra('btn-icon')}<i class="fas fa-plus"></i>{/if}
                                        </a>
                                    </div>
                                {/if}
                                {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                                {$item->getLabel()}
                                {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                            </h3>
                        </div>
                        {if $item->hasBodyHtml()}
                            <div class="panel-body">
                                {$item->getBodyHtml()}
                            </div>
                        {/if}
                        {if $item->hasChildren()}
                            <div class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                                {foreach $item->getChildren() as $childItem}
                                    {if $childItem->getUri()}
                                        <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
                                            {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                            {$childItem->getLabel()}
                                            {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                        </a>
                                    {else}
                                        <div menuItemName="{$childItem->getName()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                            {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                            {$childItem->getLabel()}
                                            {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                        </div>
                                    {/if}
                                {/foreach}
                            </div>
                        {/if}
                    <div class="custom-panel-footer">
                        {if $item->hasFooterHtml()}
                            {$item->getFooterHtml()}
                        {/if}
                    </div>
                </div>
                {/if}
                {if $item->getName() == 'Recent News'}
                    <div menuItemName="{$item->getName()}" class="panel custom-panel-box">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                                <div class="pull-right">
                                    <a href="{$item->getExtra('btn-link')}" data-toggle="tooltip" data-title="View All" data-original-title="{$item->getExtra('btn-text')}" title="">
                                        {if $item->getExtra('btn-icon')}<i class="fas fa-eye"></i>{/if}
                                    </a>
                                </div>
                            {/if}
                            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                            {$item->getLabel()}
                            {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                        </h3>
                    </div>
                    {if $item->hasBodyHtml()}
                        <div class="panel-body">
                            {$item->getBodyHtml()}
                        </div>
                    {/if}
                    {if $item->hasChildren()}
                        <div class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getUri()}
                                    <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </a>
                                {else}
                                    <div menuItemName="{$childItem->getName()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    {/if}
                    <div class="custom-panel-footer">
                        {if $item->hasFooterHtml()}
                            {$item->getFooterHtml()}
                        {/if}
                    </div>
                </div>
                {/if}
            {/function}

            {foreach $panels as $item}
                {outputHomePanels1} 
            {/foreach}

        </div>
        <div class="col-sm-6">
            {function name=outputHomePanels2}
                
                {if $item->getName() == 'Active Products/Services'}
                    <div menuItemName="{$item->getName()}" class="panel custom-panel-box">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                                <div class="pull-right">
                                    <a href="{$item->getExtra('btn-link')}" data-toggle="tooltip" data-title="View All" data-original-title="{$item->getExtra('btn-text')}" title="">
                                        {if $item->getExtra('btn-icon')}<i class="fas fa-eye"></i>{/if}
                                    </a>
                                </div>
                            {/if}
                            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                            {$item->getLabel()}
                            {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                        </h3>
                    </div>
                    {if $item->hasBodyHtml()}
                        <div class="panel-body">
                            {$item->getBodyHtml()}
                        </div>
                    {/if}
                    {if $item->hasChildren()}
                        <div class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getUri()}
                                    <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </a>
                                {else}
                                    <div menuItemName="{$childItem->getName()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    {/if}
                    <div class="custom-panel-footer">
                        {if $item->hasFooterHtml()}
                            {$item->getFooterHtml()}
                        {/if}
                    </div>
                </div>
                {/if}
                
                {if $item->getName() == 'Register a New Domain'}
                    <div menuItemName="{$item->getName()}" class="panel custom-panel-box custom-domain-register">
                        <h3 class="panel-title text-center text-white">{$item->getName()}</h3>
                    
                    {if $item->hasBodyHtml()}
                        <div class="panel-body">
                            {$item->getBodyHtml()}
                        </div>
                        <script>
                        if($(".custom-domain-register input[name='domain']").length > 0) {
                            $(".custom-domain-register input[name='domain']").attr("placeholder", "yourdomain.com");
                        }
                        </script>
                    {/if}
                    {if $item->hasChildren()}
                        <div class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getUri()}
                                    <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </a>
                                {else}
                                    <div menuItemName="{$childItem->getName()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    {/if}
                    <div class="custom-panel-footer">
                        {if $item->hasFooterHtml()}
                            {$item->getFooterHtml()}
                        {/if}
                    </div>
                </div>
                {/if}
                
                {if $item->getName() == 'Affiliate Program'}
                    <div menuItemName="{$item->getName()}" class="panel custom-panel-box">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                                <div class="pull-right">
                                    <a href="{$item->getExtra('btn-link')}"  data-toggle="tooltip" data-title="View All" data-original-title="{$item->getExtra('btn-text')}" title="">
                                        {if $item->getExtra('btn-icon')}<i class="fas fa-eye"></i>{/if}
                                    </a>
                                </div>
                            {/if}
                            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                            {$item->getLabel()}
                            {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                        </h3>
                    </div>
                    {if $item->hasBodyHtml()}
                        <div class="panel-body">
                            {$item->getBodyHtml()}
                        </div>
                    {/if}
                    {if $item->hasChildren()}
                        <div class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getUri()}
                                    <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </a>
                                {else}
                                    <div menuItemName="{$childItem->getName()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    {/if}
                    <div class="custom-panel-footer">
                        {if $item->hasFooterHtml()}
                            {$item->getFooterHtml()}
                        {/if}
                    </div>
                </div>
                {/if}
                {if $item->getName() == 'Your Files'}
                    <div menuItemName="{$item->getName()}" class="panel custom-panel-box">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                                <div class="pull-right">
                                    <a href="{$item->getExtra('btn-link')}" data-toggle="tooltip" data-title="View All" data-original-title="{$item->getExtra('btn-text')}" title="">
                                        {if $item->getExtra('btn-icon')}<i class="fas fa-eye"></i>{/if}
                                    </a>
                                </div>
                            {/if}
                            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                            {$item->getLabel()}
                            {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                        </h3>
                    </div>
                    {if $item->hasBodyHtml()}
                        <div class="panel-body">
                            {$item->getBodyHtml()}
                        </div>
                    {/if}
                    {if $item->hasChildren()}
                        <div class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getUri()}
                                    <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </a>
                                {else}
                                    <div menuItemName="{$childItem->getName()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    {/if}
                    <div class="custom-panel-footer">
                        {if $item->hasFooterHtml()}
                            {$item->getFooterHtml()}
                        {/if}
                    </div>
                </div>
                {/if}
            {/function}
            {foreach $panels as $item}
                 {outputHomePanels2}
            {/foreach}

        </div>
    </div>
</div>