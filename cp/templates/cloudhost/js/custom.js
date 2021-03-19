
function hideWhmcs() {
    var poweredBySelector = $("p:contains('Powered by')");
    if(poweredBySelector.length) {
        poweredBySelector.hide();
    }
}
hideWhmcs();

// order form update summary
$("#frmConfigureProduct").on("change", "select", function () {
    recalctotals()
});

// order form update summary
$("#frmConfigureProduct .radioBillingcycle").on("ifChecked", "input", function () {
    var itemIndex  = $(this).closest("label").data("config-i");
    var billingVal = $(this).closest("label").data("config-value");
    WHMCS.http.jqClient.post("cart.php", "a=cyclechange&ajax=1&i=" + itemIndex + "&billingcycle=" + billingVal, function (e) {
        $("#productConfigurableOptions")
          .html($(e).find("#productConfigurableOptions").html())
          .promise()
          .done(function () {})
    });
      
    setTimeout(function () {
        recalctotals()
    }, 150)
});

// order form update summary
jQuery("#frmConfigureProduct .selectBillingCycle")
    .not("#inputBillingcycle")
    .on("ifChecked", "input", function () {
      recalctotals()
});

// order form update summary
jQuery("#frmConfigureProduct .selectBillingCycle")
    .not("#inputBillingcycle")
    .on("ifUnchecked", 'input[type="checkbox"]', function () {
      recalctotals()
});