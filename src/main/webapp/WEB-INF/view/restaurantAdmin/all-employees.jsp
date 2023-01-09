<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <title>AtrioHR - HR and Company Management Admin Template</title>
    <!-- Favicon-->
    <link rel="icon" href="../../assets/images/favicon.ico" type="image/x-icon">
    <!-- Plugins Core Css -->
    <link href="../../assets/css/app.min.css" rel="stylesheet">
    <!-- Custom Css -->
    <link href="../../assets/css/style.css" rel="stylesheet" />
    <!-- You can choose a theme from css/styles instead of get all themes -->
    <link href="../../assets/css/styles/all-themes.css" rel="stylesheet" />
</head>

<body class="light">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="m-t-30">
                <img class="loading-img-spin" src="../../assets/images/loading.png" alt="admin">
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="#" onClick="return false;" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="#" onClick="return false;" class="bars"></a>
                <a class="navbar-brand" href="../../index.html">
                    <img src="../../assets/images/logo.png" alt="" />
                    <span class="logo-name">AtrioHR</span>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-left">
                    <li>
                        <a href="#" onClick="return false;" class="sidemenu-collapse">
                            <i class="nav-hdr-btn ti-align-left"></i>
                        </a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <!-- Full Screen Button -->
                    <li class="fullscreen">
                        <a href="javascript:;" class="fullscreen-btn">
                            <i class="nav-hdr-btn ti-fullscreen"></i>
                        </a>
                    </li>
                    <!-- #END# Full Screen Button -->
                    <!-- #START# Notifications-->
                    <li class="dropdown">
                        <a href="#" onClick="return false;" class="dropdown-toggle" data-toggle="dropdown"
                            role="button">
                            <i class="nav-hdr-btn ti-bell"></i>
                            <span class="notify"></span>
                            <span class="heartbeat"></span>
                        </a>
                        <ul class="dropdown-menu pullDown">
                            <li class="header">NOTIFICATIONS</li>
                            <li class="body">
                                <ul class="menu">
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <span class="table-img msg-user">
                                                <img src="../../assets/images/user/user1.jpg" alt="">
                                            </span>
                                            <span class="menu-info">
                                                <span class="menu-title">Sarah Smith</span>
                                                <span class="menu-desc">
                                                    <i class="material-icons">access_time</i> 14 mins ago
                                                </span>
                                                <span class="menu-desc">Please check your email.</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <span class="table-img msg-user">
                                                <img src="../../assets/images/user/user2.jpg" alt="">
                                            </span>
                                            <span class="menu-info">
                                                <span class="menu-title">Airi Satou</span>
                                                <span class="menu-desc">
                                                    <i class="material-icons">access_time</i> 22 mins ago
                                                </span>
                                                <span class="menu-desc">Please check your email.</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <span class="table-img msg-user">
                                                <img src="../../assets/images/user/user3.jpg" alt="">
                                            </span>
                                            <span class="menu-info">
                                                <span class="menu-title">John Doe</span>
                                                <span class="menu-desc">
                                                    <i class="material-icons">access_time</i> 3 hours ago
                                                </span>
                                                <span class="menu-desc">Please check your email.</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <span class="table-img msg-user">
                                                <img src="../../assets/images/user/user4.jpg" alt="">
                                            </span>
                                            <span class="menu-info">
                                                <span class="menu-title">Ashton Cox</span>
                                                <span class="menu-desc">
                                                    <i class="material-icons">access_time</i> 2 hours ago
                                                </span>
                                                <span class="menu-desc">Please check your email.</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <span class="table-img msg-user">
                                                <img src="../../assets/images/user/user5.jpg" alt="">
                                            </span>
                                            <span class="menu-info">
                                                <span class="menu-title">Cara Stevens</span>
                                                <span class="menu-desc">
                                                    <i class="material-icons">access_time</i> 4 hours ago
                                                </span>
                                                <span class="menu-desc">Please check your email.</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <span class="table-img msg-user">
                                                <img src="../../assets/images/user/user6.jpg" alt="">
                                            </span>
                                            <span class="menu-info">
                                                <span class="menu-title">Charde Marshall</span>
                                                <span class="menu-desc">
                                                    <i class="material-icons">access_time</i> 3 hours ago
                                                </span>
                                                <span class="menu-desc">Please check your email.</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <span class="table-img msg-user">
                                                <img src="../../assets/images/user/user7.jpg" alt="">
                                            </span>
                                            <span class="menu-info">
                                                <span class="menu-title">John Doe</span>
                                                <span class="menu-desc">
                                                    <i class="material-icons">access_time</i> Yesterday
                                                </span>
                                                <span class="menu-desc">Please check your email.</span>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#" onClick="return false;">View All Notifications</a>
                            </li>
                        </ul>
                    </li>
                    <!-- #END# Notifications-->
                    <li class="dropdown user_profile">
                        <div class="dropdown-toggle" data-toggle="dropdown">
                            <img src="../../assets/images/user.jpg" alt="user">
                        </div>
                        <ul class="dropdown-menu pullDown">
                            <li class="body">
                                <ul class="user_dw_menu">
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <i class="material-icons">person</i>Profile
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <i class="material-icons">feedback</i>Feedback
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <i class="material-icons">help</i>Help
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <i class="material-icons">power_settings_new</i>Logout
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <!-- #END# Tasks -->
                    <li class="pull-right">
                        <a href="#" onClick="return false;" class="js-right-sidebar" data-close="true">
                            <i class="nav-hdr-btn ti-layout-grid2"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <div>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li>
                        <div class="sidebar-profile clearfix">
                            <div class="profile-img">
                                <img src="../../assets/images/user.jpg" alt="profile">
                            </div>
                            <div class="profile-info">
                                <h3>Sarah Deo</h3>
                                <p>Welcome Admin !</p>
                            </div>
                        </div>
                    </li>
                    <li class="header">-- Main</li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-home"></i>
                            <span>Home</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../index.html">Dashboard 1</a>
                            </li>
                            <li>
                                <a href="../../pages/dashboard/dashboard2.html">Dashboard 2</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-user"></i>
                            <span>Employees</span>
                        </a>
                        <ul class="ml-menu">
                            <li class="active">
                                <a href="../../pages/employee/all-employees.html">All Employee</a>
                            </li>
                            <li>
                                <a href="../../pages/employee/add-employee.html">Add Employee</a>
                            </li>
                            <li>
                                <a href="../../pages/employee/edit-employee.html">Edit Employee</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-bag"></i>
                            <span>Projects</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/projects/all-projects.html">All Projects</a>
                            </li>
                            <li>
                                <a href="../../pages/projects/add-project.html">Add Project</a>
                            </li>
                            <li>
                                <a href="../../pages/projects/edit-project.html">Edit Project</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-eye"></i>
                            <span>Attendance</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/attendance/today-attend.html">Today Attendance</a>
                            </li>
                            <li>
                                <a href="../../pages/attendance/emp-attend.html">Employee Attendance</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-face-smile"></i>
                            <span>Clients</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/clients/all-clients.html">All Clients</a>
                            </li>
                            <li>
                                <a href="../../pages/clients/add-client.html">Add Client</a>
                            </li>
                            <li>
                                <a href="../../pages/clients/edit-client.html">Edit Client</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-id-badge"></i>
                            <span>Leave Management</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/leave/all-leave.html">All Leave Request</a>
                            </li>
                            <li>
                                <a href="../../pages/leave/leave-balance.html">Leave Balance</a>
                            </li>
                            <li>
                                <a href="../../pages/leave/add-leave.html">New Leave Request</a>
                            </li>
                            <li>
                                <a href="../../pages/leave/edit-leave.html">Edit Leave Request</a>
                            </li>
                            <li>
                                <a href="../../pages/leave/leave-type.html">Leave Types</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-headphone"></i>
                            <span>Holidays</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/holiday/all-holidays.html">All Holidays</a>
                            </li>
                            <li>
                                <a href="../../pages/holiday/add-holiday.html">Add Holiday</a>
                            </li>
                            <li>
                                <a href="../../pages/holiday/edit-holiday.html">Edit Holiday</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-wallet"></i>
                            <span>Accounts</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/accounts/income.html">Income</a>
                            </li>
                            <li>
                                <a href="../../pages/accounts/expense.html">Expenses</a>
                            </li>
                            <li>
                                <a href="../../pages/accounts/invoice.html">Invoices</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-vector"></i>
                            <span>Departments</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/departments/all-departments.html">All Departments</a>
                            </li>
                            <li>
                                <a href="../../pages/departments/add-department.html">Add Department</a>
                            </li>
                            <li>
                                <a href="../../pages/departments/edit-department.html">Edit Departments</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-write"></i>
                            <span>Payroll</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/payroll/payslip.html">Payslip</a>
                            </li>
                            <li>
                                <a href="../../pages/payroll/employee-salary.html">Employee Salary</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-desktop"></i>
                            <span>Job</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/job/add-job.html">Add Job</a>
                            </li>
                            <li>
                                <a href="../../pages/job/requirement-list.html">Requirements</a>
                            </li>
                            <li>
                                <a href="../../pages/job/applicant-list.html">Applicant List</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-microphone"></i>
                            <span>Consultancy</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/consultancy/all-consultancy.html">All Consultancy</a>
                            </li>
                            <li>
                                <a href="../../pages/consultancy/add-consultancy.html">Add Consultancy</a>
                            </li>
                            <li>
                                <a href="../../pages/consultancy/edit-consultancy.html">Edit Consultancy</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-crown"></i>
                            <span>Widgets</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/widgets/chart-widget.html">Chart Widget</a>
                            </li>
                            <li>
                                <a href="../../pages/widgets/data-widget.html">Data Widget</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-magnet"></i>
                            <span>User Interface (UI)</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/ui/alerts.html">Alerts</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/animations.html">Animations</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/badges.html">Badges</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/modal.html">Modal</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/buttons.html">Buttons</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/collapse.html">Collapse</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/dialogs.html">Dialogs</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/cards.html">Cards</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/labels.html">Labels</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/list-group.html">List Group</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/media-object.html">Media Object</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/notifications.html">Notifications</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/preloaders.html">Preloaders</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/progressbars.html">Progress Bars</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/range-sliders.html">Range Sliders</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/sortable-nestable.html">Sortable &amp; Nestable</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/tabs.html">Tabs</a>
                            </li>
                            
                            <li>
                                <a href="../../pages/ui/waves.html">Waves</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/typography.html">Typography</a>
                            </li>
                            <li>
                                <a href="../../pages/ui/helper-classes.html">Helper Classes</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-medall-alt"></i>
                            <span>Icons</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/icons/material-icons.html">Material Icons</a>
                            </li>
                            <li>
                                <a href="../../pages/icons/font-awesome.html">Font Awesome</a>
                            </li>
                            <li>
                                <a href="../../pages/icons/simple-line-icons.html">Simple Line Icons</a>
                            </li>
                            <li>
                                <a href="../../pages/icons/themify.html">Themify Icons</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-layout"></i>
                            <span>Forms</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/forms/basic-form-elements.html">Basic Form</a>
                            </li>
                            <li>
                                <a href="../../pages/forms/advanced-form-elements.html">Advanced Form</a>
                            </li>
                            <li>
                                <a href="../../pages/forms/form-examples.html">Form Examples</a>
                            </li>
                            <li>
                                <a href="../../pages/forms/form-validation.html">Form Validation</a>
                            </li>
                            <li>
                                <a href="../../pages/forms/form-wizard.html">Form Wizard</a>
                            </li>
                            <li>
                                <a href="../../pages/forms/editors.html">Editors</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-menu-alt"></i>
                            <span>Tables</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/tables/normal-tables.html">Normal Tables</a>
                            </li>
                            <li>
                                <a href="../../pages/tables/advance-tables.html">Advance Datatables</a>
                            </li>
                            <li>
                                <a href="../../pages/tables/export-table.html">Export Table</a>
                            </li>
                            <li>
                                <a href="../../pages/tables/child-row-table.html">Child Row Table</a>
                            </li>
                            <li>
                                <a href="../../pages/tables/group-table.html">Grouping</a>
                            </li>
                            <li>
                                <a href="../../pages/tables/editable-table.html">Editable Tables</a>
                            </li>
                        </ul>
                    </li>
                    <li class="header">-- Apps</li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-email"></i>
                            <span>Email</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/email/inbox.html">Inbox</a>
                            </li>
                            <li>
                                <a href="../../pages/email/compose.html">Compose</a>
                            </li>
                            <li>
                                <a href="../../pages/email/view-mail.html">Read Email</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="../../pages/apps/chat.html">
                            <i class="menu-icon ti-comment"></i>
                            <span>Chat</span>
                        </a>
                    </li>
                    <li>
                        <a href="../../pages/apps/calendar.html">
                            <i class="menu-icon ti-calendar"></i>
                            <span>Calendar</span>
                        </a>
                    </li>
                    <li>
                        <a href="../../pages/apps/task.html">
                            <i class="menu-icon ti-check-box"></i>
                            <span>Task Bar</span>
                        </a>
                    </li>
                    <li>
                        <a href="../../pages/apps/portfolio.html">
                            <i class="menu-icon ti-briefcase"></i>
                            <span>Portfolio</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-unlink"></i>
                            <span>Others</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/apps/dragdrop.html">Drag &amp; Drop</a>
                            </li>
                            <li>
                                <a href="../../pages/apps/contact_list.html">Contact List</a>
                            </li>
                            <li>
                                <a href="../../pages/apps/contact_grid.html">Contact Grid</a>
                            </li>
                            <li>
                                <a href="../../pages/apps/support.html">Support</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-stats-up"></i>
                            <span>Charts</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/charts/amchart.html">amChart</a>
                            </li>
                            <li>
                                <a href="../../pages/charts/echart.html">Echart</a>
                            </li>
                            <li>
                                <a href="../../pages/charts/apexcharts.html">ApexCharts</a>
                            </li>
                            <li>
                                <a href="../../pages/charts/morris.html">Morris</a>
                            </li>
                            <li>
                                <a href="../../pages/charts/chartjs.html">ChartJS</a>
                            </li>
                            <li>
                                <a href="../../pages/charts/sparkline.html">Sparkline</a>
                            </li>
                            <li>
                                <a href="../../pages/charts/jquery-knob.html">Jquery Knob</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-map-alt"></i>
                            <span>Maps</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/maps/google.html">Google Map</a>
                            </li>
                            <li>
                                <a href="../../pages/maps/jqvmap.html">Vector Map</a>
                            </li>
                            <li>
                                <a href="../../pages/maps/datamap.html">Data Map</a>
                            </li>
                        </ul>
                    </li>
                    <li class="header">-- Extra</li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-split-v"></i>
                            <span>Timeline</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/timeline/timeline.html">Timeline 1</a>
                            </li>
                            <li>
                                <a href="../../pages/timeline/timeline2.html">Timeline 2</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-image"></i>
                            <span>Medias</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/medias/image-gallery.html">Image Gallery</a>
                            </li>
                            <li>
                                <a href="../../pages/medias/carousel.html">Carousel</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-shield"></i>
                            <span>Authentication</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/examples/login-register.html">Login &amp; Register</a>
                            </li>
                            <li>
                                <a href="../../pages/examples/sign-in.html">Sign In</a>
                            </li>
                            <li>
                                <a href="../../pages/examples/sign-up.html">Sign Up</a>
                            </li>
                            <li>
                                <a href="../../pages/examples/forgot-password.html">Forgot Password</a>
                            </li>
                            <li>
                                <a href="../../pages/examples/locked.html">Locked</a>
                            </li>
                            <li>
                                <a href="../../pages/examples/404.html">404 - Not Found</a>
                            </li>
                            <li>
                                <a href="../../pages/examples/500.html">500 - Server Error</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-receipt"></i>
                            <span>Extra Pages</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="../../pages/examples/profile.html">Profile</a>
                            </li>
                            <li>
                                <a href="../../pages/examples/pricing.html">Pricing</a>
                            </li>
                            <li>
                                <a href="../../pages/examples/faqs.html">Faqs</a>
                            </li>
                            <li>
                                <a href="../../pages/examples/blank.html">Blank Page</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-angle-double-down"></i>
                            <span>Multi Level Menu</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="#" onClick="return false;">
                                    <span>Menu Item</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" onClick="return false;">
                                    <span>Menu Item - 2</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" onClick="return false;" class="menu-toggle">
                                    <span>Level - 2</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="#" onClick="return false;">
                                            <span>Menu Item</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" onClick="return false;" class="menu-toggle">
                                            <span>Level - 3</span>
                                        </a>
                                        <ul class="ml-menu">
                                            <li>
                                                <a href="#" onClick="return false;">
                                                    <span>Level - 4</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <hr>
                        <div class="leftSideProgress">
                            <div class="progress-list">
                                <div class="details">
                                    <div class="title">Disk Usage</div>
                                </div>
                                <div class="status">
                                    <span>52</span>%
                                </div>
                                <div class="progress-s progress">
                                    <div class="progress-bar progress-bar-success width-per-52" role="progressbar"
                                        aria-valuenow="38" aria-valuemin="0" aria-valuemax="100">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="leftSideProgress">
                            <div class="progress-list m-b-10">
                                <div class="details">
                                    <div class="title">Server Load</div>
                                </div>
                                <div class="status">
                                    <span>79</span>%
                                </div>
                                <div class="progress-s progress">
                                    <div class="progress-bar progress-bar-warning width-per-79" role="progressbar"
                                        aria-valuenow="38" aria-valuemin="0" aria-valuemax="100">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- #Menu -->
        </aside>
        <!-- #END# Left Sidebar -->
        <!-- Right Sidebar -->
        <aside id="rightsidebar" class="right-sidebar">
            <ul class="nav nav-tabs tab-nav-right" role="tablist">
                <li role="presentation">
                    <a href="#skins" data-toggle="tab" class="active">SKINS</a>
                </li>
                <li role="presentation">
                    <a href="#settings" data-toggle="tab">SETTINGS</a>
                </li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane in active in active stretchLeft" id="skins">
                    <div class="demo-skin">
                        <div class="rightSetting">
                            <p>GENERAL SETTINGS</p>
                            <ul class="setting-list list-unstyled m-t-20">
                                <li>
                                    <div class="form-check">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" value="" checked> Save
                                                History
                                                <span class="form-check-sign">
                                                    <span class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" value="" checked> Show
                                                Status
                                                <span class="form-check-sign">
                                                    <span class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" value="" checked> Auto
                                                Submit Issue
                                                <span class="form-check-sign">
                                                    <span class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" value="" checked> Show
                                                Status To All
                                                <span class="form-check-sign">
                                                    <span class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="rightSetting">
                            <p>SIDEBAR MENU COLORS</p>
                            <button type="button"
                                class="btn btn-sidebar-light btn-border-radius p-l-20 p-r-20">Light</button>
                            <button type="button"
                                class="btn btn-sidebar-dark btn-default btn-border-radius p-l-20 p-r-20">Dark</button>
                        </div>
                        <div class="rightSetting">
                            <p>THEME COLORS</p>
                            <button type="button"
                                class="btn btn-theme-light btn-border-radius p-l-20 p-r-20">Light</button>
                            <button type="button"
                                class="btn btn-theme-dark btn-default btn-border-radius p-l-20 p-r-20">Dark</button>
                        </div>
                        <div class="rightSetting">
                            <p>SKINS</p>
                            <ul class="demo-choose-skin choose-theme list-unstyled">
                                <li data-theme="black" class="actived">
                                    <div class="black-theme"></div>
                                </li>
                                <li data-theme="white">
                                    <div class="white-theme white-theme-border"></div>
                                </li>
                                <li data-theme="purple">
                                    <div class="purple-theme"></div>
                                </li>
                                <li data-theme="blue">
                                    <div class="blue-theme"></div>
                                </li>
                                <li data-theme="cyan">
                                    <div class="cyan-theme"></div>
                                </li>
                                <li data-theme="green">
                                    <div class="green-theme"></div>
                                </li>
                                <li data-theme="orange">
                                    <div class="orange-theme"></div>
                                </li>
                            </ul>
                        </div>
                        <div class="rightSetting">
                            <p>Disk Space</p>
                            <div class="sidebar-progress">
                                <div class="progress m-t-20">
                                    <div class="progress-bar l-bg-cyan shadow-style width-per-45" role="progressbar"
                                        aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <span class="progress-description">
                                    <small>26% remaining</small>
                                </span>
                            </div>
                        </div>
                        <div class="rightSetting m-b-15">
                            <p>Server Load</p>
                            <div class="sidebar-progress">
                                <div class="progress m-t-20">
                                    <div class="progress-bar l-bg-orange shadow-style width-per-63" role="progressbar"
                                        aria-valuenow="63" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <span class="progress-description">
                                    <small>Highly Loaded</small>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane stretchRight" id="settings">
                    <div class="demo-settings">
                        <p>GENERAL SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Report Panel Usage</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox" checked>
                                        <span class="lever switch-col-green"></span>
                                    </label>
                                </div>
                            </li>
                            <li>
                                <span>Email Redirect</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox">
                                        <span class="lever switch-col-blue"></span>
                                    </label>
                                </div>
                            </li>
                        </ul>
                        <p>SYSTEM SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Notifications</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox" checked>
                                        <span class="lever switch-col-purple"></span>
                                    </label>
                                </div>
                            </li>
                            <li>
                                <span>Auto Updates</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox" checked>
                                        <span class="lever switch-col-cyan"></span>
                                    </label>
                                </div>
                            </li>
                        </ul>
                        <p>ACCOUNT SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Offline</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox" checked>
                                        <span class="lever switch-col-red"></span>
                                    </label>
                                </div>
                            </li>
                            <li>
                                <span>Location Permission</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox">
                                        <span class="lever switch-col-lime"></span>
                                    </label>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </aside>
        <!-- #END# Right Sidebar -->
    </div>
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ul class="breadcrumb breadcrumb-style ">
                            <li class="breadcrumb-item">
                                <h4 class="page-title">All Employees</h4>
                            </li>
                            <li class="breadcrumb-item bcrumb-1">
                                <a href="../../index.html">
                                    <i class="fas fa-home"></i> Home</a>
                            </li>
                            <li class="breadcrumb-item bcrumb-2">
                                <a href="#" onClick="return false;">Employee</a>
                            </li>
                            <li class="breadcrumb-item active">All Employees</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                <strong>All</strong> Employees
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="#" onClick="return false;" class="dropdown-toggle" data-toggle="dropdown"
                                        role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li>
                                            <a href="#" onClick="return false;">Action</a>
                                        </li>
                                        <li>
                                            <a href="#" onClick="return false;">Another action</a>
                                        </li>
                                        <li>
                                            <a href="#" onClick="return false;">Something else here</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-hover js-basic-example contact_list">
                                    <thead>
                                        <tr>
                                            <th class="center">#</th>
                                            <th class="center"> Name </th>
                                            <th class="center"> Designation </th>
                                            <th class="center"> Mobile </th>
                                            <th class="center"> Email </th>
                                            <th class="center"> Address </th>
                                            <th class="center">Joining Date</th>
                                            <th class="center"> Action </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user1.jpg" alt="">
                                            </td>
                                            <td class="center">Rajesh</td>
                                            <td class="center">Programmer</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">22 Feb 2000</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user2.jpg" alt="">
                                            </td>
                                            <td class="center">Pooja Patel</td>
                                            <td class="center">Manager</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">27 Aug 2005</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user3.jpg" alt="">
                                            </td>
                                            <td class="center">Sarah Smith</td>
                                            <td class="center">Manager</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">05 Jun 2011</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user4.jpg" alt="">
                                            </td>
                                            <td class="center">John Deo</td>
                                            <td class="center">Designer</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">15 Feb 2012</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user5.jpg" alt="">
                                            </td>
                                            <td class="center">Jay Soni</td>
                                            <td class="center">Purchase Officer</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">12 Nov 2012</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user6.jpg" alt="">
                                            </td>
                                            <td class="center">Jacob Ryan</td>
                                            <td class="center">Receptionist</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">03 Dec 2001</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user7.jpg" alt="">
                                            </td>
                                            <td class="center">Megha Trivedi</td>
                                            <td class="center">Manager</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">17 Mar 2013</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user8.jpg" alt="">
                                            </td>
                                            <td class="center">Rajesh</td>
                                            <td class="center">Sr. Tester</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">22 Feb 2000</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user9.jpg" alt="">
                                            </td>
                                            <td class="center">Pooja Patel</td>
                                            <td class="center">Team Leader</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">27 Aug 2005</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user6.jpg" alt="">
                                            </td>
                                            <td class="center">Sarah Smith</td>
                                            <td class="center">Manager</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">05 Jun 2011</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user5.jpg" alt="">
                                            </td>
                                            <td class="center">Jacob Ryan</td>
                                            <td class="center">Receptionist</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">03 Dec 2001</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user4.jpg" alt="">
                                            </td>
                                            <td class="center">Megha Trivedi</td>
                                            <td class="center">Manager</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">17 Mar 2013</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user3.jpg" alt="">
                                            </td>
                                            <td class="center">Rajesh</td>
                                            <td class="center">Director</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">22 Feb 2000</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user2.jpg" alt="">
                                            </td>
                                            <td class="center">Pooja Patel</td>
                                            <td class="center">Programmer</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">27 Aug 2005</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="table-img center">
                                                <img src="../../assets/images/user/user1.jpg" alt="">
                                            </td>
                                            <td class="center">Sarah Smith</td>
                                            <td class="center">Manager</td>
                                            <td class="center">+ 167-894-2378</td>
                                            <td class="center">example@email.com</td>
                                            <td class="center">22,tilak appt. surat</td>
                                            <td class="center">05 Jun 2011</td>
                                            <td class="center">
                                                <a href="edit-employee.html" class="btn btn-tbl-edit">
                                                    <i class="material-icons">create</i>
                                                </a>
                                                <a href="" class="btn btn-tbl-delete">
                                                    <i class="material-icons">delete_forever</i>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th class="center">#</th>
                                            <th class="center"> Name </th>
                                            <th class="center"> Designation </th>
                                            <th class="center"> Mobile </th>
                                            <th class="center"> Email </th>
                                            <th class="center"> Address </th>
                                            <th class="center">Joining Date</th>
                                            <th class="center"> Action </th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="../../assets/js/app.min.js"></script>
    <script src="../../assets/js/table.min.js"></script>
    <!-- Custom Js -->
    <script src="../../assets/js/admin.js"></script>
    <script src="../../assets/js/pages/tables/jquery-datatable.js"></script>
</body>

</html>