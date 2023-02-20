<div class="topnav">
    <div class="container-fluid">
        <nav class="navbar navbar-light navbar-expand-lg topnav-menu">

            <div class="collapse navbar-collapse" id="topnav-menu-content">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('dashboard') }}">
                            <i class="ri-dashboard-line me-2"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('setup.all') }}">
                            <i class="ri-settings-2-line me-2"></i> Settings
                        </a>
                    </li>

                    {{-- <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-uielement" role="button"
                        >
                            <i class="ri-settings-2-line me-2"></i>Settings <div class="arrow-down"></div>
                        </a>

                        <div class="px-2 dropdown-menu mega-dropdown-menu dropdown-mega-menu-xl"
                            aria-labelledby="topnav-uielement">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div> 
                                        <a href="{{ route('sector.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Sector Setup</a>
                                        <a href="{{ route('domain.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Domain Setup</a>
                                        <a href="{{ route('designation.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Designation Setup</a>
                                        <a href="{{ route('division.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Division Setup</a>
                                        <a href="{{ route('district.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>District Setup</a>
                                        <a href="{{ route('upazilla.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Upazilla Setup</a>
                                        <a href="ui-images.html" class="dropdown-item">Images</a>
                                    </div>
                                </div> --}}
                                {{-- <div class="col-lg-4">
                                    <div>
                                        <a href="{{ route('bloodgroup.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Blood Group Setup</a>
                                        <a href="{{ route('department.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Department Setup</a>
                                        <a href="{{ route('educationalqualification.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Edu Qualification</a>
                                        <a href="{{ route('employeetype.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Employee Type</a>
                                        <a href="{{ route('gender.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Gender Type</a>
                                        <a href="{{ route('jobstatus.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Job Status</a>                                          
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div>
                                        <a href="{{ route('sector.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Sector Setup</a>
                                        <a href="{{ route('domain.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Domain Setup</a>
                                        <a href="{{ route('designation.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Designation Setup</a>
                                        <a href="{{ route('division.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Division Setup</a>
                                        <a href="{{ route('district.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>District Setup</a>
                                        <a href="{{ route('upazilla.all') }}" class="dropdown-item"><i class="ri-settings-2-line me-2"></i>Upazilla Setup</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </li> --}}
                    
                   

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-apps" role="button"
                        >
                            <i class="ri-apps-2-line me-2"></i>Apps <div class="arrow-down"></div>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="topnav-apps">

                            <a href="calendar.html" class="dropdown-item">Calendar</a>
                            <div class="dropdown">
                                <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-email"
                                    role="button">
                                    Email <div class="arrow-down"></div>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="topnav-email">
                                    <a href="email-inbox.html" class="dropdown-item">Inbox</a>
                                    <a href="email-read.html" class="dropdown-item">Read Email</a>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-components" role="button"
                        >
                            <i class="ri-stack-line me-2"></i>Components <div class="arrow-down"></div>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="topnav-components">
                            <div class="dropdown">
                                <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-form"
                                    role="button">
                                    Advance UI <div class="arrow-down"></div>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="topnav-form">
                                    <a href="advance-rangeslider.html" class="dropdown-item">Range Slider</a>
                                    <a href="advance-roundslider.html" class="dropdown-item">Round Slider</a>
                                    <a href="advance-session-timeout.html" class="dropdown-item">Session Timeout</a>
                                    <a href="advance-sweet-alert.html" class="dropdown-item">Sweetalert 2</a>
                                    <a href="advance-rating.html" class="dropdown-item">Rating</a>
                                    <a href="advance-notification.html" class="dropdown-item">Notification</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-form"
                                    role="button">
                                    Forms <div class="arrow-down"></div>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="topnav-form">
                                    <a href="form-elements.html" class="dropdown-item">Elements</a>
                                    <a href="form-validation.html" class="dropdown-item">Validation</a>
                                    <a href="form-advanced.html" class="dropdown-item">Advanced Plugins</a>
                                    <a href="form-editors.html" class="dropdown-item">Editors</a>
                                    <a href="form-uploads.html" class="dropdown-item">File Upload</a>
                                    <a href="form-xeditable.html" class="dropdown-item">Xeditable</a>
                                    <a href="form-wizard.html" class="dropdown-item">Wizard</a>
                                    <a href="form-mask.html" class="dropdown-item">Mask</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-table"
                                    role="button">
                                    Tables <div class="arrow-down"></div>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="topnav-table">
                                    <a href="tables-basic.html" class="dropdown-item">Basic Tables</a>
                                    <a href="tables-datatable.html" class="dropdown-item">Data Tables</a>
                                    <a href="tables-responsive.html" class="dropdown-item">Responsive Table</a>
                                    <a href="tables-editable.html" class="dropdown-item">Editable Table</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-charts"
                                    role="button">
                                    Charts <div class="arrow-down"></div>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="topnav-charts">
                                    <a href="charts-apex.html" class="dropdown-item">Apex charts</a>
                                    <a href="charts-chartjs.html" class="dropdown-item">Chartjs</a>
                                    <a href="charts-flot.html" class="dropdown-item">Flot Chart</a>
                                    <a href="charts-knob.html" class="dropdown-item">Jquery Knob Chart</a>
                                    <a href="charts-sparkline.html" class="dropdown-item">Sparkline Chart</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-icons"
                                    role="button">
                                    Icons <div class="arrow-down"></div>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="topnav-icons">
                                    <a href="icons-remix.html" class="dropdown-item">Remix Icons</a>
                                    <a href="icons-materialdesign.html" class="dropdown-item">Material Design</a>
                                    <a href="icons-dripicons.html" class="dropdown-item">Dripicons</a>
                                    <a href="icons-fontawesome.html" class="dropdown-item">Font awesome 5</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-map"
                                    role="button">
                                    Maps <div class="arrow-down"></div>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="topnav-map">
                                    <a href="maps-google.html" class="dropdown-item">Google Maps</a>
                                    <a href="maps-vector.html" class="dropdown-item">Vector Maps</a>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-more" role="button"
                        >
                            <i class="ri-file-copy-2-line me-2"></i>Pages <div class="arrow-down"></div>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="topnav-more">
                            <div class="dropdown">
                                <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-auth"
                                    role="button">
                                    Authentication <div class="arrow-down"></div>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="topnav-auth">
                                    <a href="auth-login.html" class="dropdown-item">Login</a>
                                    <a href="auth-register.html" class="dropdown-item">Register</a>
                                    <a href="auth-recoverpw.html" class="dropdown-item">Recover Password</a>
                                    <a href="auth-lock-screen.html" class="dropdown-item">Lock Screen</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-utility"
                                    role="button">
                                    Utility <div class="arrow-down"></div>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="topnav-utility">
                                    <a href="pages-starter.html" class="dropdown-item">Starter Page</a>
                                    <a href="pages-timeline.html" class="dropdown-item">Timeline</a>
                                    <a href="pages-directory.html" class="dropdown-item">Directory</a>
                                    <a href="pages-invoice.html" class="dropdown-item">Invoice</a>
                                    <a href="pages-404.html" class="dropdown-item">Error 404</a>
                                    <a href="pages-500.html" class="dropdown-item">Error 500</a>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-layout" role="button">
                            <i class="ri-layout-3-line me-2"></i><span key="t-layouts">Layouts</span> <div class="arrow-down"></div>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="topnav-layout">
                            <div class="dropdown">
                                <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-layout-verti"
                                    role="button">
                                    <span key="t-vertical">Vertical</span> <div class="arrow-down"></div>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="topnav-layout-verti">
                                    <a href="layouts-dark-sidebar.html" class="dropdown-item" key="t-dark-sidebar">Dark Sidebar</a>
                                    <a href="layouts-compact-sidebar.html" class="dropdown-item" key="t-compact-sidebar">Compact Sidebar</a>
                                    <a href="layouts-icon-sidebar.html" class="dropdown-item" key="t-icon-sidebar">Icon Sidebar</a>
                                    <a href="layouts-boxed.html" class="dropdown-item" key="t-boxed-width">Boxed Width</a>
                                    <a href="layouts-preloader.html" class="dropdown-item" key="t-preloader">Preloader</a>
                                    <a href="layouts-colored-sidebar.html" class="dropdown-item" key="t-colored-sidebar">Colored Sidebar</a>
                                </div>
                            </div>

                            <div class="dropdown">
                                <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-layout-hori"
                                    role="button">
                                    <span key="t-horizontal">Horizontal</span> <div class="arrow-down"></div>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="topnav-layout-hori">
                                    <a href="layouts-horizontal.html" class="dropdown-item" key="t-horizontal">Horizontal</a>
                                    <a href="layouts-hori-topbar-light.html" class="dropdown-item" key="t-topbar-light">Topbar light</a>
                                    <a href="layouts-hori-boxed-width.html" class="dropdown-item" key="t-boxed-width">Boxed width</a>
                                    <a href="layouts-hori-preloader.html" class="dropdown-item" key="t-preloader">Preloader</a>
                                    <a href="layouts-hori-colored-header.html" class="dropdown-item" key="t-colored-topbar">Colored Header</a>
                                </div>
                            </div>
                        </div>
                    </li>

                </ul>
            </div>
        </nav>
    </div>
</div>