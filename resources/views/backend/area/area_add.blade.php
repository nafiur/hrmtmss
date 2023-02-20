@extends('admin.admin_master')
@section('admin')
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 @section('title'){{'Add New Area'}} @endsection
 <div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
              <li class="breadcrumb-item">
                <a href="/dashboard">Home</a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">Add New Area</li>
            </ol>
          </nav>
        {{-- <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">Area All</h4>
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">HRM</a></li>
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div> <!-- end page title -->   --}}
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <a href="{{ route('area.all') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Back </i></a> <br>  <br>
                            <h4 class="card-title">Add Area Page </h4><br><br>
                            <div class="col-9">
                                <form method="post" action="{{ route('area.store') }}" id="myForm" >
                                        @csrf

                                        <div class="row mb-3">
                                            <label class="col-sm-2 col-form-label">Domain Name </label>
                                            <div class="col-sm-6">
                                                <select name="domain_id" class="form-select" aria-label="Default select example">
                                                    <option selected="">Select Domain</option>
                                                    @foreach($domains as $domain)
                                                    <option value="{{ $domain->id }}">{{ $domain->name }}</option>
                                                   @endforeach
                                                    </select>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label class="col-sm-2 col-form-label">Zone Name </label>
                                            <div class="col-sm-6">
                                                <select name="zone_id" class="form-select" aria-label="Default select example">
                                                    <option selected="">Select Zone</option>
                                                    @foreach($zones as $zone)
                                                    <option value="{{ $zone->id }}">{{ $zone->name }}</option>
                                                   @endforeach
                                                    </select>
                                            </div>
                                        </div>

                                    <div class="row mb-3">
                                        <label for="example-text-input" class="col-sm-2 col-form-label">Area Name </label>
                                        <div class="form-group col-sm-6">
                                            <input name="name" class="form-control" type="text"    >
                                        </div>
                                    </div>
                                    <!-- end row -->
                                    <input type="submit" class="btn btn-info waves-effect waves-light" value="Save">
                                </form>
                            </div>
                        </div>
                    </div>
                </div> <!-- end col -->
</div>
</div> <!-- container-fluid -->
</div> {{-- end page content --}}


<script type="text/javascript">
    $(document).ready(function (){
        $('#myForm').validate({
            rules: {
                name: {
                    required : true,
                }, 
                domain_id: {
                    required : true,
                }, 
                zone_id: {
                    required : true,
                }, 
            },
            messages :{
                name: {
                    required : 'Please Enter Area Name',
                },
                domain_id: {
                    required : 'Please Enter Domain Name',
                },
                zone_id: {
                    required : 'Please Enter Zone Name',
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
