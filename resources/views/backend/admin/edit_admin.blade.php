@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'Edit User Information' }}
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Edit User Information</li>
            </ol>
        </nav>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        {{-- <h4 class="card-title">Edit User </h4><br><br> --}}
                        <a href="{{ route('all.admin') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                            style="float:right;"><i class="fas fa-plus-circle"> Back </i></a> <br> <br>
                        <h4 class="card-title">Edit User </h4><br><br>
                        <form id="myForm" method="post" action="{{ route('admin.update') }}"
                            enctype="multipart/form-data">
                            @csrf

                            <input type="hidden" name="id" value="{{ $adminuser->id }}">

                            {{-- <h5 class="mb-4 text-uppercase"><i class="mdi mdi-account-circle me-1"></i> Edit Admin</h5> --}}

                            <div class="row">


                                <div class="col-md-6">
                                    <div class="mb-3 form-group">
                                        <label for="firstname" class="form-label"> Name</label>
                                        <input type="text" name="name" class="form-control"
                                            value="{{ $adminuser->name }}">

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3 form-group">
                                        <label for="firstname" class="form-label">User Name</label>
                                        <input type="text" name="username" class="form-control"
                                            value="{{ $adminuser->username }}">

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="mb-3 form-group">
                                        <label for="firstname" class="form-label"> Email</label>
                                        <input type="email" name="email" class="form-control"
                                            value="{{ $adminuser->email }}">

                                    </div>
                                </div>





                                <div class="col-md-6">
                                    <div class="mb-3 form-group">
                                        <label for="firstname" class="form-label">Asign Roles </label>
                                        <select name="roles" class="form-select select2" id="example-select">
                                            <option selected disabled>Select Roles </option>
                                            @foreach ($roles as $role)
                                                <option value="{{ $role->id }}"
                                                    {{ $adminuser->hasRole($role->name) ? 'selected' : '' }}>
                                                    {{ $role->name }}</option>
                                            @endforeach
                                        </select>

                                    </div>
                                </div>




                            </div> <!-- end row -->



                            <div class="text-end">
                                <button type="submit" class="mt-2 btn btn-success waves-effect waves-light"><i
                                        class="mdi mdi-content-save"></i> Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div> <!-- end col -->
        </div>
    </div> <!-- end row -->
</div> <!-- container-fluid -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#myForm').validate({
            rules: {
                name: {
                    required: true,
                },
                email: {
                    required: true,
                },
                phone: {
                    required: true,
                },
                photo: {
                    required: true,
                },
                password: {
                    required: true,
                },
                roles: {
                    required: true,
                },
            },
            messages: {
                name: {
                    required: 'Please Enter User Name',
                },
                email: {
                    required: 'Please Enter User Email',
                },
                phone: {
                    required: 'Please Enter User Phone',
                },
                password: {
                    required: 'Please Enter User Password',
                },
                photo: {
                    required: 'Please Select User Photo',
                },
                roles: {
                    required: 'Please Select User Role',
                },

            },
            errorElement: 'span',
            errorPlacement: function(error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function(element, errorClass, validClass) {
                $(element).addClass('is-invalid');
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
            },
        });
    });
</script>









@endsection
