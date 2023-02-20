@extends('admin.admin_master')
@section('admin')
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 @section('title'){{'Edit Educational Qualification'}} @endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
              <li class="breadcrumb-item">
                <a href="javascript:void(0)">Home</a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">Edit Employee Information</li>
            </ol>
          </nav>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <a href="{{ route('newemployee.all') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Back </i></a> <br>  <br>
                            <h4 class="card-title">Educational Qualification Information Edit</h4><br><br>
                            <form method="post" action="{{ route('newemployee.update') }}" id="myForm" >
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Employee ID</label>
                                            <input type="text" name="id" value="{{ $newemployee->id }}" class="form-control" readonly required="" data-parsley-maxlength="8" placeholder="10100000">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Employee Name</label>
                                            <input type="text" name="name" value="{{ $newemployee->name }}" class="form-control" required="">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Father's Name</label>
                                            <input type="text" name="father_name" value="{{ $newemployee->father_name }}" class="form-control" required="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Mother's Name</label>
                                            <input type="text" name="mother_name" value="{{ $newemployee->mother_name }}" class="form-control" required="">
                                        </div>
                                    </div>
                                </div>
                                {{-- <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Designation</label>
                                            <select name="designation_id" class="form-select" aria-label="Default select example">
                                                <option selected="">Select Designation</option>
                                                @foreach($designations as $designation)
                                                <option value="{{ $designation->id }}">{{ $designation->name }}.{{ $designation->grade }}</option>
                                               @endforeach
                                            </select>
                                        </div>
                                    </div> --}}
                                    {{-- <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Domain</label>
                                            <select name="domain_id" class="form-select" aria-label="Default select example">
                                                <option selected="">Select Domain</option>
                                                @foreach($domains as $domain)
                                                <option value="{{ $domain->id }}">{{ $domain->name }}</option>
                                               @endforeach
                                            </select>
                                        </div>
                                    </div> --}}
                                {{-- </div> --}}
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-date-input" class="form-label">Joining Date</label>
                                            <input class="form-control" name="joiningdate" value="{{ $newemployee->joiningdate }}" type="date">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Date of Birth</label>
                                            <input class="form-control" name="date_of_birth" value="{{ $newemployee->date_of_birth }}" type="date">
                                        </div>
                                    </div>
                                </div>
                            
                                {{-- <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Marital Status</label>
                                            <select name="marital_status_id" class="form-select" aria-label="Default select example">
                                                <option selected="">Select Marital Status</option>
                                                @foreach($maritalstatus as $mstatus)
                                                <option value="{{ $mstatus->id }}">{{ $mstatus->name }}</option>
                                               @endforeach
                                            </select>
                                        </div>
                                    </div> --}}
                                    {{-- <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Place of Birth District</label>
                                            <select name="birth_place_district_id" class="form-select" aria-label="Default select example">
                                                <option selected="">Select District</option>
                                                @foreach($districts as $district)
                                                <option value="{{ $district->id }}">{{ $district->name }}</option>
                                               @endforeach
                                            </select>
                                        </div>
                                    </div> --}}
                                </div>
                                <div class="alert alert-secondary" role="alert">
                                    Permanent Address
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Village</label>
                                            <input type="text" name="permanent_village" value="{{ $newemployee->permanent_village }}" class="form-control"  required="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Postoffice</label>
                                            <input type="text" name="permanent_post" value="{{ $newemployee->permanent_post }}" class="form-control"  required="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Postal Code</label>
                                            <input type="text" name="permanent_postal_code" value="{{ $newemployee->permanent_postal_code }}" class="form-control"  required="">
                                        </div>
                                    </div>
                                    {{-- <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Division</label>
                                            <select name="division_id" class="form-select" aria-label="Default select example">
                                            <option selected="">Open this select menu</option>
                                                @foreach($division as $division)
                                            <option value="{{ $division->id }}" {{ $division->id == $district->division_id ? 'selected' : '' }}   >{{ $division->name }}</option>
                                                @endforeach
                                        </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">District</label>
                                            <select name="permanent_district_id" class="form-select" aria-label="Default select example">
                                                <option selected="">Select District</option>
                                                @foreach($districts as $district)
                                                <option value="{{ $district->id }}">{{ $district->name }}</option>
                                               @endforeach
                                            </select>
                                        </div>
                                    </div> --}}
                                    {{-- <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Upazilla</label>
                                            <select name="permanent_upazilla_id" class="form-select" aria-label="Default select example">
                                                <option selected="">Select Upazilla</option>
                                                @foreach($upazillas as $upazilla)
                                                <option value="{{ $upazilla->id }}">{{ $upazilla->name }}</option>
                                               @endforeach
                                            </select>
                                        </div>
                                    </div> --}}
                                <div class="alert alert-secondary" role="alert">
                                    Present Address
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Village</label>
                                            <input type="text" name="present_village" value="{{ $newemployee->present_village }}" class="form-control"  required="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Postoffice</label>
                                            <input type="text" name="present_post" value="{{ $newemployee->present_post }}" class="form-control"  required="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Postal Code</label>
                                            <input type="text" name="present_postal_code" value="{{ $newemployee->present_postal_code }}" class="form-control"  required="">
                                        </div>
                                    </div>
                                    {{-- <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Division</label>
                                            <select name="present_division_id" class="form-select" aria-label="Default select example">
                                                <option selected="">Select Division</option>
                                                @foreach($divisions as $division)
                                                <option value="{{ $division->id }}">{{ $division->name }}</option>
                                               @endforeach
                                            </select>
                                        </div>
                                    </div> --}}
                                    {{-- <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">District</label>
                                            <select name="present_district_id" class="form-select" aria-label="Default select example">
                                                <option selected="">Select District</option>
                                                @foreach($districts as $district)
                                                <option value="{{ $district->id }}">{{ $district->name }}</option>
                                               @endforeach
                                            </select>
                                        </div>
                                    </div> --}}
                                    {{-- <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Upazilla</label>
                                            <select name="present_upazilla_id" class="form-select" aria-label="Default select example">
                                                <option selected="">Select Upazilla</option>
                                                @foreach($upazillas as $upazilla)
                                                <option value="{{ $upazilla->id }}">{{ $upazilla->name }}</option>
                                               @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div> --}}
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Mobile</label>
                                            <input type="text" name="mobile" value="{{ $newemployee->mobile }}" class="form-control" required="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Email</label>
                                            <input type="email" name="email" value="{{ $newemployee->email }}" class="form-control" required="">
                                        </div>
                                    </div>
                                </div>
                                {{-- <div class="row">
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">NID Card</label>
                                            <input type="text" name="nid" class="form-control" required="">
                                        </div>
                                    </div> --}}
                                    {{-- <div class="col-md-4">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Smard Card</label>
                                            <input type="text" name="smartcard" class="form-control" required="">
                                        </div>
                                    </div> --}}
                                    {{-- <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">BloodGroups</label>
                                            <select name="bloodgroups_id" class="form-select" aria-label="Default select example">
                                                <option selected="">Select Blood Group</option>
                                                @foreach($blood_groups as $blood_group)
                                                <option value="{{ $blood_group->id }}">{{ $blood_group->name }}</option>
                                               @endforeach
                                            </select>
                                        </div>
                                    </div> --}}
                                </div>
                                <input type="submit" class="btn btn-info waves-effect waves-light" value="Update Educational Qualification">
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
                    required : 'Please Enter Educational Qualification Name',
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
