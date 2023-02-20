<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">

    <title>HR-M & Admin | TMSS</title>

    <meta name="description" content="HR-M & Admin | TMSS">
    <meta name="author" content="Nafiur Rahman">
    <meta name="robots" content="noindex, nofollow">

    <!-- Open Graph Meta -->
    <meta property="og:title" content="HR-M & Admin | TMSS">
    <meta property="og:site_name" content="TMSS">
    <meta property="og:description" content="HR-M & Admin | TMSS">
    <meta property="og:type" content="website">
    <meta property="og:url" content="">
    <meta property="og:image" content="">

    <!-- Icons -->
    <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
    <link rel="shortcut icon" href="{{ asset('backend/assets/images/tmss.png') }}">
    <link rel="icon" type="image/png" sizes="192x192" href="{{ asset('backend/assets/images/tmss.png') }}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('backend/assets/images/tmss.png') }}">
    <!-- END Icons -->

    <!-- Stylesheets -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" >
    <!-- Dashmix framework -->
    <link rel="stylesheet" id="css-main" href="{{ asset('backend/mix/assets/css/dashmix.min.css') }}">

    <!-- You can include a specific file from css/themes/ folder to alter the default color theme of the template. eg: -->
    <!-- <link rel="stylesheet" id="css-theme" href="assets/css/themes/xwork.min.css"> -->
    <!-- END Stylesheets -->
  </head>

  <body>
    
    <div id="page-container">

      <!-- Main Container -->
      <main id="main-container">
        <!-- Page Content -->
        <div class="bg-image" style="background-image: url('backend/mix/assets/media/photos/photo22@2x.jpg')">
          <div class="row g-0 bg-primary-op">
            <!-- Main Section -->
            <div class="hero-static col-md-6 d-flex align-items-center bg-body-extra-light">
              <div class="p-3 w-100">
                <!-- Header -->
                <div class="text-center mt-4">
                    <div class="mb-3">
                        <a href="{{ route('login') }}" class="auth-logo">
                            <img src="{{ asset('backend/assets/images/tmss.png') }}" height="150" class="logo-dark mx-auto" alt="">
                            {{-- <img src="{{ asset('backend/assets/images/hrm-light.png') }}" height="60" class="logo-light mx-auto" alt=""> --}}
                        </a>
                    </div>
                </div>
                <!-- END Header -->

                <!-- Sign In Form -->
                <!-- jQuery Validation (.js-validation-signin class is initialized in js/pages/op_auth_signin.min.js which was auto compiled from _js/pages/op_auth_signin.js) -->
                <!-- For more info and examples you can check out https://github.com/jzaefferer/jquery-validation -->
                <div class="row g-0 justify-content-center">
                  <div class="col-sm-8 col-xl-6">
                    <form class="js-validation-signin" action="{{ route('login') }}" method="POST">
                        @csrf
                      <div class="py-3">
                        <div class="mb-4">
                          <input type="text" class="form-control form-control-lg form-control-alt" id="username" name="username" placeholder="Username">
                        </div>
                        <div class="mb-4">
                          <input type="password" class="form-control form-control-lg form-control-alt" id="password" name="password" placeholder="Password">
                        </div>
                      </div>
                      <div class="mb-4">
                        <button type="submit" class="btn w-100 btn-lg btn-hero btn-success">
                          <i class="fa fa-fw fa-sign-in-alt opacity-50 me-1"></i> Sign In
                        </button>
                        <p class="mt-3 mb-0 d-lg-flex justify-content-lg-between">
                          <a class="btn btn-sm btn-alt-secondary d-block d-lg-inline-block mb-1" href="{{ route('password.request') }}">
                            <i class="fa fa-exclamation-triangle opacity-50 me-1"></i> Forgot password
                          </a>
                          <a class="btn btn-sm btn-alt-secondary d-block d-lg-inline-block mb-1" href="{{ route('register') }}">
                            <i class="fa fa-plus opacity-50 me-1"></i> New Account
                          </a>
                        </p>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- END Sign In Form -->
              </div>
            </div>
            <!-- END Main Section -->

            <!-- Meta Info Section -->
            <div class="hero-static col-md-6 d-none d-md-flex align-items-md-center justify-content-md-center text-md-center">
              <div class="p-3">
                <p class="display-5 fw-bold text-white mb-3">
                  Welcome to
                </p>
                <p class="display-5 fw-bold text-white mb-3">
                  HR-M & Admin
                </p>
                <p class="display-3 fw-bold text-white mb-3">
                    TMSS
                  </p>
                <p class="fs-lg fw-semibold text-white-75 mb-0">
                  Copyright &copy; <span data-toggle="year-copy"></span>
                </p>
              </div>
            </div>
            <!-- END Meta Info Section -->
          </div>
        </div>
        <!-- END Page Content -->
      </main>
      <!-- END Main Container -->
    </div>
    <!-- END Page Container -->

    <script src="{{ asset('backend/mix/assets/js/dashmix.app.min.js') }}"></script>

    <!-- jQuery (required for jQuery Validation plugin) -->
    <script src="{{ asset('backend/mix/assets/js/lib/jquery.min.js') }}"></script>

    <!-- Page JS Plugins -->
    <script src="{{ asset('backend/mix/assets/js/plugins/jquery-validation/jquery.validate.min.js') }}"></script>

    <!-- Page JS Code -->
    <script src="{{ asset('backend/mix/assets/js/pages/op_auth_signin.min.js') }}"></script>

    <script>
        @if(Session::has('message'))
        var type = "{{ Session::get('alert-type','info') }}"
        switch(type){
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
  </body>
</html>

