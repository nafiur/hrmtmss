@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'Add Form' }}
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Add New Form</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Add New Form</h3>
                <a href="{{ route('download.all') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>

            <div class="block-content">
                <div class="row">
                    <div class="col-lg-4">
                        <p class="text-muted">
                            Add New Form Information
                        </p>
                    </div>

                    <div class="col-lg-8 col-xl-6">
                        <!-- Form Labels on top - Default Style -->
                        <form class="mb-5" action="{{ route('download.store') }}" id="myform"
                            enctype="multipart/form-data" method="POST">
                            @csrf
                            <div class="mb-4">
                                <label class="form-label" for="example-text-input">Form Name</label>
                                <input type="text" class="form-control" id="example-text-input" name="form_name"
                                    required="" value="{{ old('name') }}">
                            </div>

                            <div class="mb-4">
                                <label for="firstname" class="form-label">File Type </label>
                                <select name="form_type" value="{{ old('name') }}" class="form-select"
                                    id="example-select">
                                    <option selected disabled>Select File Type </option>
                                    <option value="pdf">PDF</option>
                                    <option value="doc">Word</option>
                                    <option value="xls">Excel</option>
                                    <option value="ppt">Powe Point</option>
                                    <option value="image">Image</option>
                                </select>
                            </div>

                            <div class="mb-4">
                                <label class="form-label" for="example-file-input">Upload File</label>
                                <input class="form-control" type="file" name="form_file" id="example-file-input"
                                    required="" value="{{ old('name') }}">
                            </div>

                            <div class="mb-4">
                                <input type="submit" style="float:right;"
                                    class="mb-4 btn btn-info waves-effect waves-light" value="Save">
                            </div>

                        </form>
                        <!-- END Form Labels on top - Default Style -->
                    </div>
                </div>
                <!-- END Label on top Layout -->
            </div>
            <!--block-content-->
        </div><!-- END block -->
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('#myForm').validate({
            rules: {
                form_name: {
                    required: true,
                },
                form_file: {
                    required: true,
                },
            },
            messages: {
                form_name: {
                    required: 'Please Enter Gender Name',
                },
                form_file: {
                    required: 'Please Enter Gender Name',
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
