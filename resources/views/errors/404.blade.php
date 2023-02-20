<!doctype html>
<html lang="en">

    <head>
        
        <meta charset="utf-8" />
        {{-- <title>Dashboard | HR-M & Admin </title> --}}
        <title>@yield('title'){{'| HR-M & Admin'}}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="HRM & Admin, TMSS" name="description" />
        <meta content="Nafiur Rahman" name="author" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="{{ asset('backend/assets/images/tmss.png') }}">
 <!-- Stylesheets -->
    <!-- Dashmix framework -->
    <link rel="stylesheet" id="css-main" href="{{ asset('backend/mix/assets/css/dashmix.min.css') }}">

    <!-- You can include a specific file from css/themes/ folder to alter the default color theme of the template. eg: -->
    <!-- <link rel="stylesheet" id="css-theme" href="{{ asset('backend/mix/assets/css/themes/xwork.min.css') }}"> -->
    <link rel="stylesheet" id="css-theme" href="{{ asset('backend/mix/assets/css/themes/xdream.min.css') }}">
    <!-- END Stylesheets -->
 <!-- Select 2 -->
<link href="{{ asset('backend/assets/libs/select2/css/select2.min.css') }}" rel="stylesheet" type="text/css">
  <!-- end Select 2  -->
        <!-- jquery.vectormap css -->
        <link href="{{ asset('backend/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css') }}" rel="stylesheet" type="text/css" />
        <!-- DataTables -->
        <link href="{{ asset('backend/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
        <!-- Responsive datatable examples -->
        <link href="{{ asset('backend/assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />  
        <!-- mix Css -->
        <link href="{{ asset('backend/assets/css/mix.min.css') }}" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Bootstrap Css -->
        <link href="{{ asset('backend/assets/css/bootstrap.min.css') }}" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="{{ asset('backend/assets/css/icons.min.css') }}" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="{{ asset('backend/assets/css/app.min.css') }}" id="app-style" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" >
    </head>

    <body class="auth-body-bg">
        <div class="bg-overlay"></div>
        <div class="pt-5 my-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="text-center ex-page-content">
                                    <h1>404!</h1>
                                    <h3>Sorry, page not found</h3><br>
            
                                    <a class="mb-5 btn btn-info waves-effect waves-light" href="{{ route('dashboard') }}">Back to Dashboard</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Required datatable js -->
        <script src="{{ asset('backend/assets/libs/datatables.net/js/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('backend/assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
            <!-- Datatable init js -->
        <script src="{{ asset('backend/assets/js/pages/datatables.init.js') }}"></script>
<script src="{{ asset('backend/assets/js/validate.min.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
 <script src="{{ asset('backend/assets/js/code.js') }}"></script>
  <script src="{{ asset('backend/assets/js/handlebars.js') }}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js" ></script>
<!--  For Select2 -->
<script src="{{ asset('backend/assets/libs/select2/js/select2.min.js') }}"></script>
<script src="{{ asset('backend/assets/js/pages/form-advanced.init.js') }}"></script>
<!-- end  For Select2 -->

    </body>

</html>

    </body>
</html>
