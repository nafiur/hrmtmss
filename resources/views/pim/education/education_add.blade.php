@extends('admin.admin_master')
@section('admin')

    <link rel="stylesheet"
        href="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
@section('title')
    {{ 'Add Education' }}
@endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="javascript:void(0)">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('pim.all') }}">PIM</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('all.education') }}">Education</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Add Education Information</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Add New Education</h3>
                <a href="{{ route('all.education') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form method="post" action="{{ route('education.store') }}" id="myForm">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
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
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Name of
                                                Exam</label>
                                            <select name="educational_qualification_id"class="form-select select2"
                                                aria-label="Default select example"
                                                value="{{ old('educational_qualification_id') }}">
                                                <option selected="" value="">Select Exam</option>
                                                @foreach ($examname as $examname)
                                                    <option value="{{ $examname->id }}">
                                                        {{ $examname->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Year</label>
                                            <select name="education_year_id"class="form-select select2"
                                                aria-label="Default select example"
                                                value="{{ old('education_year_id') }}">
                                                <option selected="" value="">Select year</option>
                                                @foreach ($year as $year)
                                                    <option value="{{ $year->id }}">
                                                        {{ $year->year_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Subject</label>
                                            <select name="educational_subjects_id"class="form-select select2"
                                                aria-label="Default select example"
                                                value="{{ old('educational_subjects_id') }}">
                                                <option selected="" value="">Select Subject</option>
                                                @foreach ($subject as $subject)
                                                    <option value="{{ $subject->id }}">
                                                        {{ $subject->subject_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Group</label>
                                            <select name="education_group"class="form-select select2"
                                                aria-label="Default select example"
                                                value="{{ old('education_group') }}">
                                                <option selected="" value="">Select Duration</option>
                                                @foreach ($duration as $duration)
                                                    <option value="{{ $duration->id }}">
                                                        {{ $duration->duration_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Name of Institute</label>
                                            <input type="text" name="name_of_institute" class="form-control"
                                                value="{{ old('name_of_institute') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Thesis Topic</label>
                                            <input type="text" name="thesis_topic" class="form-control"
                                                value="{{ old('thesis_topic') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input"
                                                class="form-label">Board/University</label>
                                            <select name="board_university_id"class="form-select select2"
                                                aria-label="Default select example"
                                                value="{{ old('board_university_id') }}">
                                                <option selected="" value="">Select Board/University</option>
                                                @foreach ($boarduniversity as $boarduniversity)
                                                    <option value="{{ $boarduniversity->id }}">
                                                        {{ $boarduniversity->board_university_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Total Marks</label>
                                            <input type="text" name="total_marks" class="form-control"
                                                value="{{ old('total_marks') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Grade/Class</label>
                                            <select name="grade_class"class="form-select select2"
                                                aria-label="Default select example" value="{{ old('grade_class') }}">
                                                <option selected="" value="">Select Grade/Class</option>
                                                @foreach ($gradeclass as $gradeclass)
                                                    <option value="{{ $gradeclass->id }}">
                                                        {{ $gradeclass->grade_class_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">GPA</label>
                                            <input type="text" name="gpa" class="form-control"
                                                value="{{ old('gpa') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Document</label>
                                            <select name="documents"class="form-select select2"
                                                aria-label="Default select example" value="{{ old('documents') }}">
                                                <option selected="" value="">Select Document</option>
                                                <option value="yes">Yes</option>
                                                <option value="no">No</option>
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
                education_name: {
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
                education_name: {
                    required: 'Please Enter Education Name',
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
                $('#education_present_village').val($('#education_permanent_village').val());
                $('#present_post').val($('#permanent_post').val());
                $('#present_postal_code').val($('#permanent_postal_code').val());
                var division = $('#education_permanent_division option:selected').val();
                $('#present_division option[value=' + division + ']').attr('selected', 'selected');
                var district = $('#education_permanent_district option:selected').val();
                $('#present_district option[value=' + district + ']').attr('selected', 'selected');
                var upazilla = $('#education_permanent_upazilla option:selected').val();
                $('#present_upazilla option[value=' + upazilla + ']').attr('selected', 'selected');
            } else { //Clear on uncheck
                $('#education_present_village').val("");
                $('#education_present_post').val("");
                $('#education_present_postal_code').val("");
                $('#education_present_division option[value=""]').attr('selected', 'selected');
                $('#education_present_district option[value=""]').attr('selected', 'selected');
                $('#education_present_upazilla option[value=""]').attr('selected', 'selected');
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
