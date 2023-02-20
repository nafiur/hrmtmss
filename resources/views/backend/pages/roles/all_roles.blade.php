<<<<<<< HEAD
@extends('admin.admin_master')
@section('admin')
@section('title'){{'All Role'}} @endsection

 <div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
              <li class="breadcrumb-item">
                <a href="/dashboard">Home</a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">All Roles</li>
            </ol>
          </nav>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                                <a href="{{ route('add.roles') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Add role </i></a> <br>  <br>               
                                <h4 class="card-title">All role</h4>
                                <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                    <thead>
                                        <tr>
                                            <th>Sl</th>
                                            <th>Role Name </th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($roles as $key=> $item)
                                            <tr>
                                                <td>{{ $key+1 }}</td> 
                                                <td>{{ $item->name }}</td> 
                                                <td>
                                                    <a href="{{ route('edit.roles',$item->id) }}" class="btn btn-primary rounded-pill waves-effect waves-light">Edit</a>
                                                    <a href="{{ route('delete.roles',$item->id) }}" class="btn btn-danger rounded-pill waves-effect waves-light" id="delete">Delete</a>
=======

>>>>>>> dc63e67fe7447fc504f37efffa13a94cff5d66a4
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