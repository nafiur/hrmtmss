@extends('admin.admin_master')
@section('admin')
@section('title') {{'Add New Sector'}} @endsection
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="page-content">
<div class="container-fluid">
    <nav aria-label="breadcrumb">
        <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
          <li class="breadcrumb-item">
            <a href="/dashboard">Home</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">Add New Sector</li>
        </ol>
      </nav>
<div class="row">
<div class="col-12">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Add New Sector</h4><br><br>
            <form method="post" action="{{ route('sector.store') }}" id="myForm" >
                @csrf
                <div class="row mb-3">
                    <label for="example-text-input" class="col-sm-2 col-form-label">Sector Name </label>
                    <div class="form-group col-sm-6">
                        <input name="name" class="form-control" type="text"    >
                    </div>
                    <div class="form-group col-sm-6">
                        <input type="submit" class="btn btn-info waves-effect waves-light" value="Save">
                    </div>
                    
                </div>
                <!-- end row -->
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
                    required : 'Please Enter Sector Name',
              
            }
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
