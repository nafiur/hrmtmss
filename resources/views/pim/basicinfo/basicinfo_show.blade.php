@extends('admin.admin_master')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
@section('title')
    {{ 'Employee Details Information' }}
@endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="javascript:void(0)">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Employee Details Information</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Employee Details Information</h3>
                <a href="{{ route('all.basicinfo') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <!-- Label on top Layout -->
                {{-- <h2 class="content-heading">Labels on top</h2> --}}
                <div class="row">
                    <div class="col-lg-3">
                        <p class="text-muted">
                            Employee Details Information
                        </p>
                    </div>
                    <div class="col-lg-10 col-xl-7">
                        <!-- Form Labels on top - Default Style -->
                        {{-- <form class="mb-5" action="{{ route('roles.store') }}" method="POST">
                    @csrf --}}
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Employee ID</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text" value="{{ $basicinfo->id }}" readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Employee Name</label>
                            <div class="col-sm-10">
                                <input class="capitalize form-control" type="text"
                                    value="{{ $basicinfo->name ?? '' }}" readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Designation</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text"
                                    value="{{ $basicinfo->Designation->name ?? '' }} " readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Joining Date</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text" value="{{ $basicinfo->joiningdate }}"
                                    readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Domain</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text"
                                    value="{{ $basicinfo->domain->name ?? '' }}" readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Father's Name</label>
                            <div class="col-sm-10">
                                <input class="capitalize form-control" type="text"
                                    value="{{ $basicinfo->father_name }}" readonly>
                                {{-- <input class="form-control" type="text" value="{{ $basicinfo-> }}" readonly> --}}
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Mother's Name</label>
                            <div class="col-sm-10">
                                <input class="capitalize form-control" type="text"
                                    value="{{ $basicinfo->mother_name }}" readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Marital Status</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text"
                                    value="{{ $basicinfo->marital_status->name ?? '' }}" readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Place of Birth
                                (District)</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text"
                                    value="{{ $basicinfo->birth_place_district->name ?? '' }}" readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Present Address</label>
                            <div class="col-sm-10">
                                <textarea id="textarea" class="capitalize form-control" readonly>Village: {{ $basicinfo->present_village }} , PostOffice: {{ $basicinfo->present_village }}, Upazilla: {{ $basicinfo->present_upazilla->name ?? '' }}, District: {{ $basicinfo->present_district->name ?? '' }}</textarea>
                                {{-- <input class="form-control" type="text" value="Village: {{ $basicinfo->present_village }} , PostOffice: {{ $basicinfo->present_village }}, Postcode: {{ $basicinfo->present_postal_code }}, Upazilla: {{ $basicinfo->present_upazilla_id }}, District: {{ $basicinfo->present_district_id }}" readonly> --}}
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Permanent Address</label>
                            <div class="col-sm-10">
                                <textarea id="textarea" class="capitalize form-control" readonly>Village: {{ $basicinfo->permanent_village }} , PostOffice: {{ $basicinfo->permanent_village }}, Upazilla: {{ $basicinfo->permanent_upazilla->name ?? '' }}, District: {{ $basicinfo->permanent_district->name ?? '' }}</textarea>
                                {{-- <input class="form-control" type="text" value="Village: {{ $basicinfo->permanent_village }} , PostOffice: {{ $basicinfo->permanent_village }}, Postcode: {{ $basicinfo->permanent_postal_code }}, Upazilla: {{ $basicinfo->permanent_upazilla_id }}, District: {{ $basicinfo->permanent_district_id }}" readonly> --}}
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Date of Birth Date</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text" value="{{ $basicinfo->date_of_birth }}"
                                    readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">National ID</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text" value="{{ $basicinfo->nid }}" readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Smart Card</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text" value="{{ $basicinfo->smartcard }}"
                                    readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Bloodgroup</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text"
                                    value="{{ $basicinfo->blood_groups->name ?? '' }}" readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Mobile No.</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text" value="{{ $basicinfo->mobile }}"
                                    readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text" value="{{ $basicinfo->email }}"
                                    readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Educational
                                Qualification</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text"
                                    value="{{ $basicinfo->educational_qualification->name ?? '' }}" readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-2 col-form-label">Employee Type</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text"
                                    value="{{ $basicinfo->employee_type->name ?? '' }}" readonly>
                            </div>
                        </div>
                        {{-- </form> --}}
                        <!-- END Form Labels on top - Default Style -->
                    </div>
                </div>
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



@endsection
