@extends('admin.admin_master')
@section('admin')
@section('title'){{'Designation'}} @endsection

 <div class="page-content">
                    <div class="container-fluid">
                        <nav aria-label="breadcrumb">
                            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                              <li class="breadcrumb-item">
                                <a href="/dashboard">Home</a>
                              </li>
                              <li class="breadcrumb-item active" aria-current="page">Designation Management</li>
                            </ol>
                          </nav>
                        {{-- <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0">Designation All</h4>

                                     

                                </div>
                            </div>
                        </div>
                        <!-- end page title --> --}}
                        
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <a href="{{ route('designation.add') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Add Domain </i></a> <br>  <br>               

                    <h4 class="card-title">Domain All Data </h4>
                    

                    <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>Sl</th>
                            <th>Name</th> 
                            <th>Grade </th>
                            {{-- <th>Email</th>
                            <th>Address</th>  --}}
                            <th width="10%">Action</th>
                            
                        </thead>


                        <tbody>
                        	 
                        	@foreach($designations as $key => $item)
                        <tr>
                            <td> {{ $key+1}} </td>
                            <td> {{ $item->name }} </td> 
                            <td> {{ $item->grade }} </td> 
                             {{-- <td> {{ $item->mobile_no }} </td> 
                              <td> {{ $item->email }} </td> 
                               <td> {{ $item->address }} </td>  --}}
                            <td>
                                <a href="{{ route('designation.edit',$item->id) }}" class="btn btn-info sm" title="Edit Data">  <i class="fas fa-edit"></i> </a>
                                <a href="{{ route('designation.delete',$item->id) }}" class="btn btn-danger sm" title="Delete Data" id="delete">  <i class="fas fa-trash-alt"></i> </a>
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