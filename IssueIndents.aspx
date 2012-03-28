<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IssueIndents.aspx.cs" Inherits="WindingsIndia.IssueIndents" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE, NO-STORE" />
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
    <div id="gradient">
        <div id="stars">
            <div id="container">
                <header>
                    <!-- Logo -->
                    <h1 id="logo">
                        Admin Control Panel</h1>
                </header>
                <!-- The application "window" -->
                <div id="application">
                    <!-- Primary navigation -->
                    <nav id="primary">
                        <ul>
                            <li><a href="Home.aspx"><span class="icon dashboard"></span>Home </a></li>
                            <li class="current"><a href="IssueIndents.aspx"><span class="icon pencil"></span>Issue
                                Indents </a></li>
                            <li><a href="MaterialInward.aspx"><span class="icon tables"></span>Material Inward</a></li>
                            <li><a href="/charts"><span class="icon chart"></span><span class="badge">4</span> Charts
                            </a></li>
                            <li><a href="/notifications"><span class="icon modal"></span>Notifcations </a></li>
                            <li><a href="/gallery"><span class="icon gallery"></span>Gallery </a></li>
                            <li><a href="/buttons"><span class="icon anchor"></span>Icons/buttons </a></li>
                        </ul>
                        <input type="text" id="search" placeholder="Realtime search..." />
                    </nav>
                    <!-- Secondary navigation -->
                    <nav id="secondary">
                        <ul>
                            <li class="current"><a href="#maintab">Issue Indents</a></li>
                        </ul>
                    </nav>
                    <!-- The content -->
                    <section id="content">
                        <div id="maintab" class="tab">
                            <h2>
                                Issue Indents</h2>
                            <div class="column left ">
                                <section>
                                    <label for="txtIndentNumber">
                                        Indent Number
                                    </label>
                                    <div>
                                        <input id="txtIndentNumber" disabled runat="server" type="text" tabindex="1" />
                                    </div>
                                </section>
                                <section>
                                    <label for="txtRqstDate">
                                        Request Date
                                    </label>
                                    <div>
                                        <input id="txtRqstDate" tabindex="2" type="text" placeholder="Only Date" class="required"
                                            runat="server" />
                                    </div>
                                </section>
                                <section>
                                    <label for="txtDepartment">
                                        Department
                                    </label>
                                    <div>
                                        <input id="txtDepartment" disabled type="text" value="Purchase" class="required"
                                            runat="server" />
                                    </div>
                                </section>
                                <section>
                                    <label for="txtReason">
                                        Reason
                                    </label>
                                    <div>
                                        <input id="txtReason" type="text" value="Planned Production" class="required" disabled
                                            runat="server" />
                                    </div>
                                </section>
                            </div>
                            <div class="column right ">
                                <section>
                                    <label for="txtAssmNo">
                                        Assembly Number
                                    </label>
                                    <div>
                                        <input id="txtAssmNo" type="text" placeholder="Only Letters" class="required" runat="server"
                                            tabindex="3" />
                                    </div>
                                </section>
                                <section>
                                    <label for="txtWONunber">
                                        Work Order Number
                                    </label>
                                    <div>
                                        <input id="txtWONumber" type="text" placeholder="Only Letters" class="required" runat="server"
                                            tabindex="4" />
                                    </div>
                                </section>
                                <section>
                                    <label for="txtQuantity">
                                        Request Quantity
                                    </label>
                                    <div>
                                        <input id="txtQuantity" type="text" placeholder="Only Numbers" class="required" runat="server"
                                            tabindex="5" />
                                    </div>
                                </section>
                                <section>
                                    <label for="ddlVendor">
                                        Vendor
                                    </label>
                                    <div>
                                        <select runat="server" id="ddlVendor" tabindex="6">
                                            <option value="none">--Select--</option>
                                            <option value="New Age Windings">New Age Windings</option>
                                            <option value="Narayan X Former">Narayan X Former</option>
                                            <option value="X Tronics">X Tronics</option>
                                            <option value="Shiva Windings">Shiva Windings</option>
                                            <option value="Production">Production</option>
                                        </select>
                                    </div>
                                </section>
                            </div>
                            <div class="clear" style="text-align: center;">
                                <asp:HyperLink ID="btnProcess" CssClass="button icon approve" runat="server" NavigateUrl="javascript:IssueIndent();">Process</asp:HyperLink>
                                <asp:HyperLink ID="btnCancel" CssClass="button icon remove danger" NavigateUrl="javascript:Clear();" runat="server">Cancel</asp:HyperLink>
                            </div>
                            <div id="sample">
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
    <script src="Admin/js/jquery.placeholder.js" type="text/javascript"></script>
    <script src="Admin/js/jquery.selectskin.js" type="text/javascript"></script>
    <script src="Admin/js/jquery.validate.js" type="text/javascript"></script>
    <script src="Admin/js/jquery.visualize.js" type="text/javascript"></script>
    <script src="Admin/js/jquery.wymeditor.js" type="text/javascript"></script>
    <script src="Admin/js/application.js" type="text/javascript"></script>
    <script src="Admin/js/jquery-ui-1.8.17.custom.min.js" type="text/javascript"></script>
    <script src="Admin/js/appshot.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#txtAssmNo').focusout(function () {
                var assmNo = $('#txtAssmNo').val();
                $.ajax({
                    type: "POST",
                    url: "PageMethods.aspx/GetWorkOrderNumber",
                    data: "{'str':'" + assmNo + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if(msg.d == "")
                        {
                            new Notification('No Work Order Number seems to be present for the given Assembly Number','information');
                            $('#txtWONumber').val("");
                        }
                        else {$('#txtWONumber').val(msg.d);}
                    },
                    error: function (err) {
                        new Notification('<strong>Work Order Number</strong> could not be populated, send the Logs to Dev\'s for review.', 'error');
                    },
                });
            });

        });
    </script>
    <script type="text/javascript">
            function IssueIndent() {
            var indentNumber = $('#txtIndentNumber').val();
            var RequestedDate = $('#txtRqstDate').val();
            var assmemblyNo = $('#txtAssmNo').val();
            //var WONumber = $('#txtWONumber').val();
            var quantity = $('#txtQuantity').val();
            var vendor = $('#ddlVendor').val();

            $.ajax({
            type: "POST",
            url: "PageMethods.aspx/ProcessIndent",
            data: "{'indentNumber':'" + indentNumber + "','requestDate':'" + RequestedDate + "','assmNo':'" + assmemblyNo + "','quantity':'" + quantity + "','vendor':'" + vendor + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
            clear();
            GetIndentNumber();
            new Notification('Indent No: ' + indentNumber + ' for Assembly: ' + assmemblyNo + ' successfully processed.', 'information');
            },
            error: function (err) {
            new Notification('Error Processing Indent, send the Logs to Dev\'s for review.', 'error');
            }
            });
            }

            function GetIndentNumber() {
            $.ajax({
            type: "POST",
            url: "PageMethods.aspx/GetIndentNumber",
            data: "",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
            $('#txtIndentNumber').val(msg.d);
            },
            error: function (err) {
                    
            }
            });
            }

            function Clear() {
                $('#txtIndentNumber').val("");
                $('#txtRqstDate').val("");
                $('#txtAssmNo').val("");
                $('#txtWONumber').val("");
                $('#txtQuantity').val("");
                $('#ddlVendor').val("none");
                GetIndentNumber();
            }
    
    </script>
</body>
</html>
