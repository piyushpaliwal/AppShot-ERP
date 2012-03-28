<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssemblyInward.aspx.cs" Inherits="WindingsIndia.AssemblyInward" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="Admin/css/ie.css" />
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<form id="form1" runat="server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server" />
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
                            <li><a href="IssueIndents.aspx"><span class="icon pencil"></span>Issue
                                Indents </a></li>
                            <li class="current"><a href="MaterialInward.aspx"><span class="icon tables"></span>Material Inward</a></li>
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
                            <li ><a href="MaterialInward.aspx">Raw Material Inward</a></li>
                            <li class="current"><a href="#Assembly">Assembly Inward</a></li>
                        </ul>
                    </nav>
                    <!-- The content -->
                    <section id="content">
                    <%--<div id="RawMaterial" class="tab">
                        <h2>Raw Material Inward</h2>
                        <div class="column left third">
                            <section>
                                <label for="ddlRawMaterialID">
                                    Raw Material ID
                                </label>
                                <div>
                                    <asp:ComboBox ID="ddlRawMaterialID" runat="server" AutoCompleteMode="SuggestAppend" EnableTheming="true">
                                    </asp:ComboBox>
                                </div>
                            </section>
                            <section>
                                <label for="txtDescription">
                                    Description
                                </label>
                                <div>
                                    <input type="text" id="txtDescription" runat="server" placeholder="Alpha Numeric" class="required" />
                                </div>
                            </section>
                            <section>
                                <label for="txtDate">
                                    Date
                                </label>
                                <div>
                                    <input type="text" id="txtDate" runat="server" placeholder="Date in MM-DD-YYYY" class="required" />
                                </div>
                            </section>
                            <section>
                                <label for="txtInvoiceNo">
                                    InvoiceNo
                                </label>
                                <div>
                                    <input type="text" id="txtInvoiceNo" runat="server" placeholder="Alpha Numeric" class="required" />
                                </div>
                            </section>
                            <section>
                                <label for="txtQuantity">
                                    Quantity
                                </label>
                                <div>
                                    <input type="text" id="txtQuantity" runat="server" placeholder="Only Numbers" class="required" />
                                </div>
                            </section>
                            <asp:Button ID="btnProcess" Text="Process" runat="server" CssClass="button icon approve" />
                        </div>
                        </div>--%>
                    <div id="Assembly" class="tab">
                        <h2>Assembly Inward</h2>
                    </div>
                    </section>
                    </div>
                <footer id="copyright">&copy; Copyrights. All rights reserved by Appshot.in</footer>
            </div>
        </div>
    </div>
</form>
</body>
</html>
