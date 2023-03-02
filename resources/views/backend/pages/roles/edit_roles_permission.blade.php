@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'Edit Role In Permission' }}
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<style type="text/css">
    .form-check-label {
        text-transform: capitalize;
    }
</style>

<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="{{ route('all.roles') }}">All Roles</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Add Roles</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Roles in Permission</h3>
                <a href="{{ route('all.roles.permission') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-undo"> Back </i></a> <br> <br>
            </div>
            <div class="block-content">
                <!-- Label on top Layout -->
                {{-- <h2 class="content-heading">Labels on top</h2> --}}
                <div class="row">
                    <div class="col-lg-4">
                        <p class="text-muted">
                            Enter New Roles Information
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-8">
                        <!-- Form Labels on top - Default Style -->
                        <div class="tab-pane" id="settings">
                            <form id="myForm" method="post" action="{{ route('role.permission.update', $role->id) }}"
                                enctype="multipart/form-data">
                                @csrf


                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="mb-3 form-group">
                                            <label for="firstname" class="form-label"> Roles Name </label>
                                            <h3> {{ $role->name }} </h3>

                                        </div>
                                    </div>

                                    <div class="mb-2 form-check form-check-primary">
                                        <input class="form-check-input" type="checkbox" value=""
                                            id="customckeck15">
                                        <label class="form-check-label" for="customckeck15">Primary</label>
                                    </div>

                                    <hr>

                                    @foreach ($permission_groups as $group)
                                        <div class="row">
                                            <div class="col-3">

                                                <hr>

                                                @php
                                                    $permissions = App\Models\User::getpermissionByGroupName($group->group_name);
                                                @endphp

                                                <div class="mb-2 form-check form-check-primary">
                                                    <input class="form-check-input" type="checkbox" value=""
                                                        id="customckeck1"
                                                        {{ App\Models\User::roleHasPermissions($role, $permissions) ? 'checked' : '' }}>
                                                    <label class="form-check-label"
                                                        for="customckeck1">{{ $group->group_name }}</label>
                                                </div>

                                            </div>

                                            <div class="col-9">

                                                <hr>

                                                @foreach ($permissions as $permission)
                                                    <div class="mb-2 form-check form-check-primary">
                                                        <input class="form-check-input" type="checkbox"
                                                            name="permission[]"
                                                            {{ $role->hasPermissionTo($permission->name) ? 'checked' : '' }}
                                                            value="{{ $permission->id }}"
                                                            id="customckeck{{ $permission->id }}">
                                                        <label class="form-check-label"
                                                            for="customckeck{{ $permission->id }}">{{ $permission->name }}</label>
                                                    </div>
                                                @endforeach
                                                <br>
                                            </div>

                                        </div> <!-- end row -->
                                    @endforeach

                                    <div class="text-end">
                                        <button type="submit"
                                            class="mt-2 mb-4 btn btn-success waves-effect waves-light"><i
                                                class="mdi mdi-content-save"></i> Save</button>
                                    </div>

                                </div> <!-- end row -->


                            </form>
                        </div>
                        <!-- end settings content-->
                        <!-- END Form Labels on top - Default Style -->
                    </div>
                </div>
                <!-- END Label on top Layout -->

            </div>
        </div>
    </div>
</div>



<script type="text/javascript">
    $('#customckeck15').click(function() {
        if ($(this).is(':checked')) {
            $('input[type = checkbox]').prop('checked', true);
        } else {
            $('input[type = checkbox]').prop('checked', false);
        }

    });
</script>

@endsection
