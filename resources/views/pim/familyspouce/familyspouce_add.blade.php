@extends('admin.admin_master')
@section('admin')

    <link rel="stylesheet"
        href="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
@section('title')
    {{ 'Add Spouce Information' }}
@endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="javascript:void(0)">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('pim.all') }}">PIM</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a
                        href="{{ route('all.familyspouce') }}">Family/Spouce</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Add Spouce Information</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Add Spouce Information</h3>
                <a href="{{ route('all.familyspouce') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form method="post" action="{{ route('familyspouce.store') }}" id="myForm">
                                @csrf
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Employee ID</label>
                                            <input data-parsley-type="digits" data-parsley-id="15"
                                                aria-describedby="parsley-id-15" type="text" name="employee_id"
                                                class="form-control" required="" value="{{ old('employee_id') }}"
                                                @error('employee_id') is-invalid @enderror>
                                            @error('employee_id')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Spouce Name</label>
                                            <input type="text" name="spouce_name" class="form-control" required=""
                                                value="{{ old('spouce_name') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Profession</label>
                                            <select name="profession_id" class="form-select select2"
                                                aria-label="Default select example" value="{{ old('profession_id') }}">
                                                <option selected="" value="">Select Profession</option>
                                                @foreach ($professions as $profession)
                                                    <option value="{{ $profession->id }}">
                                                        {{ $profession->profession_name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Mobile</label>
                                            <input type="text" name="mobile" class="form-control"
                                                value="{{ old('mobile') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Email</label>
                                            <input type="text" name="email" class="form-control"
                                                value="{{ old('email') }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                <div class="alert alert-secondary" role="alert">
                                    <label for="example-text-input" class="form-label">Present Address</label>
                                </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Village</label>
                                            <input type="text" name="spouce_present_village"
                                                id="spouce_present_village" class="form-control"
                                                value="{{ old('spouce_present_village') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Postoffice</label>
                                            <input type="text" name="spouce_present_post" id="spouce_present_post"
                                                class="form-control" value="{{ old('spouce_present_post') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Postal Code</label>
                                            <input type="text" name="spouce_present_postal_code"
                                                id="spouce_present_postal_code" class="form-control"
                                                value="{{ old('spouce_present_postal_code') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Division</label>
                                            <select name="spouce_present_division_id" id="spouce_present_division_id"
                                                class="form-select select2" aria-label="Default select example"
                                                value="{{ old('spouce_present_division_id') }}">
                                                <option selected="" value="">Select Division</option>
                                                @foreach ($divisions as $division)
                                                    <option value="{{ $division->id }}">{{ $division->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">District</label>
                                            <select name="spouce_present_district_id" id="spouce_present_district_id"
                                                class="form-select select2" aria-label="Default select example"
                                                value="{{ old('spouce_present_district_id') }}">
                                                <option selected="" value="">Select District</option>
                                                @foreach ($districts as $district)
                                                    <option value="{{ $district->id }}">{{ $district->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Upazilla</label>
                                            <select name="spouce_present_upazilla_id" id="spouce_present_upazilla_id"
                                                class="form-select select2" aria-label="Default select example"
                                                value="{{ old('spouce_present_upazilla_id') }}">
                                                <option selected="" value="">Select Upazilla</option>
                                                {{-- <option value=""></option> --}}
                                                @foreach ($upazillas as $upazilla)
                                                    <option value="{{ $upazilla->id }}">{{ $upazilla->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                <div class="alert alert-secondary" role="alert">
                                    <label for="example-text-input" class="form-label">Permanent Address</label>
                                </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Village</label>
                                            <input type="text" name="spouce_permanent_village"
                                                id="spouce_permanent_village" class="form-control"
                                                value="{{ old('spouce_permanent_village') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Postoffice</label>
                                            <input type="text" name="spouce_permanent_post" id="spouce_permanent_post"
                                                class="form-control" value="{{ old('spouce_permanent_post') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Postal Code</label>
                                            <input type="text" name="spouce_permanent_postal_code"
                                                id="spouce_permanent_postal_code" class="form-control"
                                                value="{{ old('spouce_permanent_postal_code') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Division</label>
                                            <select name="spouce_permanent_division_id" id="permanent_division"
                                                class="form-select select2" aria-label="Default select example"
                                                value="{{ old('spouce_permanent_division_id') }}">
                                                <option selected="" value="">Select Division</option>
                                                @foreach ($divisions as $division)
                                                    <option value="{{ $division->id }}">{{ $division->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">District</label>
                                            <select name="spouce_permanent_district_id" id="permanent_district"
                                                class="form-select select2" aria-label="Default select example"
                                                value="{{ old('spouce_permanent_district_id') }}">
                                                <option selected="" value="">Select District</option>
                                                @foreach ($districts as $district)
                                                    <option value="{{ $district->id }}">{{ $district->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Upazilla</label>
                                            <select name="spouce_permanent_upazilla_id" id="permanent_upazilla"
                                                class="form-select select2" aria-label="Default select example"
                                                value="{{ old('spouce_permanent_upazilla_id') }}">
                                                <option selected="" value="">Select Upazilla</option>
                                                {{-- <option value=""></option> --}}
                                                @foreach ($upazillas as $upazilla)
                                                    <option value="{{ $upazilla->id }}">{{ $upazilla->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 fl">
                                    <input type="submit" class="btn btn-info waves-effect waves-light"
                                        style="float:right" value="Save Info">
                                </div>
                        </div>
                        </div>
                        </div>
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
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $('#myForm').validate({
            rules: {
                nominee_name: {
                    required: true,
                },
                employee_id: {
                    required: true,
                },
                // designation_id: {
                //     required: true,
                // },
                // domain_id: {
                //     required: true,
                // },
            },
            messages: {
                nominee_name: {
                    required: 'Please Enter Nominee Name',
                },
                employee_id: {
                    required: 'Please Enter Employee ID',
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
                $('#nominee_present_village').val($('#nominee_permanent_village').val());
                $('#present_post').val($('#permanent_post').val());
                $('#present_postal_code').val($('#permanent_postal_code').val());
                var division = $('#nominee_permanent_division option:selected').val();
                $('#present_division option[value=' + division + ']').attr('selected', 'selected');
                var district = $('#nominee_permanent_district option:selected').val();
                $('#present_district option[value=' + district + ']').attr('selected', 'selected');
                var upazilla = $('#nominee_permanent_upazilla option:selected').val();
                $('#present_upazilla option[value=' + upazilla + ']').attr('selected', 'selected');
            } else { //Clear on uncheck
                $('#nominee_present_village').val("");
                $('#nominee_present_post').val("");
                $('#nominee_present_postal_code').val("");
                $('#nominee_present_division option[value=""]').attr('selected', 'selected');
                $('#nominee_present_district option[value=""]').attr('selected', 'selected');
                $('#nominee_present_upazilla option[value=""]').attr('selected', 'selected');
            };
        });

    });
</script>
<script src="{{ asset('backend/assets/libs/parsleyjs/parsley.min.js') }}"></script>
<script src="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}">
</script>
<script src="{{ asset('backend/mix/assets/js/lib/jquery.min.js') }}"></script>
<script>
    Dashmix.helpersOnLoad(['js-flatpickr', 'jq-datepicker', 'jq-maxlength', 'jq-select2', 'jq-rangeslider',
        'jq-masked-inputs', 'jq-pw-strength'
    ]);
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#image').change(function(e) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#showImage').attr('src', e.target.result);
            }
            reader.readAsDataURL(e.target.files['0']);
        });
    });
</script>
@endsection
