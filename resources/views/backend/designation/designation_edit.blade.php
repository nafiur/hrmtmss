@extends('admin.admin_master')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
@section('title')
    {{ 'Edit Designation' }}
@endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Edit Designation Information</li>
            </ol>
        </nav>

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Designation Edit</h4><br><br>



                        <form method="post" action="{{ route('designation.update') }}" id="myForm">
                            @csrf

                            <input type="hidden" name="id" value="{{ $designation->id }}">

                            <div class="mb-3 row">
                                <label for="example-text-input" class="col-sm-2 col-form-label">Designation Name
                                </label>
                                <div class="form-group col-sm-10">
                                    <input name="name" class="form-control" value="{{ $designation->name }}"
                                        type="text">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="example-text-input" class="col-sm-2 col-form-label">Designation Name
                                </label>
                                <div class="form-group col-sm-10">
                                    <input name="grade" class="form-control" value="{{ $designation->grade }}"
                                        type="text">
                                </div>
                            </div>
                            <!-- end row -->
                            @if (Auth::user()->can('designation.edit'))
                                <input type="submit" class="btn btn-info waves-effect waves-light"
                                    value="Update Designation">
                            @endif
                        </form>



                    </div>
                </div>
            </div> <!-- end col -->
        </div>



    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('#myForm').validate({
            rules: {
                name: {
                    required: true,
                },
                grade: {
                    required: true,
                },
                //  email: {
                //     required : true,
                // },
                //  address: {
                //     required : true,
                // },
            },
            messages: {
                name: {
                    required: 'Please Enter Designation Name',
                },
                grade: {
                    required: 'Please Enter Grade',
                },
                // email: {
                //     required : 'Please Enter Your Email',
                // },
                // address: {
                //     required : 'Please Enter Your Address',
                // },
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
