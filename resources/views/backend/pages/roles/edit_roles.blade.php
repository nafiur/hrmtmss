@extends('admin.admin_master')
@section('admin')
@section('title'){{'Edit Roles'}} @endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

 <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">
                        <nav aria-label="breadcrumb">
                            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                            <li class="breadcrumb-item">
                                <a href="/dashboard">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">User Roles Permission Management</li>
                            </ol>
                        </nav>

                        {{-- <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="m-0 breadcrumb">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Edit Roles</a></li>
                                            
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Edit Roles</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> --}}

<div class="row">
    

  <div class="col-lg-8 col-xl-8">
<div class="card">
    <div class="card-body">
                                    
                                      
                                         
                                           

    <!-- end timeline content-->

    <div class="tab-pane" id="settings">
        <form id="myForm" method="post" action="{{ route('roles.update') }}" enctype="multipart/form-data">
            @csrf

            <input type="hidden" name="id" value="{{ $roles->id }}">

            <h5 class="mb-4 text-uppercase"><i class="mdi mdi-account-circle me-1"></i> Edit Roles</h5>

            <div class="row">


    <div class="col-md-6">
        <div class="mb-3 form-group">
            <label for="firstname" class="form-label">Role Name</label>
            <input type="text" name="name" class="form-control" value="{{ $roles->name }}"  >
           
        </div>
    </div>
 


            </div> <!-- end row -->
 
        
            
            <div class="text-end">
                <button type="submit" class="mt-2 btn btn-success waves-effect waves-light"><i class="mdi mdi-content-save"></i> Save</button>
            </div>
        </form>
    </div>
    <!-- end settings content-->
    
                                       
                                    </div>
                                </div> <!-- end card-->

                            </div> <!-- end col -->
                        </div>
                        <!-- end row-->

                    </div> <!-- container -->

                </div> <!-- content -->


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
                    required : 'Please Enter Permission Name',
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