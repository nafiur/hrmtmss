@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'User Management' }}
@endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">All Users</li>
            </ol>
        </nav>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    {{-- <h4 class="page-title">All Admin <span class="btn btn-danger">{{ count($alladminuser) }}</span> </h4> --}}
                    <div class="card-body">
                        <a href="{{ route('add.admin') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                            style="float:right;"><i class="fas fa-plus-circle"> Add User </i></a> <br> <br>
                        <h4 class="card-title">All User</h4>
                        <table id="basic-datatable" class="table dt-responsive nowrap w-100">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Username</th>
                                    <th>Role</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($alladminuser as $key => $item)
                                    <tr>
                                        <td>{{ $key + 1 }}</td>
                                        <td>
                                            {{-- <img src="{{ (!empty($item->profile_image))? url('upload/admin_images/'.$item->profile_image):url('upload/no_image.jpg') }}" alt="Card image cap"> --}}
                                            <img class="rounded-circle avatar-sm"
                                                src="{{ !empty($item->profile_image) ? url('upload/admin_images/' . $item->profile_image) : url('upload/no_image.jpg') }}"
                                                style="width:50px; height: 40px;">
                                        </td>
                                        <td>{{ $item->name }}</td>
                                        <td>{{ $item->email }}</td>
                                        <td>{{ $item->username }}</td>
                                        <td>
                                            @foreach ($item->roles as $role)
                                                <span class="badge badge-pill bg-dark"> {{ $role->name }} </span>
                                            @endforeach
                                        </td>
                                        <td width="18%">
                                            <a href="{{ route('edit.admin', $item->id) }}"
                                                class="btn btn-primary rounded-pill waves-effect waves-light">Edit</a>
                                            <a href="{{ route('delete.admin', $item->id) }}"
                                                class="btn btn-danger rounded-pill waves-effect waves-light"
                                                id="delete">Delete</a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div> <!-- container-fluid -->
</div>
@endsection
