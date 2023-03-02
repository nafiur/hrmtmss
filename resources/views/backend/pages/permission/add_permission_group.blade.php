@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'Add Permission Group' }}
@endsection

<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Add Permission Group</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Add Permission Group</h3>
                <a href="{{ route('all.permissiongroup') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <!-- Label on top Layout -->
                {{-- <h2 class="content-heading">Labels on top</h2> --}}
                <div class="row">
                    <div class="col-lg-4">
                        <p class="text-muted">
                            Enter Permission Group Information
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <!-- Form Labels on top - Default Style -->
                        <form class="mb-5" action="{{ route('permissiongroup.store') }}" method="POST">
                            @csrf
                            <div class="mb-4">
                                <label class="form-label" for="example-text-input">Permission Group Name</label>
                                <input type="text" class="form-control" id="example-text-input" name="group_name"
                                    placeholder="">
                            </div>
                            <div class="mb-4">
                                <button type="submit" style="float:right" class="mb-3 btn btn-primary">Save</button>
                            </div>
                        </form>
                        <!-- END Form Labels on top - Default Style -->
                    </div>
                </div>
                <!-- END Label on top Layout -->
            </div>
            <!--block-content-->
        </div>
    @endsection
