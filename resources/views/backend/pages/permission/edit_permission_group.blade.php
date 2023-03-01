@extends('admin.admin_master')
@section('admin')
@section('title'){{'Update Permission Group'}} @endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">
            <nav aria-label="breadcrumb">
                <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Update Permission Group</li>
                </ol>
            </nav>

            <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Update Permission Group</h3>
                <a href="{{ route('all.permissiongroup') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fa fa-undo"> Back </i></a> <br>  <br>
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
                    <form class="mb-5" action="{{ route('permissiongroup.update') }}" method="POST">
                    @csrf
                    <input type="hidden" name="id" value="{{ $permissiongroup->id }}">
                    <div class="mb-4">
                        <label for="firstname" class="form-label">Permission Group Name</label>
                        <input type="text" name="group_name" class="form-control" value="{{ $permissiongroup->group_name }}"  >
                    </div>
                    <div class="mb-4">
                        <button type="submit" style="float:right" class="btn mb-3 btn-primary">Update</button>
                    </div>
                    </form>
                    <!-- END Form Labels on top - Default Style -->
                </div>
                </div>
                <!-- END Label on top Layout -->
            </div><!--block-content-->
        </div>
    </div> <!-- container -->

</div> <!-- content -->
</div> <!-- content -->


<script type="text/javascript">
    $(document).ready(function (){
        $('#myForm').validate({
            rules: {
                name: {
                    required : true,
                },
                group_name: {
                    required : true,
                },

            },
            messages :{
                name: {
                    required : 'Please Enter Permission Name',
                },
                group_name: {
                    required : 'Please Select Group Name',
                },


            },
            errorElement : 'span',
            errorPlacement: function (error,element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight : function(element, errorClass, validClass){
                $(element).addClass('is-invalid');
            },
            unhighlight : function(element, errorClass, validClass){
                $(element).removeClass('is-invalid');
            },
        });
    });
</script>
@endsection
