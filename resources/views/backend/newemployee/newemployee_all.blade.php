@extends('admin.admin_master')
@section('admin')
@section('title'){{'New Employee'}} @endsection

 <div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
              <li class="breadcrumb-item">
                <a href="javascript:void(0)">Home</a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">Employee Management</li>
            </ol>
          </nav>
        {{-- <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">All New Employee</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->                   --}}
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                                <a href="{{ route('newemployee.add') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Add New Employee </i></a> <br>  <br>               
                                <h4 class="card-title">Employee Qualification All Data </h4>
                                <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                    <thead>
                                        <tr>
                                            <th>Sl</th>
                                            <th>Name</th> 
                                            <th>Domain</th> 
                                            <th>date of Birth</th> 
                                            <th width="10%">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($newemployees as $key => $item)
                                            <tr>
                                                <td> {{ $key+1}} </td>
                                                {{-- <td> {{ $item['domains']['name']  }}</td>  --}}
                                                <td> {{ $item->name }} </td> 
                                                <td> {{ $item->domain_id }} </td> 
                                                <td> {{ $item->date_of_birth }} </td> 
                                                <td>
                                                    <a href="{{ route('newemployee.edit',$item->id) }}" class="btn btn-info sm" title="Edit Data">  <i class="fas fa-edit"></i> </a>
                                                    <a href="{{ route('newemployee.delete',$item->id) }}" class="btn btn-danger sm" title="Delete Data" id="delete">  <i class="fas fa-trash-alt"></i> </a>
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