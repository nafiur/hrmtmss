@extends('admin.admin_master')
@section('admin')

    <link rel="stylesheet"
        href="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
@section('title')
    {{ 'Edit Nominee Information' }}
@endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="javascript:void(0)">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Edit Nominee Information</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Edit Nominee Information</h3>
                <a href="{{ route('all.nominee') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form method="post" action="{{ route('nominee.update') }}" id="myForm">
                                @csrf
                                <input type="hidden" name="id" value="{{ $nominee->id }}">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Employee ID</label>
                                            <input type="text" name="employee_id" required=""
                                                value="{{ $nominee->employee_id }}" class="form-control" readonly
                                                data-parsley-maxlength="8" placeholder="10100000">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Nominee Name</label>
                                            <input type="text" name="nominee_name" class="form-control"
                                                required="" value="{{ $nominee->nominee_name }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Relation</label>
                                            <select name="nominee_relation_types_id" class="form-select select2"
                                                aria-label="Default select example"
                                                value="{{ old('nominee_relation_types_id') }}">
                                                <option selected="" value="">Select Relation</option>
                                                @foreach ($relation_types as $relation)
                                                    <option value="{{ $relation->id }}"
                                                        {{ $relation->id == $nominee->nominee_relation_types_id ? 'selected' : '' }}>
                                                        {{ $relation->relation_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Percentage</label>
                                            <input type="text" name="nominee_percentage" class="form-control"
                                                value="{{ $nominee->nominee_percentage }}">
                                        </div>
                                    </div>
                                    <div class="alert alert-secondary" role="alert">
                                        <label for="example-text-input" class="form-label">Permanent Address</label>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">Village</label>
                                                <input type="text" name="nominee_permanent_village"
                                                    id="nominee_permanent_village" class="form-control"
                                                    value="{{ $nominee->nominee_permanent_village }}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">Postoffice</label>
                                                <input type="text" name="nominee_permanent_post"
                                                    id="nominee_permanent_post" class="form-control"
                                                    value="{{ $nominee->nominee_permanent_post }}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">Postal Code</label>
                                                <input type="text" name="nominee_permanent_postal_code"
                                                    id="nominee_permanent_postal_code" class="form-control"
                                                    value="{{ $nominee->nominee_permanent_postal_code }}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">Division</label>
                                                <select name="nominee_permanent_division_id" id="nominee_permanent_division"
                                                    class="form-select select2" aria-label="Default select example"
                                                    value="{{ old('nominee_permanent_division_id') }}">
                                                    <option selected="" value="">Select Division</option>
                                                    @foreach ($divisions as $division)
                                                        <option value="{{ $division->id }}"
                                                            {{ $division->id == $nominee->nominee_permanent_division_id ? 'selected' : '' }}>
                                                            {{ $division->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">District</label>
                                                <select name="nominee_permanent_district_id" id="nominee_permanent_district"
                                                    class="form-select select2" aria-label="Default select example"
                                                    value="{{ old('nominee_permanent_district_id') }}">
                                                    <option selected="" value="">Select District</option>
                                                    @foreach ($districts as $district)
                                                        <option value="{{ $district->id }}"
                                                            {{ $district->id == $nominee->nominee_permanent_district_id ? 'selected' : '' }}>
                                                            {{ $district->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3 position-relative">
                                                <label for="example-text-input" class="form-label">Upazilla</label>
                                                <select name="nominee_permanent_upazilla_id" id="nominee_permanent_upazilla"
                                                    class="form-select select2" aria-label="Default select example"
                                                    value="{{ old('nominee_permanent_upazilla_id') }}">
                                                    <option selected="" value="">Select Upazilla</option>
                                                    {{-- <option value=""></option> --}}
                                                    @foreach ($upazillas as $upazilla)
                                                        <option value="{{ $upazilla->id }}"
                                                            {{ $upazilla->id == $nominee->nominee_permanent_upazilla_id ? 'selected' : '' }}>
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
                                                    <input type="text" name="nominee_mobile" class="form-control"
                                                        value="{{ $nominee->nominee_mobile }}">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="example-text-input" class="form-label">NID
                                                        Card</label>
                                                    <input type="text" name="nominee_nid" class="form-control"
                                                        value="{{ $nominee->nominee_nid }}">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 fl">
                                        <input type="submit" class="btn btn-info waves-effect waves-light"
                                            value="Save Info">
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
                name: {
                    required: true,
                },
                id: {
                    required: true,
                },
            messages: {
                name: {
                    required: 'Please Enter Employee Name',
                },
                id: {
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
                $('#nominee_present_post').val($('#nominee_permanent_post').val());
                $('#nominee_present_postal_code').val($('#nominee_permanent_postal_code').val());
                var division = $('#permanent_division option:selected').val();
                $('#nominee_present_division option[value=' + division + ']').attr('selected', 'selected');
                var district = $('#nominee_permanent_district option:selected').val();
                $('#nominee_present_district option[value=' + district + ']').attr('selected', 'selected');
                var upazilla = $('#nominee_permanent_upazilla option:selected').val();
                $('#nominee_present_upazilla option[value=' + upazilla + ']').attr('selected', 'selected');
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
