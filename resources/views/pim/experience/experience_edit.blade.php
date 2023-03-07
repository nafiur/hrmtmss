@extends('admin.admin_master')
@section('admin')

    <link rel="stylesheet"
        href="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
@section('title')
    {{ 'Edit Experience Information' }}
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
                        href="{{ route('all.experience') }}">Experience</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Edit Experience Information</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Edit Experience Information</h3>
                <a href="{{ route('all.experience') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form method="post" action="{{ route('experience.update') }}" id="myForm">
                                @csrf
                                <input type="hidden" name="id" value="{{ $experience->id }}">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Employee ID</label>
                                            <input data-parsley-type="digits" data-parsley-id="15"
                                                aria-describedby="parsley-id-15" readonly type="text"
                                                name="employee_id" class="form-control" required=""
                                                value="{{ $experience->employee_id }}"
                                                @error('employee_id') is-invalid @enderror>
                                            @error('employee_id')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Organization Name
                                            </label>
                                            <input type="text" name="organization_name" class="form-control"
                                                required="" value="{{ $experience->organization_name }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Job Nature
                                            </label>
                                            <input type="text" name="job_nature" class="form-control" required=""
                                                value="{{ $experience->job_nature }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Post
                                            </label>
                                            <input type="text" name="post_name" class="form-control" required=""
                                                value="{{ $experience->post_name }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">From
                                            </label>
                                            <input type="date" name="experience_from" class="form-control fromEx"
                                                required="" value="{{ $experience->experience_from }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">To
                                            </label>
                                            <input type="date" name="experience_to" class="form-control toEx"
                                                required="" value="{{ $experience->experience_to }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Total Experience (Days)</label>
                                            <input type="text" readonly name="total_experience" class="form-control duration"
                                                required="" value="{{ $experience->total_experience }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Document</label>
                                            <select name="documents"class="form-select select2"
                                                aria-label="Default select example" value="{{ old('documents') }}">
                                                <option selected="" value="">Select Document</option>
                                                <option
                                                    value="yes"{{ $experience->documents == 'yes' ? 'selected' : '' }}>
                                                    Yes</option>
                                                <option
                                                    value="no"{{ $experience->documents == 'no' ? 'selected' : '' }}>
                                                    No</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12 fl">
                                        <input type="submit" class="btn btn-info waves-effect waves-light"
                                            style="float:right" value="Save Info">
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

<script>
    $(document).ready(function() {
        $('.fromEx').on('change', function() {
            var fromdate = $(this).val(),
                todate = $('.toEx').val();
            if (todate !== '') {
                var oneDay = 24 * 60 * 60 * 1000; // hours*minutes*seconds*milliseconds
                var firstDate = new Date(fromdate);
                var secondDate = new Date(todate);
                var diffDays = Math.round(Math.abs((firstDate.getTime() - secondDate.getTime()) / (
                    oneDay)));
                $('.duration').val(diffDays);
            }
        });
        $('.toEx').on('change', function() {
            var todate = $(this).val(),
                fromdate = $('.fromEx').val();
            if (fromdate !== '') {
                var oneDay = 24 * 60 * 60 * 1000; // hours*minutes*seconds*milliseconds
                var firstDate = new Date(fromdate);
                var secondDate = new Date(todate);
                var diffDays = Math.round(Math.abs((firstDate.getTime() - secondDate.getTime()) / (
                    oneDay)));
                $('.duration').val(diffDays);
            }
        });
    });
</script>

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
                $('#experience_present_village').val($('#experience_permanent_village').val());
                $('#experience_present_post').val($('#experience_permanent_post').val());
                $('#experience_present_postal_code').val($('#experience_permanent_postal_code').val());
                var division = $('#permanent_division option:selected').val();
                $('#experience_present_division option[value=' + division + ']').attr('selected',
                    'selected');
                var district = $('#experience_permanent_district option:selected').val();
                $('#experience_present_district option[value=' + district + ']').attr('selected',
                    'selected');
                var upazilla = $('#experience_permanent_upazilla option:selected').val();
                $('#experience_present_upazilla option[value=' + upazilla + ']').attr('selected',
                    'selected');
            } else { //Clear on uncheck
                $('#experience_present_village').val("");
                $('#experience_present_post').val("");
                $('#experience_present_postal_code').val("");
                $('#experience_present_division option[value=""]').attr('selected', 'selected');
                $('#experience_present_district option[value=""]').attr('selected', 'selected');
                $('#experience_present_upazilla option[value=""]').attr('selected', 'selected');
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
