@extends('admin.admin_master')
@section('admin')
@section('title'){{'Dashboard'}} @endsection

<div class="main-content">

    <div class="page-content">
        <div class="container-fluid">
            <nav aria-label="breadcrumb">
                <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                  <li class="breadcrumb-item">
                    <a href="javascript:void(0)">Home</a>
                  </li>
                  <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                </ol>
              </nav>            
            <div class="row">
              @if (Auth::user()->can('newemployee.module'))              
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('employee.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fas fa-house-user fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">All Employee</p>
                    </div>
                  </a>
                </div>
              @endif

              @if (Auth::user()->can('newemployee.module'))
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('newemployee.add') }}">
                    {{-- <div class="ribbon-box">2</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">New Employee</p>
                    </div>
                  </a>
                </div>
                @endif

                @if (Auth::user()->can('efile.module'))
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-success" href="/efile">
                    {{-- <div class="ribbon-box">3</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fas fa-file-archive fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">eFile Magt</p>
                    </div>
                  </a>
                </div>
                @endif

                @if (Auth::user()->can('settings.module'))
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('setup.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fas fa-cogs fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">All Setup</p>
                    </div>
                  </a>
                </div>
                @endif

                @if (Auth::user()->can('usermanagement.module'))
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('all.roles-permission-mgt') }}">
                    {{-- <div class="ribbon-box">24</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-user-tie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">User Management</p>
                    </div>
                  </a>
                </div><!-- User Management -->
                @endif
        </div>
        
    </div>
    <!-- End Page-content -->    
</div>

@endsection