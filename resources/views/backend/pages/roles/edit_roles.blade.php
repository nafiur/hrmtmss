@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'Edit Roles' }}
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<div class="content">

    <!-- Start Content-->
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="{{ route('all.roles') }}">All Roles</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Edit Roles</li>
            </ol>
        </nav>
        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Edit Roles</h3>
                <a href="{{ route('all.roles') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <div class="row">
                    <div class="col-lg-4">
                        <p class="text-muted">
                            Update Roles Information
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <form class="mb-5" action="{{ route('roles.update') }}" method="POST">
                            @csrf
                            <div class="mb-4">
                                <input type="hidden" name="id" value="{{ $roles->id }}">
                                <label class="form-label" for="example-text-input">Roles Name</label>
                                <input type="text" class="form-control" id="myform" name="name"
                                    value="{{ $roles->name }}" placeholder="Role Name">
                            </div>
                            <div class="mb-4">
                                <button type="submit" style="float:right" class="mb-3 btn btn-primary">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- end card-->
</div> <!-- end col -->
</div>
<!-- end row-->
</div> <!-- container -->
</div> <!-- content -->


<script type="text/javascript">
    $(document).ready(function() {
        $('#myForm').validate({
            rules: {
                name: {
                    required: true,
                },


            },
            messages: {
                name: {
                    required: 'Please Enter Permission Name',
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
