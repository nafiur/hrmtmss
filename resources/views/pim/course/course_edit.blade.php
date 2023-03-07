@extends('admin.admin_master')
@section('admin')

    <link rel="stylesheet"
        href="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
@section('title')
    {{ 'Edit Course Information' }}
@endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="javascript:void(0)">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('pim.all') }}">PIM</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('all.course') }}">Course</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit Course Information</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Edit Course Information</h3>
                <a href="{{ route('all.course') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form method="post" action="{{ route('course.update') }}" id="myForm">
                                @csrf
                                <input type="hidden" name="id" value="{{ $course->id }}">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Employee ID</label>
                                            <input data-parsley-type="digits" data-parsley-id="15"
                                                aria-describedby="parsley-id-15" type="text" name="employee_id"
                                                class="form-control" required="" readonly
                                                value="{{ $course->employee_id }}"
                                                @error('employee_id') is-invalid @enderror>
                                            @error('employee_id')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Name of
                                                Course/Diploma</label>
                                            <input type="text" name="course_name" class="form-control" required=""
                                                value="{{ $course->course_name }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Name of Institute</label>
                                            <input type="text" name="name_of_institute" class="form-control"
                                                value="{{ $course->name_of_institute }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Subject</label>
                                            <input type="text" name="course_subject" class="form-control"
                                                value="{{ $course->course_subject }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Duration</label>
                                            <select name="course_duration"class="form-select select2"
                                                aria-label="Default select example"
                                                value="{{ old('course_duration') }}">
                                                <option selected="" value="">Select Duration</option>
                                                @foreach ($duration as $duration)
                                                    <option value="{{ $duration->id }}"
                                                        {{ $duration->id == $course->course_duration ? 'selected' : '' }}>
                                                        {{ $duration->duration_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Passing Year</label>
                                            <select name="course_passing_year"class="form-select select2"
                                                aria-label="Default select example"
                                                value="{{ old('course_passing_year') }}">
                                                <option selected="" value="">Select Year</option>
                                                @foreach ($year as $year)
                                                    <option value="{{ $year->id }}"
                                                        {{ $year->id == $course->course_passing_year ? 'selected' : '' }}>
                                                        {{ $year->year_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Grade/Class</label>
                                            <input type="text" name="course_grade_class" class="form-control"
                                                value="{{ $course->course_grade_class }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 fl">
                                    <input type="submit" class="btn btn-info waves-effect waves-light"
                                        style="float:right" value="Save Info">
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
                $('#course_present_village').val($('#course_permanent_village').val());
                $('#course_present_post').val($('#course_permanent_post').val());
                $('#course_present_postal_code').val($('#course_permanent_postal_code').val());
                var division = $('#permanent_division option:selected').val();
                $('#course_present_division option[value=' + division + ']').attr('selected',
                    'selected');
                var district = $('#course_permanent_district option:selected').val();
                $('#course_present_district option[value=' + district + ']').attr('selected',
                    'selected');
                var upazilla = $('#course_permanent_upazilla option:selected').val();
                $('#course_present_upazilla option[value=' + upazilla + ']').attr('selected',
                    'selected');
            } else { //Clear on uncheck
                $('#course_present_village').val("");
                $('#course_present_post').val("");
                $('#course_present_postal_code').val("");
                $('#course_present_division option[value=""]').attr('selected', 'selected');
                $('#course_present_district option[value=""]').attr('selected', 'selected');
                $('#course_present_upazilla option[value=""]').attr('selected', 'selected');
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
