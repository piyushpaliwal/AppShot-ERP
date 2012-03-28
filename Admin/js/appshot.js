$('document').ready(function () {

    // Date Picker over Textbox
    $('#txtDate').datepicker();
    $('#txtRqstDate').datepicker();

    // Get Raw Material ID handler
    $('#txtRawMaterialID').autocomplete({
        source: "BL/AppShotRawMaterialHandler.ashx",
        minLength: 2
    });
    // Get Assembly ID Handler
    $('#txtAssmNo').autocomplete({
        source: "BL/AppShotAssemblyHandler.ashx",
        minLength: 2
    });
});
