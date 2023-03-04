@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'Forms Download' }}
@endsection

<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">All Form & Formats</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Add New Form</h3>
                <a href="{{ route('download.add') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-plus-circle"> Add New Form </i></a> <br> <br>
            </div>
            <div class="block-content">
                <!-- Label on top Layout -->
                {{-- <h2 class="content-heading">Labels on top</h2> --}}
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            @if (Auth::user()->can('newemployee.module'))
                                <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block text-center block-rounded block-bordered block-link-shadow"
                                        href="{{ route('employee.all') }}">
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
                                    <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                                        href="{{ route('newemployee.add') }}">
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
                                    <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-success"
                                        href="/efile">
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
                                    <a class="block text-center block-rounded block-bordered block-link-shadow"
                                        href="{{ route('setup.all') }}">
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
                                    <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                                        href="{{ route('all.roles-permission-mgt') }}">
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
                </div> <!-- end col -->
            </div> <!-- end row -->
            <div class="row">
                <h4 class="card-title"> All Data </h4>
                <table id="datatable" class="self-center table align-middle table-bordered dt-responsive nowrap"
                    style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                    <thead>
                        <tr>
                            <th width="10%">Sl</th>
                            <th>Name</th>
                            {{-- <th>Name English</th>  --}}
                            <th width="10%">File Type</th>
                            <th width="10%">Download</th>
                            {{-- <th width="5%">Doc</th> --}}
                            <th width="20%">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        {{-- @foreach ($notices as $key => $item)
                            <tr>
                                <td> {{ $key + 1 }} </td>
                                <td> {{ $item->notice }} </td>
                                <td> {{ $item->form_type }} </td>
                                <td> <a href="{{ asset('upload/downloads/form/' . $item->form_file) }}"
                                        class="btn btn-primary sm" title="Download"> <i
                                            class="fas fa-file-download"></i></a> </td>
                                <td>
                                    @if (Auth::user()->can('formformats.show'))
                                        <a href="{{ route('download.show', $item->id) }}" class="btn btn-info sm"
                                            title="Show Data"> <i class="fas fa-eye"></i> </a>
                                    @endif
                                    @if (Auth::user()->can('formformats.edit'))
                                        <a href="{{ route('download.edit', $item->id) }}" class="btn btn-info sm"
                                            title="Edit Data"> <i class="fas fa-edit"></i> </a>
                                    @endif

                                    @if (Auth::user()->can('formformats.delete'))
                                        <a href="{{ route('download.delete', $item->id) }}" class="btn btn-danger sm"
                                            title="Delete Data" id="delete"> <i class="fas fa-trash-alt"></i> </a>
                                    @endif
                                </td>
                            </tr>
                        @endforeach --}}
                    </tbody>
                </table>
                <div class="col-lg-8 col-xl-6">
                    <!-- Form Labels on top - Default Style -->

                    <!-- END Form Labels on top - Default Style -->
                </div>
            </div>
            <!-- END Label on top Layout -->
        </div>
        <!--block-content-->
    </div><!-- END block -->


</div> <!-- container-fluid -->
</div>
@endsection
