@extends('admin.admin_master')
@section('admin')
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 @section('title'){{'Add New Gender'}} @endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
              <li class="breadcrumb-item">
                <a href="/dashboard">Home</a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">Add New Gender</li>
            </ol>
          </nav>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <a href="{{ route('gender.all') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Back </i></a> <br>  <br>
                            <h4 class="card-title">Add Gender </h4><br><br>
                                <form method="post" action="{{ route('gender.store') }}" id="myForm" >
                                        @csrf

                                    <div class="row mb-3">
                                        <label for="example-text-input" class="col-sm-2 col-form-label">Gender Name </label>
                                        <div class="form-group col-sm-10">
                                            <input name="name" class="form-control" type="text"    >
                                        </div>
                                    </div>
                                    <!-- end row -->
                                    <input type="submit" class="btn btn-info waves-effect waves-light" value="Add Gender">
                                </form>
                        </div>
                    </div>
                </div> <!-- end col -->
          </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function (){
        $('#myForm').validate({
            rules: {
                name: {
                    required : true,
                }, 
            },
            messages :{
                name: {
                    required : 'Please Enter Gender Name',
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
