<%--
  Created by IntelliJ IDEA.
  User: dwei
  Date: 2015/12/21
  Time: 1:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shamcey - Metro Style Admin Template</title>
    <link rel="stylesheet" href="/css/style.default.css" type="text/css" />
    <link rel="stylesheet" href="/css/responsive-tables.css">
    <script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/js/jquery-migrate-1.1.1.min.js"></script>
    <script type="text/javascript" src="/js/jquery-ui-1.9.2.min.js"></script>
    <script type="text/javascript" src="/js/modernizr.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/jquery.cookie.js"></script>
    <script type="text/javascript" src="/js/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="/js/flot/jquery.flot.min.js"></script>
    <script type="text/javascript" src="/js/flot/jquery.flot.resize.min.js"></script>
    <script type="text/javascript" src="/js/responsive-tables.js"></script>
    <script type="text/javascript" src="/js/custom.js"></script>
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/js/excanvas.min.js"></script><![endif]-->
</head>
<div class="header">
    <div class="logo">
        <a href="dashboard.html"><img src="/images/logo.png" alt="" /></a>
    </div>
    <div class="headerinner">
        <ul class="headmenu">
            <li class="odd">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <span class="count">4</span>
                    <span class="head-icon head-message"></span>
                    <span class="headmenu-label">Messages</span>
                </a>
                <ul class="dropdown-menu">
                    <li class="nav-header">Messages</li>
                    <li><a href=""><span class="icon-envelope"></span> New message from <strong>Jack</strong> <small class="muted"> - 19 hours ago</small></a></li>
                    <li><a href=""><span class="icon-envelope"></span> New message from <strong>Daniel</strong> <small class="muted"> - 2 days ago</small></a></li>
                    <li><a href=""><span class="icon-envelope"></span> New message from <strong>Jane</strong> <small class="muted"> - 3 days ago</small></a></li>
                    <li><a href=""><span class="icon-envelope"></span> New message from <strong>Tanya</strong> <small class="muted"> - 1 week ago</small></a></li>
                    <li><a href=""><span class="icon-envelope"></span> New message from <strong>Lee</strong> <small class="muted"> - 1 week ago</small></a></li>
                    <li class="viewmore"><a href="messages.html">View More Messages</a></li>
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" data-toggle="dropdown" data-target="#">
                    <span class="count">10</span>
                    <span class="head-icon head-users"></span>
                    <span class="headmenu-label">New Users</span>
                </a>
                <ul class="dropdown-menu newusers">
                    <li class="nav-header">New Users</li>
                    <li>
                        <a href="">
                            <img src="/images/photos/thumb1.png" alt="" class="userthumb" />
                            <strong>Draniem Daamul</strong>
                            <small>April 20, 2013</small>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="/images/photos/thumb2.png" alt="" class="userthumb" />
                            <strong>Shamcey Sindilmaca</strong>
                            <small>April 19, 2013</small>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="/images/photos/thumb3.png" alt="" class="userthumb" />
                            <strong>Nusja Paul Nawancali</strong>
                            <small>April 19, 2013</small>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="/images/photos/thumb4.png" alt="" class="userthumb" />
                            <strong>Rose Cerona</strong>
                            <small>April 18, 2013</small>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="/images/photos/thumb5.png" alt="" class="userthumb" />
                            <strong>John Doe</strong>
                            <small>April 16, 2013</small>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="odd">
                <a class="dropdown-toggle" data-toggle="dropdown" data-target="#">
                    <span class="count">1</span>
                    <span class="head-icon head-bar"></span>
                    <span class="headmenu-label">Statistics</span>
                </a>
                <ul class="dropdown-menu">
                    <li class="nav-header">Statistics</li>
                    <li><a href=""><span class="icon-align-left"></span> New Reports from <strong>Products</strong> <small class="muted"> - 19 hours ago</small></a></li>
                    <li><a href=""><span class="icon-align-left"></span> New Statistics from <strong>Users</strong> <small class="muted"> - 2 days ago</small></a></li>
                    <li><a href=""><span class="icon-align-left"></span> New Statistics from <strong>Comments</strong> <small class="muted"> - 3 days ago</small></a></li>
                    <li><a href=""><span class="icon-align-left"></span> Most Popular in <strong>Products</strong> <small class="muted"> - 1 week ago</small></a></li>
                    <li><a href=""><span class="icon-align-left"></span> Most Viewed in <strong>Blog</strong> <small class="muted"> - 1 week ago</small></a></li>
                    <li class="viewmore"><a href="charts.html">View More Statistics</a></li>
                </ul>
            </li>
            <li class="right">
                <div class="userloggedinfo">
                    <img src="/images/photos/thumb1.png" alt="" />
                    <div class="userinfo">
                        <h5>Juan Dela Cruz <small>- juan@themepixels.com</small></h5>
                        <ul>
                            <li><a href="editprofile.html">Edit Profile</a></li>
                            <li><a href="">Account Settings</a></li>
                            <li><a href="index.html">Sign Out</a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul><!--headmenu-->
    </div>
</div>
