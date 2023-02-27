@extends('admin.admin_master')
@section('admin')

<link rel="stylesheet" href="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}">
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

<div class="block block-rounded">
            <div class="block-header block-header-default">
            <h3 class="block-title">Add New Employee Info</h3>
            <a href="{{ route('newemployee.all') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fa fa-undo"> Back </i></a> <br>  <br>
            </div>
            <div class="block-content">
            <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                                <form method="post" action="{{ route('newemployee.store') }}" id="myForm" >
                                        @csrf
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Employee Type</label>
                                                    <select name="employee_type_id" class="form-select" aria-label="Default select example" value="{{old('name')}}">
                                                        <option selected="">Select Employee Type</option>
                                                        @foreach($employeetypes as $employeetype)
                                                        <option value="{{ $employeetype->id }}">{{ $employeetype->name }}</option>
                                                    @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Employee ID</label>
                                                    <input data-parsley-type="digits" data-parsley-id="15" aria-describedby="parsley-id-15" type="text" name="id" class="form-control" required="" value="{{old('id')}}" @error('id') is-invalid @enderror>
                                                    @error('id')
                                                    <span class="text-danger"> {{ $message }} </span>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Employee Name</label>
                                                    <input type="text" name="name" class="form-control" required="" value="{{old('name')}}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Father's Name</label>
                                                    <input type="text" name="father_name" class="form-control" required="" value="{{old('father_name')}}">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Mother's Name</label>
                                                    <input type="text" name="mother_name" class="form-control" required="" value="{{old('mother_name')}}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Designation</label>
                                                    {{-- <input type="text" class="form-control" required=""> --}}
                                                    <select name="designation_id" class="form-select" aria-label="Default select example" value="{{old('designation_id')}}">
                                                        <option selected="">Select Designation</option>
                                                        <option value=""></option>
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
                                                    <select name="domain_id" class="form-select" aria-label="Default select example" value="{{old('domain_id')}}">
                                                        <option selected="">Select Domain</option>
                                                        <option value=""></option>
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
                                                    {{-- <input id="input-date1" name="joiningdate"  class="form-control input-mask" data-inputmask="'alias': 'datetime'" data-inputmask-inputformat="dd/mm/yyyy" inputmode="numeric">  --}}
                                                    {{-- <input type="text" class="js-datepicker form-control js-datepicker-enabled" id="example-datepicker3" name="joiningdate" data-week-start="1" data-autoclose="true" data-today-highlight="true" data-date-format="dd-mm-yyyy" placeholder="dd-mm-yyyy"> --}}
                                                    <input class="form-control" name="joiningdate" type="date" value="{{old('joiningdate')}}">

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Date of Birth</label>
                                                    {{-- <input id="input-date1" name="date_of_birth"  class="form-control input-mask" data-inputmask="'alias': 'datetime'" data-inputmask-inputformat="dd/mm/yyyy" inputmode="numeric"> --}}
                                                    <input class="form-control" name="date_of_birth" type="date" value="{{old('date_of_birth')}}">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Marital Status</label>
                                                    <select name="marital_status_id" class="form-select" aria-label="Default select example" value="{{old('marital_status_id')}}">
                                                        <option selected="">Select Marital Status</option>
                                                        <option value=""></option>
                                                        @foreach($maritalstatus as $mstatus)
                                                            <option value="{{ $mstatus->id }}">{{ $mstatus->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Place of Birth District</label>
                                                    <select name="birth_place_district_id" class="form-select" aria-label="Default select example" value="{{old('birth_place_district_id')}}">
                                                        <option selected="">Select District</option>
                                                        <option value=""></option>
                                                        @foreach($districts as $district)
                                                            <option value="{{ $district->id }}">{{ $district->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Educational Qualification (Last)</label>
                                                    <select name="educational_qualification_id" class="form-select" aria-label="Default select example" value="{{old('birth_place_district_id')}}">
                                                        <option selected="">Select Qualification</option>
                                                        <option value=""></option>
                                                        @foreach($educationqualifications as $educationqualification)
                                                            <option value="{{ $educationqualification->id }}">{{ $educationqualification->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        {{-- <h4 class="card-title">Pemanent Address</h4> --}}
                                        <div class="alert alert-secondary" role="alert">
                                            <label for="example-text-input" class="form-label">Permanent Address</label>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Village</label>
                                                    <input type="text" name="permanent_village" id="permanent_village" class="form-control"  required="" value="{{old('permanent_village')}}">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Postoffice</label>
                                                    <input type="text" name="permanent_post" id="permanent_post" class="form-control"  required="" value="{{old('permanent_post')}}">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Postal Code</label>
                                                    <input type="text" name="permanent_postal_code" id="permanent_postal_code" class="form-control"  required="" value="{{old('permanent_postal_code')}}">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Division</label>
                                                    {{-- <input type="text" class="form-control"  required=""> --}}
                                                    <select name="permanent_division_id" id="permanent_division" class="form-select" aria-label="Default select example" value="{{old('permanent_division_id')}}">
                                                        <option selected="">Select Division</option>
                                                        <option value=""></option>
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
                                                    <select name="permanent_district_id" id="permanent_district" class="form-select" aria-label="Default select example" value="{{old('permanent_district_id')}}">
                                                        <option selected="">Select District</option>
                                                        <option value=""></option>
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
                                                    <select name="permanent_upazilla_id" id="permanent_upazilla" class="form-select" aria-label="Default select example" value="{{old('permanent_upazilla_id')}}">
                                                        <option selected="">Select Upazilla</option>
                                                        <option value=""></option>
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
                                            <label for="" style="float: right"><input class="form-check-input" type="checkbox" id="sameaspermanentaddress"> Same As Above</label>
                                        </div>
                                        {{-- <hr> --}}
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Village</label>
                                                    <input type="text" name="present_village" id="present_village" class="form-control"  required="" value="{{old('present_village')}}">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Postoffice</label>
                                                    <input type="text" name="present_post" id="present_post" class="form-control"  required="" value="{{old('present_post')}}">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Postal Code</label>
                                                    <input type="text" name="present_postal_code" id="present_postal_code" class="form-control"  required="" value="{{old('present_postal_code')}}">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">Division</label>
                                                    {{-- <input type="text" class="form-control"  required=""> --}}
                                                    <select name="present_division_id" id="present_division" class="form-select" aria-label="Default select example" value="{{old('present_division_id')}}">
                                                        <option selected="">Select Division</option>
                                                        <option value=""></option>
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
                                                    <select name="present_district_id" id="present_district" class="form-select" aria-label="Default select example" value="{{old('present_district_id')}}">
                                                        <option selected="">Select District</option>
                                                        <option value=""></option>
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
                                                    <select name="present_upazilla_id" id="present_upazilla" class="form-select" aria-label="Default select example" value="{{old('present_upazilla_id')}}">
                                                        <option selected="">Select Upazilla</option>
                                                        <option value=""></option>
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
                                                    <input type="text" name="mobile" class="form-control" required="" value="{{old('mobile')}}">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Email</label>
                                                    <input type="email" name="email" class="form-control" required="" value="{{old('email')}}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">NID Card</label>
                                                    <input type="text" name="nid" class="form-control" required="" value="{{old('nid')}}">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">Smard Card</label>
                                                    <input type="text" name="smartcard" class="form-control" required="" value="{{old('smartcard')}}">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 position-relative">
                                                    <label for="example-text-input" class="form-label">BloodGroups</label>
                                                    {{-- <input type="text" class="form-control"  required=""> --}}
                                                    <select name="blood_groups_id" class="form-select" aria-label="Default select example" value="{{old('bloodgroups_id')}}">
                                                        <option selected="">Select Blood Group</option>
                                                        <option value=""></option>
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
            <!-- END Label on top Layout -->
            </div><!--block-content-->
        </div><!-- END block -->

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

<script type="text/javascript">
    $(document).ready(function(){
    $('#sameaspermanentaddress').click(function(){
    if ($('#sameaspermanentaddress').is(":checked")) {
    $('#present_village').val($('#permanent_village').val());
    $('#present_post').val($('#permanent_post').val());
    $('#present_postal_code').val($('#permanent_postal_code').val());
    var division = $('#permanent_division option:selected').val();
    $('#present_division option[value=' + division + ']').attr('selected','selected');
    var district = $('#permanent_district option:selected').val();
    $('#present_district option[value=' + district + ']').attr('selected','selected');
    var upazilla = $('#permanent_upazilla option:selected').val();
    $('#present_upazilla option[value=' + upazilla + ']').attr('selected','selected');
    } else { //Clear on uncheck
    $('#present_village').val("");
    $('#present_post').val("");
    $('#present_postal_code').val("");
    $('#present_division option[value=""]').attr('selected','selected');
    $('#present_district option[value=""]').attr('selected','selected');
    $('#present_upazilla option[value=""]').attr('selected','selected');
    };
    });

    });
</script>
<script src="{{ asset('backend/assets/libs/parsleyjs/parsley.min.js')}}"></script>
<script src="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js')}}"></script>
<script src="{{ asset('backend/mix/assets/js/lib/jquery.min.js')}}"></script>
<script>Dashmix.helpersOnLoad(['js-flatpickr', 'jq-datepicker', 'jq-maxlength', 'jq-select2', 'jq-rangeslider', 'jq-masked-inputs', 'jq-pw-strength']);</script>

@endsection
