<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">

    <title>@yield('title'){{'e-File Management | HR-M & Admin'}} </title>
    {{-- @section('title'){{'Add New Employee Type'}} @endsection --}}

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="HRM & Admin, TMSS" name="description" />
    <meta content="Nafiur Rahman" name="author" />

    <!-- Icons -->
    <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
    <link rel="shortcut icon" href="{{ asset('backend/assets/images/tmss.png') }}">
    <link rel="icon" type="image/png" sizes="192x192" href="{{ asset('backend/assets/images/tmss.png') }}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('backend/assets/images/tmss.png') }}">
    <!-- END Icons -->

    <!-- Stylesheets -->
    <!-- Dashmix framework -->
    <link rel="stylesheet" id="css-main" href="{{ asset('backend/mix/assets/css/dashmix.min.css') }}">

    <!-- You can include a specific file from css/themes/ folder to alter the default color theme of the template. eg: -->
    <!-- <link rel="stylesheet" id="css-theme" href="{{ asset('backend/mix/assets/css/themes/xwork.min.css') }}"> -->
    <link rel="stylesheet" id="css-theme" href="{{ asset('backend/mix/assets/css/themes/xdream.min.css') }}">
    <!-- END Stylesheets -->
  </head>

  <body>
    
    <div id="page-container" class="sidebar-o side-scroll page-header-fixed page-header-dark">
        @include('efile.body.header')
        @include('efile.body.sidebar')
        @include('efile.body.page-header')

      <!-- Main Container -->
      <main id="main-container">
        @yield('efile')
        <!-- Page Content -->
      </main>
      <!-- END Main Container -->
      @include('efile.body.footer')
    </div>
    <!-- END Page Container -->
    <script src="{{ asset('backend/mix/assets/js/dashmix.app.min.js') }}"></script>
  </body>
</html>
