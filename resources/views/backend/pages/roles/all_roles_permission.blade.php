@extends('admin.admin_master')
@section('admin')
@section('title'){{'Role in Permission'}} @endsection

 <div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
              <li class="breadcrumb-item">
                <a href="/dashboard">Home</a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">Role in Permission</li>
            </ol>
          </nav>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                                <a href="{{ route('add.roles.permission') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Add Role in Permission </i></a> <br>  <br>               
                                <h4 class="card-title">Role in Permission</h4>
                                <table  class="table dt-responsive nowrap w-100">
                                    <thead>
                                        <tr>
                                            <th>Sl</th>
                                            <th>Roles Name </th>
                                            <th>Permission Name </th> 
                                            <th width="15%">Action</th>
                                        </tr>
                                    </thead>
                                
                
                    <tbody>
                        @foreach($roles as $key=> $item)
                        <tr>
                            <td>{{ $key+1 }}</td> 
                            <td>{{ $item->name }}</td>
                            <td> 
                            @foreach($item->permissions as $perm)
                 <span class="badge rounded-pill bg-dark"> {{ $perm->name }} </span>
                            @endforeach
            
                            </td> 
                            <td width="15%">
                                <a href="{{ route('admin.edit.roles',$item->id) }}" class="btn btn-primary rounded-pill waves-effect waves-light">Edit</a>
                                <a href="{{ route('admin.delete.roles',$item->id) }}" class="btn btn-danger rounded-pill waves-effect waves-light" id="delete">Delete</a>
            
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

