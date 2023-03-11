@extends('admin.admin_master')
@section('admin')

    <link rel="stylesheet"
        href="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
@section('title')
    {{ 'Edit Education Information' }}
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
                        href="{{ route('all.education') }}">Education</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Edit Education Information</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Edit Education Information</h3>
                <a href="{{ route('all.education') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form method="post" action="{{ route('education.update') }}" id="myForm">
                                @csrf
                                <input type="hidden" name="id" value="{{ $education->id }}">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Employee ID</label>
                                            <input data-parsley-type="digits" data-parsley-id="15"
                                                aria-describedby="parsley-id-15" readonly type="text"
                                                name="employee_id" class="form-control" required=""
                                                value="{{ $education->employee_id }}"
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
                                                    <option value="{{ $examname->id }}"
                                                        {{ $examname->id == $education->educational_qualification_id ? 'selected' : '' }}>
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
                                                    <option value="{{ $year->id }}"
                                                        {{ $year->id == $education->education_year_id ? 'selected' : '' }}>
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
                                                    <option value="{{ $subject->id }}"
                                                        {{ $subject->id == $education->educational_subjects_id ? 'selected' : '' }}>
                                                        {{ $subject->subject_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Group</label>
                                            <select name="education_groups_id"class="form-select select2"
                                                aria-label="Default select example"
                                                value="{{ old('education_groups_id') }}">
                                                <option selected="" value="">Select Duration</option>
                                                @foreach ($educationgroup as $edugroup)
                                                <option value="{{ $edugroup->id }}"
                                                    {{ $edugroup->id == $education->education_groups_id ? 'selected' : '' }}>
                                                    {{ $edugroup->group_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Name of Institute</label>
                                            <input type="text" name="name_of_institute" class="form-control"
                                                value="{{ $education->name_of_institute }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Thesis Topic</label>
                                            <input type="text" name="thesis_topic" class="form-control"
                                                value="{{ $education->thesis_topic }}">
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
                                                    <option value="{{ $boarduniversity->id }}"
                                                        {{ $boarduniversity->id == $education->board_university_id ? 'selected' : '' }}>
                                                        {{ $boarduniversity->board_university_name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Total Marks</label>
                                            <input type="text" name="total_marks" class="form-control"
                                                value="{{ $education->total_marks }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Grade/Class</label>
                                            <select name="grade_class"class="form-select select2"
                                                aria-label="Default select example" value="{{ old('grade_class') }}">
                                                <option selected="" value="">Select Grade/Class</option>
                                                @foreach ($gradeclass as $gradeclass)
                                                    <option value="{{ $gradeclass->id }}"
                                                        {{ $gradeclass->id == $education->grade_class ? 'selected' : '' }}>
                                                        {{ $gradeclass->grade_class_name }}</option>
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
                                                value="{{ $education->gpa }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Document</label>
                                            <select name="documents"class="form-select select2"
                                                aria-label="Default select example" value="{{ old('documents') }}">
                                                <option selected="" value="">Select Document</option>
                                                <option
                                                    value="yes"{{ $education->documents == 'yes' ? 'selected' : '' }}>
                                                    Yes</option>
                                                <option
                                                    value="no"{{ $education->documents == 'no' ? 'selected' : '' }}>
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
