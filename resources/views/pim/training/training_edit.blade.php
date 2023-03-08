@extends('admin.admin_master')
@section('admin')

    <link rel="stylesheet"
        href="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
@section('title')
    {{ 'Edit Training Information' }}
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
                        href="{{ route('all.training') }}">Training</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Edit Training Information</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Edit Training Information</h3>
                <a href="{{ route('all.training') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form method="post" action="{{ route('training.update') }}" id="myForm">
                                @csrf
                                <input type="hidden" name="id" value="{{ $training->id }}">

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Employee ID</label>
                                            <input data-parsley-type="digits" readonly data-parsley-id="15"
                                                aria-describedby="parsley-id-15" type="text" name="employee_id"
                                                class="form-control" required="" value="{{ $training->employee_id }}"
                                                @error('employee_id') is-invalid @enderror>
                                            @error('employee_id')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Training Name</label>
                                            <input type="text" name="training_name" class="form-control"
                                                required="" value="{{ $training->employee_id }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">From
                                            </label>
                                            <input type="date" name="date_from" class="form-control fromEx"
                                                required="" id="firstDate" value="{{ $training->date_from }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">To
                                            </label>
                                            <input type="date" id="secondDate" name="date_to"
                                                class="form-control toEx" required=""
                                                value="{{ $training->date_to }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Domestic/Overseas</label>
                                            <select name="domestic_overseas"class="form-select select2"
                                                aria-label="Default select example" value="{{ old('domestic_overseas') }}">
                                                <option selected="" value="">Select Document</option>
                                                <option
                                                    value="domestic"{{ $training->domestic_overseas == 'domestic' ? 'selected' : '' }}>
                                                    Domestic</option>
                                                <option
                                                    value="overseas"{{ $training->domestic_overseas == 'overseas' ? 'selected' : '' }}>
                                                    Overseas</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Place</label>
                                            <input type="text" name="place" class="form-control"
                                                value="{{ $training->place }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3 position-relative">
                                            <label for="example-text-input" class="form-label">Country</label>
                                            <select name="country_id" id="country_id" class="form-select select2"
                                                aria-label="Default select example" value="{{ old('country_id') }}">
                                                <option selected="" value="">Select Country</option>
                                                @foreach ($country as $country)
                                                    <option value="{{ $country->id }}"
                                                        {{ $country->id == $training->country_id ? 'selected' : '' }}>
                                                        {{ $country->country_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Sponsor Organi</label>
                                            <input type="text" name="sponsor" class="form-control" required=""
                                                value="{{ $training->sponsor }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Venue</label>
                                            <input type="text" name="venue" class="form-control" required=""
                                                value="{{ $training->venue }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Document</label>
                                            <select name="documents"class="form-select select2"
                                                aria-label="Default select example" value="{{ old('documents') }}">
                                                <option selected="" value="">Select Document</option>
                                                <option
                                                    value="yes"{{ $training->documents == 'yes' ? 'selected' : '' }}>
                                                    Yes</option>
                                                <option
                                                    value="no"{{ $training->documents == 'no' ? 'selected' : '' }}>
                                                    No</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                        </div>
                        <div class="col-md-12 fl">
                            <input type="submit" class="btn btn-info waves-effect waves-light" style="float:right"
                                value="Save Info">
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
                $('#nominee_present_division option[value=' + division + ']').attr('selected',
                    'selected');
                var district = $('#nominee_permanent_district option:selected').val();
                $('#nominee_present_district option[value=' + district + ']').attr('selected',
                    'selected');
                var upazilla = $('#nominee_permanent_upazilla option:selected').val();
                $('#nominee_present_upazilla option[value=' + upazilla + ']').attr('selected',
                    'selected');
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
