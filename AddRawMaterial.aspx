<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRawMaterial.aspx.cs" Inherits="WindingsIndia.AddRawMaterial" %>

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
                            <li><a href="MaterialInward.aspx"><span class="icon tables"></span>Material Inward</a></li>
                            <li class="current"><a href="AddRawMaterial.aspx"><span class="icon chart"></span><%--<span class="badge">4</span>--%> Add New Material
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
                            <li class="current"><a href="#RawMaterial">Raw Material</a></li>
                            <li><a href="AssemblyInward.aspx">Assembly</a></li>
                        </ul>
                    </nav>
                    <!-- The content -->
                    <section id="content">
                    <div id="RawMaterial" class="tab">
                        <h2>Add New Raw Material</h2>
                        <div class="column left third">
                            <section>
                                <label for="txtPartNumber">
                                    Raw Material ID
                                </label>
                                <div>
                                    <input type="text" id="txtPartNumber" runat="server" />
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
                                <label for="ddlUOM">
                                    Unit of Measurement
                                </label>
                                <div>
                                    <select id="ddlUOM" runat="server">
                                        <option value="MTR">Meter</option>
                                        <option value="EA">Each</option>
                                        <option value="KG">Kilogram</option>
                                        <option value="LTR">Litre</option>
                                    </select>
                                </div>
                            </section>
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
                            <section>
                                <label for="ddlModvatable">
                                    Modbatable
                                </label>
                                <div>
                                    <select id="ddlModvatable" runat="server">
                                        <option value="Y">Yes</option>
                                        <option value="N">No</option>
                                    </select>
                                </div>
                            </section>
                            <section>
                                <label for="txtTerrif">
                                    Terrif Classification
                                </label>
                                <div>
                                    <input type="text" id="txtTerrif" runat="server" placeholder="Only Numbers" class="required" />
                                </div>
                            </section>
                            <section>
                                <asp:LinkButton Text="Process" runat="server" ID="btnProcess" CssClass="button big icon approve" />
                            </section>
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
</body>
</html>
