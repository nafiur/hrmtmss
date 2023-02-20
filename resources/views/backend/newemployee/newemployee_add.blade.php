@extends('admin.admin_master')
@section('admin')
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 @section('title'){{'Add New Employee'}} @endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
              <li class="breadcrumb-item">
                <a href="javascript:void(0)">Home</a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">Add New Employee Information</li>
            </ol>
          </nav>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <a href="{{ route('newemployee.all') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-rotate-left"> Back </i></a> <br>  <br>
                            <h4 class="card-title">Add New Employee Info</h4><br><br>
                                <form method="post" action="{{ route('newemployee.store') }}" id="myForm" >
                                        @csrf
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Employee ID</label>
                                                    <input type="text" name="id" class="form-control" required="" data-parsley-maxlength="8" placeholder="10100000">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Employee Name</label>
                                                    <input type="text" name="name" class="form-control" required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Father's Name</label>
                                                    <input type="text" name="father_name" class="form-control" required="">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Mother's Name</label>
                                                    <input type="text" name="mother_name" class="form-control" required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Designation</label>
                                                    {{-- <input type="text" class="form-control" required=""> --}}
                                                    <select name="designation_id" class="form-select" aria-label="Default select example">
                                                        <option selected="">Select Designation</option>
                                                        @foreach($designations as $designation)
                                                        <option value="{{ $designation->id }}">{{ $designation->name }}.{{ $designation->grade }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Domain</label>
                                                    {{-- <input type="text" class="form-control" required=""> --}}
                                                    <select name="domain_id" class="form-select" aria-label="Default select example">
                                                        <option selected="">Select Domain</option>
                                                        @foreach($domains as $domain)
                                                        <option value="{{ $domain->id }}">{{ $domain->name }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-date-input" class="form-label">Joining Date</label>
                                                    {{-- <input type="text" class="form-control" required=""> --}}
                                                    <input class="form-control" name="joiningdate" type="date">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Date of Birth</label>
                                                    {{-- <input type="text" class="form-control" required=""> --}}
                                                    <input class="form-control" name="date_of_birth" type="date">
                                                </div>
                                            </div>
                                        </div>
                                    
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Marital Status</label>
                                                    {{-- <input type="text" class="form-control" required=""> --}}
                                                    <select name="marital_status_id" class="form-select" aria-label="Default select example">
                                                        <option selected="">Select Marital Status</option>
                                                        @foreach($maritalstatus as $mstatus)
                                                        <option value="{{ $mstatus->id }}">{{ $mstatus->name }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Place of Birth District</label>
                                                    {{-- <input type="text" class="form-control" required=""> --}}
                                                    <select name="birth_place_district_id" class="form-select" aria-label="Default select example">
                                                        <option selected="">Select District</option>
                                                        @foreach($districts as $district)
                                                        <option value="{{ $district->id }}">{{ $district->name }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        {{-- <h4 class="card-title">Pemanent Address</h4> --}}
                                        <div class="alert alert-secondary" role="alert">
                                            Permanent Address
                                        </div>
                                        {{-- <label for="example-text-input" class="form-label">Permanent Address</label> --}}
                                        {{-- <hr> --}}
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Village</label>
                                                    <input type="text" name="permanent_village" class="form-control"  required="">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Postoffice</label>
                                                    <input type="text" name="permanent_post" class="form-control"  required="">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Postal Code</label>
                                                    <input type="text" name="permanent_postal_code" class="form-control"  required="">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Division</label>
                                                    {{-- <input type="text" class="form-control"  required=""> --}}
                                                    <select name="permanent_division_id" class="form-select" aria-label="Default select example">
                                                        <option selected="">Select Division</option>
                                                        @foreach($divisions as $division)
                                                        <option value="{{ $division->id }}">{{ $division->name }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">District</label>
                                                    {{-- <input type="text" class="form-control"  required=""> --}}
                                                    <select name="permanent_district_id" class="form-select" aria-label="Default select example">
                                                        <option selected="">Select District</option>
                                                        @foreach($districts as $district)
                                                        <option value="{{ $district->id }}">{{ $district->name }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Upazilla</label>
                                                    {{-- <input type="text" class="form-control"  required=""> --}}
                                                    <select name="permanent_upazilla_id" class="form-select" aria-label="Default select example">
                                                        <option selected="">Select Upazilla</option>
                                                        @foreach($upazillas as $upazilla)
                                                        <option value="{{ $upazilla->id }}">{{ $upazilla->name }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        {{-- <h4 class="card-title">Present Address</h4><br><hr> --}}
                                        {{-- <label for="example-text-input" class="form-label">Present Address</label> --}}
                                        <div class="alert alert-secondary" role="alert">
                                            Present Address
                                        </div>
                                        {{-- <hr> --}}
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Village</label>
                                                    <input type="text" name="present_village" class="form-control"  required="">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Postoffice</label>
                                                    <input type="text" name="present_post" class="form-control"  required="">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Postal Code</label>
                                                    <input type="text" name="present_postal_code" class="form-control"  required="">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Division</label>
                                                    {{-- <input type="text" class="form-control"  required=""> --}}
                                                    <select name="present_division_id" class="form-select" aria-label="Default select example">
                                                        <option selected="">Select Division</option>
                                                        @foreach($divisions as $division)
                                                        <option value="{{ $division->id }}">{{ $division->name }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">District</label>
                                                    {{-- <input type="text" class="form-control"  required=""> --}}
                                                    <select name="present_district_id" class="form-select" aria-label="Default select example">
                                                        <option selected="">Select District</option>
                                                        @foreach($districts as $district)
                                                        <option value="{{ $district->id }}">{{ $district->name }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Upazilla</label>
                                                    {{-- <input type="text" class="form-control"  required=""> --}}
                                                    <select name="present_upazilla_id" class="form-select" aria-label="Default select example">
                                                        <option selected="">Select Upazilla</option>
                                                        @foreach($upazillas as $upazilla)
                                                        <option value="{{ $upazilla->id }}">{{ $upazilla->name }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Mobile</label>
                                                    <input type="text" name="mobile" class="form-control" required="">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Email</label>
                                                    <input type="email" name="email" class="form-control" required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">NID Card</label>
                                                    <input type="text" name="nid" class="form-control" required="">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Smard Card</label>
                                                    <input type="text" name="smartcard" class="form-control" required="">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">BloodGroups</label>
                                                    {{-- <input type="text" class="form-control"  required=""> --}}
                                                    <select name="bloodgroups_id" class="form-select" aria-label="Default select example">
                                                        <option selected="">Select Blood Group</option>
                                                        @foreach($blood_groups as $blood_group)
                                                        <option value="{{ $blood_group->id }}">{{ $blood_group->name }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    <div class="col-md-6 fl">
                                        <input type="submit" class="btn btn-info waves-effect waves-light" value="Save Info">
                                    </div>
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
                    required : 'Please Enter Employee Name',
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
