<link href="{$WEB_ROOT}/templates/{$template}/store/css/style.css" rel="stylesheet">

<div class="landing-page sitelock">

    <div class="content-block gradient-bg">
        <div class="container">
             <div class="row">
                <div class="section-title text-center">
                    <h2 class="text-white">{lang key="store.sitelock.tagline"}</h2>
                </div>
            </div>
            <br>
            <div class="row row-eq-height">
                <div class="col-sm-5">
                    <div class="white-bg sitelock-bg">
                        <img src="{$WEB_ROOT}/assets/img/marketconnect/sitelock/logo.png" class="img-responsive">
                    </div>
                </div>
                <div class="col-sm-7">
                    <div class="sitelock-content text-white">
                        <h3 class="text-white">Website security &amp; malware protection for your website</h3>
                        <p>SiteLock&trade;, the global leader in website security, protects your website to give you peace of mind.</p>
    
                        <p>SiteLock's Daily Malware Scanning identifies vulnerabilities and known malicious code and automatically removes it from your website to protect your website and visitors against threats.</p>
            
                        <p>Plus you get the SiteLock Trust Seal which builds customer confidence and is proven to increase sales and conversion rates.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="content-block plans gray-light-bg" id="plans">
        <div class="container">

            {if !$loggedin && $currencies}
                <form method="post" action="" class="pull-right">
                    <select name="currency" class="form-control currency-selector" onchange="submit()">
                        <option>{lang key="changeCurrency"} ({$activeCurrency.prefix} {$activeCurrency.code})</option>
                        {foreach $currencies as $currency}
                            <option value="{$currency['id']}">{$currency['prefix']} {$currency['code']}</option>
                        {/foreach}
                    </select>
                </form>
            {/if}
            <div class="row">
                <div class="section-title text-center">
                    <h2>Compare SiteLock Plans</h2>
                    <p class="lead">Professional security features for your website</p>
                </div>
            </div>

            <div class="row plan-comparison">
                {foreach $plans as $plan}
                    <div class="col-lg-{if count($plans) == 4}3{elseif count($plans) == 3}4{elseif count($plans) == 2}6{else}12{/if} col-md-{if count($plans) == 3}4{/if} col-sm-6">
                        <div class="plan text-center single-pricing-pack">
                            <div class="top">
                                <h5 class="mb-0">{$plan->name}</h5>
                                <p class="mb-0">{$plan->description}</p>
                            </div>
                            <div class="header">
                                <h4 class="text-white mb-0">
                                    {if $plan->isFree()}
                                        FREE
                                    {elseif $plan->pricing()->annually()}
                                        {$plan->pricing()->annually()->toPrefixedString()}
                                    {elseif $plan->pricing()->first()}
                                        {$plan->pricing()->first()->toPrefixedString()}
                                    {else}
                                        -
                                    {/if}
                                </h4>
                            </div>
                            <ul class="pricing-feature-list">
                                {foreach $plan->features as $label => $value}
                                    <li>
                                        {if is_bool($value)}
                                            <i class="fal fa-{if $value}check{else}times{/if}"></i>
                                        {else}
                                            <span>{$value}</span>
                                        {/if}
                                        {$label}
                                    </li>
                                {/foreach}
                            </ul>
                            <div class="footer">
                                <form method="post" action="{routePath('cart-order')}">
                                    <input type="hidden" name="pid" value="{$plan->id}">
                                    <select name="billingcycle" class="form-control">
                                        {foreach $plan->pricing()->allAvailableCycles() as $cycle}
                                            <option value="{$cycle->cycle()}">
                                                {if $cycle->isRecurring()}
                                                    {if $cycle->isYearly()}
                                                        {$cycle->cycleInYears()}
                                                    {else}
                                                        {$cycle->cycleInMonths()}
                                                    {/if}
                                                    -
                                                {/if}
                                                {$cycle->toFullString()}</option>
                                        {/foreach}
                                    </select>
                                    <button type="submit" class="btn primary-solid-btn btn-block">Purchase now</button>
                                </form>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>

        </div>
    </div>

    <div class="content-block features" id="features">
        <div class="container">

           <div class="row">
               <div class="text-center">
                    <h2>SiteLock Features</h2>
                    <p class="lead">Provides a range of features designed to protect both your website and your business’ reputation:</p>
               </div>
           </div>
            <div class="row row-eq-height">
                <div class="col-md-6 col-lg-4">
                    <div class="features-box border p-4 rounded">
                        <i class="fal fa-search fa-fw"></i>
                        <div class="content">
                            <h5>Malware Scan</h5>
                            <p>Proactively monitors for and alerts you about any malware that is detected on your website.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box border p-4 rounded">
                        <i class="fal fa-wrench fa-fw"></i>
                        <div class="content">
                            <h5>Automatic malware removal</h5>
                            <p>If a scan finds anything, SiteLock will safely remove any known malware automatically.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box border p-4 rounded">
                        <i class="fal fa-code fa-fw"></i>
                        <div class="content">
                            <h5>Vulnerability Scan</h5>
                            <p>Automatically checks your applications to ensure they're up-to-date and secured against known vulnerabilities.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box border p-4 rounded">
                        <i class="fal fa-file-code fa-fw"></i>
                        <div class="content">
                            <h5>OWASP Protection</h5>
                            <p>Get protection against the top 10 web app security flaws as recognised by OWASP, the Open Web Application Security Project.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box border p-4 rounded">
                        <i class="fal fa-trophy fa-fw"></i>
                        <div class="content">
                            <h5>SiteLock&trade; Trust Seal</h5>
                            <p>Give your visitors added confidence by showing your website is protected by SiteLock.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box border p-4 rounded">
                        <i class="fal fa-shield-alt fa-fw"></i>
                        <div class="content">
                            <h5>Firewall</h5>
                            <p>The TrueShield&trade; Web Application Firewall protects your website against hackers and attacks.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box border p-4 rounded">
                        <i class="fal fa-lock fa-fw"></i>
                        <div class="content">
                            <h5>Protect your reputation</h5>
                            <p>Daily scans help detect malware early before search engines have a chance to find it and blacklist your site.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box border p-4 rounded">
                        <i class="fal fa-star fa-fw"></i>
                        <div class="content">
                            <h5>Fast automated setup</h5>
                            <p>Instant and fully automated setup gives you protection immediately without anything to install.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box border p-4 rounded">
                        <i class="fal fa-globe fa-fw"></i>
                        <div class="content">
                            <h5>Content Delivery Network (CDN)</h5>
                            <p>Speed up your website by distributing it globally and serving it to your visitors from the closest location for faster page load speeds wherever they are.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {if !is_null($emergencyPlan)}
    <div class="content-block emergency" id="emergency">
        <div class="container">

            <div class="row">
                <div class="section-title text-center">
                    <h2 class="text-white">Website Hacked?</h2>
                    <p class="lead text-white">Fix it now with SiteLock Emergency Response. If your website has been attacked and compromised get immediate emergency assistance to quickly recover your site. Here's how SiteLock Emergency Response helps:</p>
                </div>
            </div>

            <div class="row row-eq-height">
                <div class="col-md-6 col-lg-4">
                    <div class="features-box mt-4 text-center border rounded p-4 gray-light-bg">
                        <i class="fal fa-clock fa-fw"></i>
                        <div class="content">
                            <h5>Immediate response</h5>
                            <p>Get our fastest response time with analysis and work to recover your site started within 30 minutes.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box mt-4 text-center border rounded p-4 gray-light-bg">
                        <i class="fal fa-times fa-fw"></i>
                        <div class="content">
                            <h5>Complete malware removal</h5>
                            <p>If our automatic technology is unable to remove the malicious content we'll perform manual cleaning.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box mt-4 text-center border rounded p-4 gray-light-bg">
                        <i class="fal fa-exclamation-circle fa-fw"></i>
                        <div class="content">
                            <h5>Priority treatment</h5>
                            <p>With the emergency package you get fast tracked straight to the top of the queue.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box mt-4 text-center border rounded p-4 gray-light-bg">
                        <i class="fal fa-calendar-check fa-fw"></i>
                        <div class="content">
                            <h5>7 day aftercare</h5>
                            <p>We'll continue to monitor your site for 7 days to ensure that your site remains malware-free post recovery.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box mt-4 text-center border rounded p-4 gray-light-bg">
                        <i class="fal fa-envelope fa-fw"></i>
                        <div class="content">
                            <h5>Real-time updates</h5>
                            <p>Track progress with our real-time updates throughout the process of cleaning and recovering your site.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="features-box mt-4 text-center border rounded p-4 gray-light-bg">
                        <i class="fal fa-star fa-fw"></i>
                        <div class="content">
                            <h5>One-off payment</h5>
                            <p>The emergency service is available for a single one-off fee, there's no recurring fees or subscription.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="clearfix mt-20 text-center">
                <div class="price text-white">
                    Only {if $emergencyPlan->pricing()->best()}{$emergencyPlan->pricing()->best()->toFullString()}{else}-{/if} for 7 days of protection
                </div>
                <br>
                <form method="post" action="{routePath('cart-order')}">
                    <input type="hidden" name="pid" value="{$emergencyPlan->id}">
                    <button type="submit" class="btn outline-primary-btn">
                        Buy Now
                    </button>
                </form>
            </div>

        </div>
    </div>
    {/if}

    <div class="content-block faq gray-light-bg" id="faq">
        <div class="container">
             <div class="row">
                <h2 class="text-center section-title">Frequently Asked Questions</h2>
            </div>
            <div class="row d-flex justify-center">
                <div class="col-md-10">
                    <div id="accordion" class="accordion faq-wrap">
                        <div class="card mb-3">
                            <a class="card-header " data-toggle="collapse" href="#collapse0" aria-expanded="false">
                                <h6 class="mb-0 d-inline-block">What is SiteLock?</h6>
                            </a>
                            <div id="collapse0" class="collapse show" data-parent="#accordion" style="">
                                <div class="card-body white-bg">
                                    <p>SiteLock provides simple, fast and affordable website security to websites of all sizes. Founded in 2008, the company protects over 12 million websites worldwide. The SiteLock cloud-based suite of products offers automated website vulnerability detection and malware removal, DDoS protection, website acceleration, website risk assessments, and PCI compliance.
                            <br><br>
                            To learn more about SiteLock, <a href="https://vimeo.com/164301190" target="_blank">watch the 'How SiteLock Works' video by clicking here</a>.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card my-3">
                            <a class="card-header collapsed" data-toggle="collapse" href="#collapse1" aria-expanded="false">
                                <h6 class="mb-0 d-inline-block">What does SiteLock do?</h6>
                            </a>
                            <div id="collapse1" class="collapse " data-parent="#accordion" style="">
                                <div class="card-body white-bg">
                                    <p>SiteLock provides comprehensive website security. It performs website daily scans to identify vulnerabilities or malware. When vulnerabilities or malware are found, you will be alerted immediately. Based on your SiteLock scanner, it will automatically remove any malware on your website.  For content management system (CMS) websites, SiteLock can automatically patch found vulnerabilities.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card my-3">
                            <a class="card-header collapsed" data-toggle="collapse" href="#collapse2" aria-expanded="false">
                                <h6 class="mb-0 d-inline-block">What types of issues does SiteLock scan for?</h6>
                            </a>
                            <div id="collapse2" class="collapse " data-parent="#accordion" style="">
                                <div class="card-body white-bg">
                                    <p>SiteLock has the technology to perform a comprehensive website scan that encompasses:</p>
                                    <br>
                                    <ul>
                                        <li><Strong>File-based Malware Scanning and Removal:</Strong> SiteLock performs daily scans of a website's files for malware. If malware is found, the website owner is alerted immediately. SiteLock also offers comprehensive scans to automatically remove the malware.</li>
                                        <li><strong>Vulnerability Scanning:</strong> SiteLock performs scans of website applications for common vulnerabilities that could lead to a compromise.</li>
                                        <li><strong>Application Security and Vulnerability Patching:</strong> SiteLock has the technology to automatically patch vulnerabilities in content management systems (CMS).</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-3">
                            <a class="card-header collapsed" data-toggle="collapse" href="#collapse3" aria-expanded="false">
                                <h6 class="mb-0 d-inline-block">What are vulnerabilities and malware?</h6>
                            </a>
                            <div id="collapse3" class="collapse " data-parent="#accordion" style="">
                                <div class="card-body white-bg">
                                   <p> A <strong>website vulnerability</strong> is a weakness or misconfiguration in a website or web application code that allows an attacker to gain some level of control of the site, and possibly the hosting server. Most vulnerabilities are exploited through automated means, such as vulnerability scanners and botnets.
                                    <br><br>
                                    <strong>Malware</strong>, short for malicious software, is used to gather sensitive data, gain unauthorized access to websites and even hijack computers.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-3">
                            <a class="card-header collapsed" data-toggle="collapse" href="#collapse4" aria-expanded="false">
                                <h6 class="mb-0 d-inline-block">Will SiteLock impact website performance?</h6>
                            </a>
                            <div id="collapse4" class="collapse " data-parent="#accordion" style="">
                                <div class="card-body white-bg">
                                    <p>No. During a website scan, SiteLock downloads the relevant files to a secure server and performs scans there. There is no impact to the website content, code, bandwidth or server resources on the website.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-3">
                            <a class="card-header collapsed" data-toggle="collapse" href="#collapse5" aria-expanded="false">
                                <h6 class="mb-0 d-inline-block">What is the SiteLock Trust Seal?</h6>
                            </a>
                            <div id="collapse5" class="collapse " data-parent="#accordion" style="">
                                <div class="card-body white-bg">
                                    <p>The SiteLock Trust Seal is a widely-recognized security badge you can display on your website. It is a clear indication that your website is secure and malware-free. To add the seal to your website, simply include the code snippet that SiteLock provides in the footer area of your website.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
