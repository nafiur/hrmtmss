<<<<<<< HEAD
@extends('admin.admin_master')
@section('admin')
@section('title'){{'All Permission'}} @endsection

 <div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
              <li class="breadcrumb-item">
                <a href="/dashboard">Home</a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">All Permission</li>
            </ol>
          </nav>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                                <a href="{{ route('add.permission') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Add Permission </i></a> <br>  <br>               
                                <h4 class="card-title">All Permission</h4>
                                <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                    <thead>
                                        <tr>
                                            <th>Sl</th>
                                            <th>Permission Name </th>
                                            <th>Group Name </th> 
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($permissions as $key=> $item)
                                            <tr>
                                                <td>{{ $key+1 }}</td> 
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->group_name }}</td> 
                                                <td width="18%">
                                                    <a href="{{ route('edit.permission',$item->id) }}" class="btn btn-primary rounded-pill waves-effect waves-light">Edit</a>
                                                    <a href="{{ route('delete.permission',$item->id) }}" class="btn btn-danger rounded-pill waves-effect waves-light" id="delete">Delete</a>
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
=======
>>>>>>> dc63e67fe7447fc504f37efffa13a94cff5d66a4
