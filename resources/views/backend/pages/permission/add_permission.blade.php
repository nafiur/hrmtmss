@extends('admin.admin_master')
@section('admin')
@section('title'){{'Add Permission'}} @endsection

<div class="page-content">
<div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
            <li class="breadcrumb-item">
                <a href="/dashboard">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Add Permission</li>
            </ol>
        </nav>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <a href="{{ route('all.permission') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Back </i></a> <br>  <br>
                            <h4 class="card-title">Add Permission </h4><br><br>
                            <form method="post" action="{{ route('permission.store') }}" id="myForm" >
                                    @csrf
                                    <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3 form-group">
                                            <label for="firstname" class="form-label">Permission Name</label>
                                            <input type="text" name="name" class="form-control"   >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3 form-group">
                                            <label for="firstname" class="form-label">Group Name </label>
                                            <select name="group_name" class="form-select select2" id="example-select">
                                                <option selected disabled >Select Permission Group  </option>
                                                <option value="dashboard">Dashboard</option>
                                                <option value="settings"> Settings</option>
                                                <option value="form-formats"> Form & Formats</option>
                                                <option value="notice"> Notice</option>
                                                <option value="report"> Report</option>
                                                <option value="all-employee"> All Employee</option>
                                                <option value="new-employee"> New Employee </option>
                                                <option value="efile"> eFile </option>
                                                <option value="sector"> Sector </option>
                                                <option value="domain"> Domain </option>
                                                <option value="department"> Department </option>
                                                <option value="designation"> Designation </option>
                                                <option value="division"> Division</option>
                                                <option value="district"> District </option>
                                                <option value="upazilla"> Upazilla</option>
                                                <option value="bloodgroup"> Bloodgroup</option>
                                                <option value="department"> Department</option>
                                                <option value="employeetype"> Employeetype</option>
                                                <option value="roles">Roles</option>
                                                <option value="module">Module</option>
                                                <option value="eduqualification">Edu Qualification</option>
                                                <option value="gender">Gender</option>
                                                <option value="jobstatus">Job Status</option>
                                                <option value="maritalstatus">Marital Status</option>
                                                <option value="religion">Religion</option>
                                                <option value="zone">Zone</option>
                                                <option value="area">Area</option>
                                                <option value="branch">Branch</option>
                                                {{-- <option value="branch">Permission Group</option> --}}
                                                {{-- <option value="roles"> Roles</option>
                                                <option value="roles"> Roles</option>
                                                <option value="roles"> Roles</option>
                                                <option value="roles"> Roles</option>
                                                <option value="roles"> Roles</option>                                                                 --}}
                                            </select>
                                            {{-- <select name="permission_groups_id" class="form-select select2" aria-label="Default select example" value="{{old('permission_groups_id')}}">
                                                    <option selected="" value="">Select Permission Group</option>
                                                    @foreach($permission_groups as $pg)
                                                        <option value="{{ $pg->id }}">{{ $pg->name }}.{{ $pg->grade }}</option>
                                                    @endforeach
                                                </select> --}}
                                        </div>
                                        {{-- <div class="mb-3 form-group">
                                            <label for="firstname" class="form-label">Group Name </label>
                                            <select name="group_name" class="form-select" id="example-select">
                                                <option selected disabled >Select Permission Group  </option>
                                                <option value="dashboard">Dashboard</option>
                                                <option value="settings"> Settings</option>
                                                <option value="form-formats"> Form & Formats</option>
                                                <option value="notice"> Notice</option>
                                                <option value="all-employee"> All Employee</option>
                                                <option value="new-employee"> New Employee </option>
                                                <option value="efile"> eFile </option>
                                                <option value="sector"> Sector </option>
                                                <option value="domain"> Domain </option>
                                                <option value="department"> Department </option>
                                                <option value="designation"> Designation </option>
                                                <option value="division"> Division</option>
                                                <option value="district"> District </option>
                                                <option value="upazilla"> Upazilla</option>
                                                <option value="bloodgroup"> Bloodgroup</option>
                                                <option value="department"> Department</option>
                                                <option value="employeetype"> Employeetype</option>
                                                <option value="roles">Roles</option>
                                                <option value="module">Module</option>
                                                <option value="eduqualification">Edu Qualification</option>
                                                <option value="gender">Gender</option>
                                                <option value="jobstatus">Job Status</option>
                                                <option value="maritalstatus">Marital Status</option>
                                                <option value="religion">Religion</option>
                                                <option value="zone">Zone</option>
                                                <option value="area">Area</option>
                                                <option value="branch">Branch</option> --}}
                                                {{-- <option value="branch">Permission Group</option> --}}
                                                {{-- <option value="roles"> Roles</option>
                                                <option value="roles"> Roles</option>
                                                <option value="roles"> Roles</option>
                                                <option value="roles"> Roles</option>
                                                <option value="roles"> Roles</option>                                                                 --}}
                                            {{-- </select>
                                        </div> --}}
                                    </div>
                                </div>
                                <!-- end row -->
                                <div>
                                    <button type="submit" class="float-right mt-2 btn btn-success waves-effect waves-light"><i class="mdi mdi-content-save"></i> Save</button>
                                </div>
                            </form>
                    </div>
                </div>
            </div> <!-- end col -->
        </div>
        </div>
        </div>
</div> <!-- container-fluid -->
</div>
@endsection

