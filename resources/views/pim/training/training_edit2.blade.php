@extends('admin.admin_master')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
@section('title')
    {{ 'Edit Guardian Info' }}
@endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="javascript:void(0)">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Edit Guardian Information</li>
            </ol>
        </nav>
        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Add New Form</h3>
                <a href="{{ route('all.guardian') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <!-- Label on top Layout -->
                {{-- <h2 class="content-heading">Labels on top</h2> --}}
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form method="post" action="{{ route('guardian.update') }}" id="myForm">
                                @csrf
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Employee Type</label>
                                            <select name="employee_type_id" class="form-select"
                                                aria-label="Default select example">
                                                <option selected="" value="">Select Employee Type</option>
                                                @foreach ($employeetypes as $employeetype)
                                                    <option value="{{ $employeetype->id }}"
                                                        {{ $employeetype->id == $basicinfo->employee_type_id ? 'selected' : '' }}>
                                                        {{ $employeetype->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Employee ID</label>
                                            <input type="text" name="id" required="" value="{{ $basicinfo->id }}"
                                                class="form-control" readonly  data-parsley-maxlength="8"
                                                placeholder="10100000">
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Employee Name</label>
                                            <input type="text" name="name" value="{{ $basicinfo->name }}"
                                                class="form-control" required="">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Father's Name</label>
                                            <input type="text" name="father_name"
                                                value="{{ $basicinfo->father_name }}" class="form-control"
                                                >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Mother's Name</label>
                                            <input type="text" name="mother_name"
                                                value="{{ $basicinfo->mother_name }}" class="form-control"
                                                >
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Gender</label>
                                            <select name="gender_id" class="form-select select2"
                                                aria-label="Default select example">
                                                <option selected="" value="">Select Gender</option>
                                                {{-- <option value=""></option> --}}
                                                @foreach ($gender as $gender)
                                                    <option value="{{ $gender->id }}"
                                                        {{ $gender->id == $basicinfo->gender_id ? 'selected' : '' }}>
                                                        {{ $gender->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Designation</label>
                                            <select name="designation_id" class="form-select select2"
                                                aria-label="Default select example">
                                                <option selected="" value="">Select Designation</option>
                                                {{-- <option value=""></option> --}}
                                                @foreach ($designations as $designation)
                                                    <option value="{{ $designation->id }}"
                                                        {{ $designation->id == $basicinfo->designation_id ? 'selected' : '' }}>
                                                        {{ $designation->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Domain</label>
                                            <select name="domain_id" class="form-select select2"
                                                aria-label="Default select example">
                                                <option selected="" value="">Select Domain</option>
                                                {{-- <option value=""></option> --}}
                                                @foreach ($domains as $domain)
                                                    <option value="{{ $domain->id }}"
                                                        {{ $domain->id == $basicinfo->domain_id ? 'selected' : '' }}>
                                                        {{ $domain->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-date-input" class="form-label">Joining Date</label>
                                            <input class="form-control" name="joiningdate"
                                                value="{{ $basicinfo->joiningdate }}" type="date">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Date of Birth</label>
                                            <input class="form-control" name="date_of_birth"
                                                value="{{ $basicinfo->date_of_birth }}" type="date">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Marital Status</label>
                                            <select name="marital_status_id" class="form-select"
                                                aria-label="Default select example">
                                                <option selected="" value="">Select Marital Status</option>
                                                @foreach ($maritalstatus as $mstatus)
                                                    <option value="{{ $mstatus->id }}"
                                                        {{ $mstatus->id == $basicinfo->marital_status_id ? 'selected' : '' }}>
                                                        {{ $mstatus->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Place of Birth
                                                District</label>
                                            <select name="birth_place_district_id" class="form-select select2"
                                                aria-label="Default select example">
                                                <option selected="" value="">Select District</option>
                                                @foreach ($districts as $district)
                                                    <option value="{{ $district->id }}"
                                                        {{ $district->id == $basicinfo->birth_place_district_id ? 'selected' : '' }}>
                                                        {{ $district->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Educational
                                                Qualification (Last)</label>
                                            <select name="educational_qualification_id" class="form-select select2"
                                                aria-label="Default select example">
                                                <option selected="" value="">Select Qualification</option>
                                                @foreach ($educationqualifications as $educationqualification)
                                                    <option value="{{ $educationqualification->id }}"
                                                        {{ $educationqualification->id == $basicinfo->educational_qualification_id ? 'selected' : '' }}>
                                                        {{ $educationqualification->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="alert alert-secondary" role="alert">
                                    Permanent Address
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Village</label>
                                            <input type="text" name="permanent_village"
                                                value="{{ $basicinfo->permanent_village }}" class="form-control"
                                                >
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Postoffice</label>
                                            <input type="text" name="permanent_post"
                                                value="{{ $basicinfo->permanent_post }}" class="form-control"
                                                >
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Postal Code</label>
                                            <input type="text" name="permanent_postal_code"
                                                value="{{ $basicinfo->permanent_postal_code }}"
                                                class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Division</label>
                                            <select name="permanent_division_id" class="form-select select2"
                                                aria-label="Default select example">
                                                <option selected="" value="">Select Division</option>
                                                @foreach ($divisions as $division)
                                                    <option value="{{ $division->id }}"
                                                        {{ $division->id == $basicinfo->permanent_division_id ? 'selected' : '' }}>
                                                        {{ $division->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">District</label>
                                            <select name="permanent_district_id" class="form-select select2"
                                                aria-label="Default select example">
                                                <option selected="" value="">Select District</option>
                                                @foreach ($districts as $district)
                                                    <option value="{{ $district->id }}"
                                                        {{ $district->id == $basicinfo->permanent_district_id ? 'selected' : '' }}>
                                                        {{ $district->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Upazilla</label>
                                            <select name="permanent_upazilla_id" class="form-select select2"
                                                aria-label="Default select example">
                                                <option selected="" value="">Select Upazilla</option>
                                                @foreach ($upazillas as $upazilla)
                                                    <option value="{{ $upazilla->id }}"
                                                        {{ $upazilla->id == $basicinfo->permanent_upazilla_id ? 'selected' : '' }}>
                                                        {{ $upazilla->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="alert alert-secondary" role="alert">
                                        Present Address
                                        <label for="" style="float: right"><input class="form-check-input"
                                                type="checkbox" id="sameaspermanentaddress"> Same As Above</label>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">Village</label>
                                                <input type="text" name="present_village"
                                                    value="{{ $basicinfo->present_village }}" class="form-control"
                                                    >
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">Postoffice</label>
                                                <input type="text" name="present_post"
                                                    value="{{ $basicinfo->present_post }}" class="form-control"
                                                    >
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">Postal Code</label>
                                                <input type="text" name="present_postal_code"
                                                    value="{{ $basicinfo->present_postal_code }}"
                                                    class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">Division</label>
                                                <select name="present_division_id" class="form-select select2"
                                                    aria-label="Default select example">
                                                    <option selected="" value="">Select Division</option>
                                                    @foreach ($divisions as $division)
                                                        <option value="{{ $division->id }}"
                                                            {{ $division->id == $basicinfo->present_division_id ? 'selected' : '' }}>
                                                            {{ $division->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">District</label>
                                                <select name="present_district_id" class="form-select select2"
                                                    aria-label="Default select example">
                                                    <option selected="" value="">Select District</option>
                                                    @foreach ($districts as $district)
                                                        <<option value="{{ $district->id }}"
                                                            {{ $district->id == $basicinfo->present_district_id ? 'selected' : '' }}>
                                                            {{ $district->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">Upazilla</label>
                                                <select name="present_upazilla_id" class="form-select select2"
                                                    aria-label="Default select example">
                                                    <option selected="" value="">Select Upazilla</option>
                                                    @foreach ($upazillas as $upazilla)
                                                        <option value="{{ $upazilla->id }}"
                                                            {{ $upazilla->id == $basicinfo->present_upazilla_id ? 'selected' : '' }}>
                                                            {{ $upazilla->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="example-text-input" class="form-label">Mobile</label>
                                                <input type="text" name="mobile"
                                                    value="{{ $basicinfo->mobile }}" class="form-control"
                                                    >
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="example-text-input" class="form-label">Email</label>
                                                <input type="text" name="email"
                                                    value="{{ $basicinfo->email }}" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label for="example-text-input" class="form-label">NID Card</label>
                                                <input type="text" name="nid" value="{{ $basicinfo->nid }}"
                                                    class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label for="example-text-input" class="form-label">Smard Card</label>
                                                <input type="text" name="smartcard"
                                                    value="{{ $basicinfo->smartcard }}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">BloodGroups</label>
                                                <select name="blood_groups_id" class="form-select select2"
                                                    aria-label="Default select example">
                                                    <option selected="" value="">Select Blood Group</option>
                                                    @foreach ($blood_groups as $blood_group)
                                                        <option value="{{ $blood_group->id }}"
                                                            {{ $blood_group->id == $basicinfo->blood_groups_id ? 'selected' : '' }}>
                                                            {{ $blood_group->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 fl">
                                        <input type="submit" style="float:right"
                                            class="btn btn-info waves-effect waves-light" value="Save Info">
                                    </div>
                            </form>
                        </div>
                    </div>
                </div> <!-- end col -->
                <!-- END Label on top Layout -->
            </div>
            <!--block-content-->
        </div><!-- END block -->
    </div>
</div>
</div> <!-- end col -->
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('#myForm').validate({
            rules: {
                name: {
                    required: true,
                },

            },
            messages: {
                name: {
                    required: 'Please Enter Educational Qualification Name',
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

<script type="text/javascript">
    $(document).ready(function() {
        $('#sameaspermanentaddress').click(function() {
            if ($('#sameaspermanentaddress').is(":checked")) {
                $('#present_village').val($('#permanent_village').val());
                $('#present_post').val($('#permanent_post').val());
                $('#present_postal_code').val($('#permanent_postal_code').val());
                var division = $('#permanent_division option:selected').val();
                $('#present_division option[value=' + division + ']').attr('selected', 'selected');
                var district = $('#permanent_district option:selected').val();
                $('#present_district option[value=' + district + ']').attr('selected', 'selected');
                var upazilla = $('#permanent_upazilla option:selected').val();
                $('#present_upazilla option[value=' + upazilla + ']').attr('selected', 'selected');
            } else { //Clear on uncheck
                $('#present_village').val("");
                $('#present_post').val("");
                $('#present_postal_code').val("");
                $('#present_division option[value=""]').attr('selected', 'selected');
                $('#present_district option[value=""]').attr('selected', 'selected');
                $('#present_upazilla option[value=""]').attr('selected', 'selected');
            };
        });

    });
</script>



@endsection
