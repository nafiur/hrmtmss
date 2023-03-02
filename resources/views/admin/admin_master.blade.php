<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    {{-- <title>Dashboard | HR-M & Admin </title> --}}
    <title>@yield('title'){{ '| HR-M & Admin' }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="HRM & Admin, TMSS" name="description" />
    <meta content="Nafiur Rahman" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="{{ asset('backend/assets/images/tmss.png') }}">
    <!-- Stylesheets -->
    <!-- Dashmix framework -->
    <link rel="stylesheet" id="css-main" href="{{ asset('backend/mix/assets/css/dashmix.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/assets/css/style.css') }}">
    <!-- You can include a specific file from css/themes/ folder to alter the default color theme of the template. eg: -->
    <!-- <link rel="stylesheet" id="css-theme" href="{{ asset('backend/mix/assets/css/themes/xwork.min.css') }}"> -->
    <link rel="stylesheet" id="css-theme" href="{{ asset('backend/mix/assets/css/themes/xdream.min.css') }}">
    <!-- END Stylesheets -->

    <link rel="stylesheet" href="{{ asset('backend/mix/assets/js/plugins/simplemde/simplemde.min.css') }}">
    <!-- Select 2 -->
    <link href="{{ asset('backend/assets/libs/select2/css/select2.min.css') }}" rel="stylesheet" type="text/css">
    <!-- end Select 2  -->
    <!-- jquery.vectormap css -->
    <link href="{{ asset('backend/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css') }}"
        rel="stylesheet" type="text/css" />
    <!-- DataTables -->
    <link href="{{ asset('backend/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}"
        rel="stylesheet" type="text/css" />
    <!-- Responsive datatable examples -->
    <link href="{{ asset('backend/assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css') }}"
        rel="stylesheet" type="text/css" />
    <!-- mix Css -->
    <link href="{{ asset('backend/assets/css/mix.min.css') }}" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Bootstrap Css -->
    <link href="{{ asset('backend/assets/css/bootstrap.min.css') }}" id="bootstrap-style" rel="stylesheet"
        type="text/css" />
    <!-- Icons Css -->
    <link href="{{ asset('backend/assets/css/icons.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/libs/select2/css/select2.min.css') }}" rel="stylesheet" type="text/css">
    <!-- App Css-->
    <link href="{{ asset('backend/assets/css/app.min.css') }}" id="app-style" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css">
</head>

<body data-topbar="light" data-layout="horizontal">
    <!-- <body data-layout="horizontal" data-topbar="dark"> -->
    <!-- Begin page -->
    <div id="layout-wrapper">
        @include('admin.body.header')
        {{-- @include('admin.body.sidebar') --}}
        <div class="main-content">
            @yield('admin')
            <!-- End Page-content -->
            @include('admin.body.footer')
        </div>
        <!-- end main content-->
    </div>
    <!-- END layout-wrapper -->
    <script script src="assets/js/app.js"></script>
    <!-- JAVASCRIPT -->
    <script src="{{ asset('backend/assets/libs/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/metismenu/metisMenu.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/simplebar/simplebar.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/node-waves/waves.min.js') }}"></script>


    <!-- apexcharts -->
    <script src="{{ asset('backend/assets/libs/apexcharts/apexcharts.min.js') }}"></script>

    <!-- jquery.vectormap map -->
    <script src="{{ asset('backend/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js') }}">
    </script>
    <script src="{{ asset('backend/assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-us-merc-en.js') }}">
    </script>

    <!-- Required datatable js -->
    <script src="{{ asset('backend/assets/libs/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>

    <!-- Responsive examples -->
    <script src="{{ asset('backend/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js') }}">
    </script>

    <script src="{{ asset('backend/assets/js/pages/dashboard.init.js') }}"></script>

    <!-- App js -->
    {{-- <script src="{{ asset('backend/assets/js/mix.min.js') }}"></script> --}}
    <script src="{{ asset('backend/assets/js/app.js') }}"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

    <script>
        @if (Session::has('message'))
            var type = "{{ Session::get('alert-type', 'info') }}"
            switch (type) {
                case 'info':
                    toastr.info(" {{ Session::get('message') }} ");
                    break;

                case 'success':
                    toastr.success(" {{ Session::get('message') }} ");
                    break;

                case 'warning':
                    toastr.warning(" {{ Session::get('message') }} ");
                    break;

                case 'error':
                    toastr.error(" {{ Session::get('message') }} ");
                    break;
            }
        @endif
    </script>
    <script src="{{ asset('assets/libs/select2/js/select2.min.js') }}"></script>
    <!--tinymce js-->
    <script src="{{ asset('backend/assets/libs/tinymce/tinymce.min.js') }}"></script>
    <!-- init js -->
    <script src="{{ asset('backend/assets/js/pages/form-editor.init.js') }}"></script>
    <!-- Required datatable js -->
    <script src="{{ asset('backend/assets/libs/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <!-- Datatable init js -->
    <script src="{{ asset('backend/assets/js/pages/datatables.init.js') }}"></script>
    <script src="{{ asset('backend/assets/js/validate.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="{{ asset('backend/assets/js/code.js') }}"></script>
    <script src="{{ asset('backend/assets/js/handlebars.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js"></script>
    <!--  For Select2 -->
    <script src="{{ asset('backend/assets/libs/select2/js/select2.min.js') }}"></script>
    <script src="{{ asset('backend/assets/js/pages/form-advanced.init.js') }}"></script>
    <!-- end  For Select2 -->
    <script src="{{ asset('backend/assets/libs/inputmask/jquery.inputmask.min.js') }}"></script>
    <script src="{{ asset('backend/assets/js/pages/form-mask.init.js') }}"></script>

    {{-- <script src="{{ asset('backend/mix/assets/js/dashmix.app.min-5.5.js') }}"></script>
<script src="{{ asset('backend/mix/assets/js/lib/jquery.min.js') }}"></script>
<script src="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}"></script>
<script src="{{ asset('backend/mix/assets/js/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js') }}"></script>
<script src="{{ asset('backend/mix/assets/js/plugins/select2/js/select2.full.min.js') }}"></script>
<script src="{{ asset('backend/mix/assets/js/plugins/ion-rangeslider/js/ion.rangeSlider.min.js') }}"></script>
<script src="{{ asset('backend/mix/assets/js/plugins/jquery.maskedinput/jquery.maskedinput.min.js') }}"></script>
<script src="{{ asset('backend/mix/assets/js/plugins/dropzone/min/dropzone.min.js') }}"></script>
<script src="{{ asset('backend/mix/assets/js/plugins/pwstrength-bootstrap/pwstrength-bootstrap.min.js') }}"></script>
<script src="{{ asset('backend/mix/assets/js/plugins/flatpickr/flatpickr.min.js') }}"></script>
<script>Dashmix.helpersOnLoad(['js-flatpickr', 'jq-datepicker', 'jq-maxlength', 'jq-select2', 'jq-rangeslider', 'jq-masked-inputs', 'jq-pw-strength']);</script>
<script src="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js')}}') }}"></script> --}}

</body>

</html>
