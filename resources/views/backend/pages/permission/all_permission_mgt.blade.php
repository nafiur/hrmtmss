@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'User Roles Permission Management' }}
@endsection

<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">User Roles Permission Management</li>
            </ol>
        </nav>
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow"
                            href="{{ route('all.roles') }}">
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-house-user fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Roles Management</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.permission') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Permission Management</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.roles.permission') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Role in Permission</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-success"
                            href="{{ route('all.admin') }}">
                            {{-- <div class="ribbon-box">3</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-file-archive fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">User Management</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow" href="">
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-cogs fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">All Setup</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="javascript:void(0)">
                            {{-- <div class="ribbon-box">24</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fa-user-tie fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">People</p>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow"
                            href="javascript:void(0)">
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fa-file-word fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Documents</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div> <!-- end row -->
        </div> <!-- container-fluid -->
    </div>
@endsection
