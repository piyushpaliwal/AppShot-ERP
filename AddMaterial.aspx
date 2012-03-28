<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMaterial.aspx.cs" Inherits="WindingsIndia.AddAssembly" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <title>AppshotERP</title>
    <!-- Stylesheets -->
    <link href="Admin/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="Admin/css/visualize.css" rel="stylesheet" type="text/css" />
    <link href="Admin/css/datatables.css" rel="stylesheet" type="text/css" />
    <link href="Admin/css/buttons.css" rel="stylesheet" type="text/css" />
    <link href="Admin/css/checkboxes.css" rel="stylesheet" type="text/css" />
    <link href="Admin/css/inputtags.css" rel="stylesheet" type="text/css" />
    <link href="Admin/css/main.css" rel="stylesheet" type="text/css" />
    <link href="Admin/css/blitzer/jquery-ui-1.8.17.custom.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="Admin/css/ie.css" />
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <div id="gradient">
        <div id="stars">
            <div id="container">
                <header>
                    <!-- Logo -->
                    <h1 id="logo">
                        Admin Control Panel</h1>
                    <!-- User info -->
                    <%--<div id="userinfo">
              <img src="Admin/img/avatar.png" alt="Bram Jetten" />
              <div class="intro">
                Welcome Bram<br />
                You have <a href="#">3 new messages</a>
              </div>
            </div>--%>
                </header>
                <!-- The application "window" -->
                <div id="application">
                    <!-- Primary navigation -->
                    <nav id="primary">
                        <ul>
                            <li><a href="Home.aspx"><span class="icon dashboard"></span>Home </a></li>
                            <li><a href="IssueIndents.aspx"><span class="icon pencil"></span>Issue Indents </a>
                            </li>
                            <li><a href="MaterialInward.aspx"><span class="icon tables"></span>Material Inward</a></li>
                            <li class="current"><a href="AddMaterial.aspx"><span class="icon chart"></span>Add Material</a></li>
                            <li><a href="/notifications"><span class="icon modal"></span>Notifcations </a></li>
                            <li><a href="/gallery"><span class="icon gallery"></span>Gallery </a></li>
                            <li><a href="/buttons"><span class="icon anchor"></span>Icons/buttons </a></li>
                        </ul>
                        <input type="text" id="search" placeholder="Realtime search..." />
                    </nav>
                    <!-- Secondary navigation -->
                    <nav id="secondary">
                        <ul>
                            <li class="current"><a href="#RawMaterial">Raw Material</a></li>
                            <li><a href="#Assembly">Assembly</a></li>
                        </ul>
                    </nav>
                    <!-- The content -->
                    <section id="content">
                        <div id="RawMaterial" class="tab">
                            <h2>
                                Add New Raw Material</h2>
                            <div class="column left">
                                <section>
                                    <label for="txtRawMaterialID">
                                        Raw Material ID
                                    </label>
                                    <div>
                                        <input type="text" id="txtRawMaterialID" runat="server" />
                                    </div>
                                </section>
                                <section>
                                    <label for="txtDescription">
                                        Description
                                    </label>
                                    <div>
                                        <input type="text" id="txtDescription" runat="server" placeholder="Alpha Numeric"
                                            class="required" />
                                    </div>
                                </section>
                                <section>
                                    <label for="ddlUOM">
                                        Unit of Measurement
                                    </label>
                                    <div>
                                        <select id="ddlUOM" runat="server">
                                            <option value="none">--Select--</option>
                                            <option value="MTR">Meter</option>
                                            <option value="EA">Each</option>
                                            <option value="KG">Kilogram</option>
                                            <option value="LTR">Litre</option>
                                        </select>
                                    </div>
                                </section>
                                <section>
                                    <label for="txtCost">
                                        Part Cost
                                    </label>
                                    <div>
                                        <input type="text" id="txtCost" runat="server" placeholder="Only Numeric" class="required" />
                                    </div>
                                </section>
                            </div>
                            <div class="column right">
                                <section>
                                    <label for="txtPartStock">
                                        Part Stock
                                    </label>
                                    <div>
                                        <input type="text" id="txtPartStock" runat="server" placeholder="Only Numeric" class="required" />
                                    </div>
                                </section>
                                <section>
                                    <label for="txtReFill">
                                        Re-Fill Level
                                    </label>
                                    <div>
                                        <input type="text" id="txtReFill" runat="server" placeholder="Only Numbers" class="required" />
                                    </div>
                                </section>
                                <section id="modvatable">
                                    <label for="ddlModvatable">
                                        Modvatable
                                    </label>
                                    <div>
                                        <select id="ddlModvatable" runat="server">
                                            <option value="None">--Select--</option>
                                            <option value="yes">Yes</option>
                                            <option value="no">No</option>
                                        </select>
                                    </div>
                                </section>
                                <section id="teriff">
                                    <label for="txtTeriff">
                                        Terrif Classification
                                    </label>
                                    <div>
                                        <input type="text" id="txtTeriff" runat="server" placeholder="Only Numbers" class="required" />
                                    </div>
                                </section>
                            </div>
                            <div class="clear" style="text-align: center;">
                                <asp:HyperLink ID="btnRawProcess" CssClass="button icon approve" runat="server" NavigateUrl="javascript:AddRawMaterial();">Process</asp:HyperLink>
                                <asp:HyperLink ID="btnRawCancel" CssClass="button icon remove danger" runat="server" NavigateUrl="javascript:clear();">Cancel</asp:HyperLink>
                            </div>
                        </div>
                        <div id="Assembly" class="tab">
                            <h2>
                                Add New Assembly</h2>
                            <div class="column left third">
                                <section>
                                    <label for="txtPartNumber">
                                        Assembly ID
                                    </label>
                                    <div>
                                        <input type="text" id="txtAssmID" runat="server" />
                                    </div>
                                </section>
                                <section>
                                    <label for="txtWorkOrderNo">
                                        Work Order Number
                                    </label>
                                    <div>
                                        <input type="text" id="txtWorkOrderNo" runat="server" value="W4-01-001" class="required" />
                                    </div>
                                </section>
                                <section style="text-align: center;">
                                    <asp:LinkButton Text="Process" runat="server" ID="btnProcess" CssClass="button big icon approve" />
                                    <asp:LinkButton Text="Cancel" runat="server" ID="btnCancelAssembly" CssClass="button big icon remove danger" />
                                </section>
                            </div>
                            <div class="column right twothird">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <section>
                                            <label for="txtRawIdForAssembly">
                                                Raw Material ID
                                            </label>
                                            <div>
                                                <input type="text" id="txtRawIdForAssembly" runat="server" class="required" />
                                            </div>
                                        </section>
                                        <section>
                                            <label for="txtPartStock">
                                                Quantity
                                            </label>
                                            <div>
                                                <input type="text" id="txtQuantityForAssembly" runat="server" placeholder="Only Numeric"
                                                    class="required" />
                                            </div>
                                        </section>
                                        <section style="text-align: center;">
                                            <asp:LinkButton Text="Add Raw Material" runat="server" ID="btnAdd" 
                                                CssClass="button icon approve" onclick="btnAdd_Click" OnClientClick="javascript:Navigate();" />
                                            <asp:LinkButton Text="Clear" runat="server" ID="btnClear" CssClass="button icon remove danger" />
                                        </section>
                                        <asp:Repeater ID="rptRawMaterial" runat="server">
                                            <HeaderTemplate>
                                                <table id="tblRawMaterialsForAssembly" class="datatable">
                                                    <thead>
                                                        <tr class="center">
                                                            <th>
                                                                Raw Material ID
                                                            </th>
                                                            <th>
                                                                Quantity
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr class="center">
                                                    <td class="center">
                                                        <%# Eval("key") %>
                                                    </td>
                                                    <td>
                                                        <%# Eval("value") %>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </tbody> </table>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:PostBackTrigger ControlID="btnAdd"/>
                                    </Triggers>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </section>
                </div>
                <footer id="copyright">&copy; Copyrights. All rights reserved by Appshot.in</footer>
            </div>
        </div>
    </div>
</form>
    <!-- Javascripts -->
    <script src="Admin/js/jquery.js" type="text/javascript"></script>
    <script src="Admin/js/notifications.js" type="text/javascript"></script>
    <script src="Admin/js/excanvas.js" type="text/javascript"></script>
    <script src="Admin/js/jquery.checkboxes.js" type="text/javascript"></script>
    <script src="Admin/js/jquery.datatables.js" type="text/javascript"></script>
    <script src="Admin/js/jquery.inputtags.js" type="text/javascript"></script>
    <script src="Admin/js/jquery.livesearch.js" type="text/javascript"></script>    
    <script src="Admin/js/jquery.selectskin.js" type="text/javascript"></script>
    <script src="Admin/js/jquery.validate.js" type="text/javascript"></script>
    <script src="Admin/js/jquery.visualize.js" type="text/javascript"></script>
    <script src="Admin/js/jquery.wymeditor.js" type="text/javascript"></script>
    <script src="Admin/js/application.js" type="text/javascript"></script>
    <script src="Admin/js/jquery-ui-1.8.17.custom.min.js" type="text/javascript"></script>
    <script src="Admin/js/appshot.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            document.getElementById("teriff").style.display = 'none';
            document.getElementById("modvatable").style.borderBottom = 'none';

            $('#ddlModvatable').change(function () {
                var modvatable = $('#ddlModvatable').val();
                if (modvatable == 'yes') {
                    document.getElementById("teriff").style.display = '';
                    document.getElementById("modvatable").style.borderBottom = '';
                }
                else {
                    document.getElementById("teriff").style.display = 'none';
                    document.getElementById("modvatable").style.borderBottom = 'none';
                }
            });
        });
    </script>
    <script type="text/javascript">
        function AddRawMaterial() {
            var rawMaterialID = $('#txtRawMaterialID').val();
            var description = $('#txtDescription').val();
            var uom = $('#ddlUOM').val();
            var stock = $('#txtPartStock').val();
            var reFill = $('#txtReFill').val();
            var modvatable = $('#ddlModvatable').val();
            var teriff = $('#txtTeriff').val();
            var cost = $('#txtCost').val();
            $.ajax({
                type: "POST",
                url: "PageMethods.aspx/AddRawMaterial",
                data: "{'rawMaterialID':'" + rawMaterialID + "','description':'" + description + "','cost':'" + cost + "','uom':'" + uom + "','stock':'" + stock + "','reFill':'" + reFill + "','modvatable':'" + modvatable + "','teriff':'" + teriff + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    clear();
                    new Notification('Raw Material: ' + rawMaterialID + ' successfully added into the system.', 'information');
                },
                error: function (err) {
                    new Notification('Raw Material cannot be added due to the following error <br />' + err.responseText + '', 'error');
                }
            });
        }

        function clear() {
            $('#ddlModvatable').val('0');
            $('input[type=text]').val('');
            document.location.reload();
        }
    </script>
    <script type="text/javascript">
        $('#txtRawIdForAssembly').autocomplete({
            source: "BL/AppShotRawMaterialHandler.ashx",
            minLength: 2
        });

        function Navigate() {
        document.getElementById('secondary').childNodes[1].childNodes[3].setAttribute("class",'current');
        document.getElementById('secondary').childNodes[1].childNodes[3].childNodes[0].click();
        document.getElementById('secondary').childNodes[1].childNodes[1].removeAttribute("class");
        }
    </script>
</body>
</html>
