@extends('admin.admin_master')
@section('admin')
@section('title'){{'Edit Permission'}} @endsection
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Edit Permission</a></li>
                                            
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Edit Permission</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> --}}

<div class="row">
    

  <div class="col-lg-8 col-xl-12">
<div class="card">
    <div class="card-body">
                                    
                                      
                                         
                                           

    <!-- end timeline content-->

    <div class="tab-pane" id="settings">
        <form id="myForm" method="post" action="{{ route('permission.update') }}" enctype="multipart/form-data">
            @csrf

            <input type="hidden" name="id" value="{{ $permission->id }}">

            <h5 class="mb-4 text-uppercase"><i class="mdi mdi-account-circle me-1"></i> Edit Permission</h5>

            <div class="row">


    <div class="col-md-6">
        <div class="mb-3 form-group">
            <label for="firstname" class="form-label">Permission Name</label>
            <input type="text" name="name" class="form-control" value="{{ $permission->name }}"  >
           
        </div>
    </div>


    <div class="col-md-6">
        <div class="mb-3 form-group">
            <label for="firstname" class="form-label">Group Name </label>
            <select name="group_name" class="form-select" id="example-select">
                <option selected disabled >Select Group  </option>         
                <option value="dashboard"{{ $permission->group_name == 'dashboard' ? 'selected' : '' }}>Dashboard</option>
                <option value="settings"{{ $permission->group_name == 'settings' ? 'selected' : '' }}> Settings</option>
                <option value="form-formats"{{ $permission->group_name == 'form-formats' ? 'selected' : '' }}> Form & Formats</option>
                <option value="all-employee"{{ $permission->group_name == 'all-employee' ? 'selected' : '' }}> All Employee</option>
                <option value="new-employee"{{ $permission->group_name == 'new-employee' ? 'selected' : '' }}> New Employee </option>
                <option value="efile"{{ $permission->group_name == 'efile' ? 'selected' : '' }}> eFile </option>
                <option value="sector"{{ $permission->group_name == 'sector' ? 'selected' : '' }}> Sector </option>
                <option value="domain"{{ $permission->group_name == 'domain' ? 'selected' : '' }}> Domain </option>
                <option value="designation"{{ $permission->group_name == 'designation' ? 'selected' : '' }}> Designation </option>
                <option value="division"{{ $permission->group_name == 'division' ? 'selected' : '' }}> Division</option>
                <option value="district"{{ $permission->group_name == 'district' ? 'selected' : '' }}> District </option>
                <option value="upazilla"{{ $permission->group_name == 'upazilla' ? 'selected' : '' }}> Upazilla</option>                                                                 
                <option value="bloodgroup"{{ $permission->group_name == 'bloodgroup' ? 'selected' : '' }}> Bloodgroup</option>                                                                 
                <option value="department"{{ $permission->group_name == 'department' ? 'selected' : '' }}> Department</option>                                                                 
                <option value="employeetype"{{ $permission->group_name == 'employeetype' ? 'selected' : '' }}> Employeetype</option>                                                                 
                <option value="roles"{{ $permission->group_name == 'roles' ? 'selected' : '' }}> Roles</option>   
                <option value="module"{{ $permission->group_name == 'module' ? 'selected' : '' }}> Module</option>   
            </select>           
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