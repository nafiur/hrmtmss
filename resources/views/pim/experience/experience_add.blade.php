@extends('admin.admin_master')
@section('admin')

    <link rel="stylesheet"
        href="{{ asset('backend/mix/assets/js/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
@section('title')
    {{ 'Add Experience' }}
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
                        href="{{ route('all.education') }}">Experience</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Add Experience Information</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Add New Experience</h3>
                <a href="{{ route('all.experience') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form method="post" action="{{ route('experience.store') }}" id="myForm">
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
                                            <label for="example-text-input" class="form-label">Organization Name
                                            </label>
                                            <input type="text" name="organization_name" class="form-control"
                                                required="" value="{{ old('organization_name') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Job Nature
                                            </label>
                                            <input type="text" name="job_nature" class="form-control" required=""
                                                value="{{ old('job_nature') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">Post
                                            </label>
                                            <input type="text" name="post_name" class="form-control" required=""
                                                value="{{ old('post_name') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">From
                                            </label>
                                            <input type="date" name="experience_from" class="form-control fromEx"
                                                required="" id="startDate" value="{{ old('experience_from') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="example-text-input" class="form-label">To
                                            </label>
                                            <input type="date" id="endDate" name="experience_to"
                                                class="form-control toEx" required=""
                                                value="{{ old('experience_to') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <button type="button" onclick="X()">Find Difference</button><br>
                                            <div name="result" id="result"></div>
                                            <label for="example-text-input" class="form-label">Total Experience</label>
                                            <input type="text" id="result" readonly name="total_experience"
                                                class="form-control duration" required=""
                                                value="{{ old('result') }}">
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
    function X() {

        const firstDate = document.getElementById('firstDate').value;
        const secondDate = document.getElementById('secondDate').value;


        const startTimestamp = new Date(firstDate).getTime();
        const endTimestamp = new Date(secondDate).getTime();


        const difference = endTimestamp - startTimestamp;


        const differenceInDays = Math.round(difference / (1000 * 60 * 60 * 24));


        const dayCountElement = document.getElementById('dayCount');
        dayCountElement.innerHTML = `The difference between the dates is ${differenceInDays} days.`;
    }
</script>

<script>
    $(document).ready(function() {
        $("#endDate").change(function() {
            var startDate = new Date($("#startDate").val());
            var endDate = new Date($(this).val());
            var yearDiff = endDate.getFullYear() - startDate.getFullYear();
            var monthDiff = endDate.getMonth() - startDate.getMonth();
            if (monthDiff < 0) {
                yearDiff--;
                monthDiff += 12;
            }
            $("#result").text(yearDiff + " years, " + monthDiff + " months");
        });
    });
</script>

{{-- <script>
    $(document).ready(function() {
        $('.fromEx').on('change', function() {
            var fromdate = $(this).val(),
                todate = $('.toEx').val();
            if (todate !== '') {
                var oneDay = 365 * 24 * 60 * 60 * 1000; // hours*minutes*seconds*milliseconds
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
                var oneDay = 365 * 24 * 60 * 60 * 1000; // hours*minutes*seconds*milliseconds
                var firstDate = new Date(fromdate);
                var secondDate = new Date(todate);
                var diffDays = Math.round(Math.abs((firstDate.getTime() - secondDate.getTime()) / (
                    oneDay)));
                $('.duration').val(diffDays);
            }
        });
    });
</script> --}}
<script type="text/javascript">
    $(document).ready(function() {
        $('#myForm').validate({
            rules: {
                experience_name: {
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
                experience_name: {
                    required: 'Please Enter Experience Name',
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
