<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WindingsIndia.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html  xmlns="http://www.w3.org/1999/xhtml">
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
    <div id="gradient">
      <div id="stars">
        <div id="container">
        
          <header>
          
            <!-- Logo -->
            <h1 id="logo">Admin Control Panel</h1>
          
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
                <li class="current">
                  <a href="Home.aspx">
                    <span class="icon dashboard"></span>
                    Home
                  </a>
                </li>
                
                <li>
                  <a href="IssueIndents.aspx">
                    <span class="icon pencil"></span>
                    Issue Indents
                  </a>
                </li>
                
                <li>
                  <a href="MaterialInward.aspx">
                    <span class="icon tables"></span>
                    Material Inward
                  </a>
                </li>

                <li>
                  <a href="/charts">
                    <span class="icon chart"></span>
                    <span class="badge">4</span>
                    Charts
                  </a>
                </li>
                
                <li>
                  <a href="/notifications">
                    <span class="icon modal"></span>
                    Notifcations
                  </a>
                </li>
                
                <li>
                  <a href="/gallery">
                    <span class="icon gallery"></span>
                    Gallery
                  </a>
                </li>

                <li>
                  <a href="/buttons">
                    <span class="icon anchor"></span>
                    Icons/buttons
                  </a>
                </li>               
              </ul>
            
              <input type="text" id="search" placeholder="Realtime search..." />
            </nav>
          
            <!-- Secondary navigation -->
            <nav id="secondary">
              <ul>
                <li class="current"><a href="#">Main tab</a></li>
                <%--<li><a href="#">Optional second tab</a></li>
                <li><a href="#">Optional third tab</a></li>--%>
              </ul>
            </nav>
          
            <!-- The content -->
            <section id="content">
            <h2 class="custom">List of Open Indents</h2>
            <div class="left clear custom">
                <asp:Repeater ID="rptOpenIndents" runat="server">
                    <HeaderTemplate>
                        <table id="tblOpenIndents" class="datatable">
                            <thead>
                                <tr class="center">
                                    <th >Assembly ID</th>
                                    <th >Year</th>
                                    <th >Indent Number</th>
                                    <th>Quantity Due</th>
                                    <th>Vendor</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class="center">
                            <td class="center"><%# Eval("AssemblyID") %></td>
                            <td><%# Eval("FiscalYear") %></td>
                            <td><%# Eval("IndentNumber") %></td>
                            <td><%# String.Format("{0:0.####}",Eval("QuantityDue")) %></td>
                            <td><%# Eval("Vendor") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <h2>Out of Stock Raw Materials</h2>
                <asp:Repeater ID="rptRawMaterials" runat="server">
                    <HeaderTemplate>
                        <table id="tblRawMaterials" class="datatable">
                            <thead>
                                <tr>
                                    <th class="center">Raw Material ID</th>
                                    <th >Description</th>
                                    <th >Current Stock</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td class="center"><%# Eval("RawMaterialID") %></td>
                            <td><%# Eval("Description") %></td>
                            <td><%# String.Format("{0:0.####}",Eval("Stock")) %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
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
</body>
</html>
