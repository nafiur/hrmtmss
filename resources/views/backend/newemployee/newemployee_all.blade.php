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
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                                <a href="{{ route('newemployee.add') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Add New Employee </i></a> <br>  <br>               
                                <h4 class="card-title">Employee Qualification All Data </h4>
                                <h4 class="card-title">Employee Qualification All Data {{ $newemployees->count() }} </h4>
                                <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                    <thead>
                                        <tr>
                                            <th width="5%">Sl</th>
                                            <th width="5%">Employee ID</th> 
                                            <th>Name</th> 
                                            <th>Designation</th> 
                                            <th>Domain</th> 
                                            <th>Joining Date</th> 
                                            <th>Status</th> 
                                            <th width="10%">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($newemployees as $key => $item)
                                            <tr>
                                                <td> {{ $key+1}} </td>
                                                {{-- <td> {{ $item['domains']['name']  }}</td>  --}}
                                                <td> {{ $item->id }} </td> 
                                                <td> {{ $item->name }} </td> 
                                                {{-- <td> {{ $item->Designation->name  }} </td>  --}}
                                                <td> {{ $item['designation']['name']  }} </td> 
                                                <td> {{ $item['domain']['name']  }} </td> 
                                                {{-- <td> {{ $item->domain_id }} </td>  --}}
                                                <td> {{ $item->joiningdate }} </td>   
                                                <td> {{ $item->status }} </td>   
                                                <td>
                                                    @if (Auth::user()->can('newemployee.show'))
                                                        <a href="{{ route('newemployee.show',$item->id) }}" class="btn btn-info sm" title="Show Data">  <i class="fas fa-eye"></i> </a>
                                                    @endif
                                                    
                                                    @if (Auth::user()->can('ewemployee.export'))
                                                    <a href="{{ route('newemployee.delete',$item->id) }}" class="btn btn-success sm" title="Delete Data" id="delete">  <i class="fas fa-download"></i> </a>
                                                    @endif
                                                    
                                                    @if (Auth::user()->can('newemployee.edit'))
                                                    <a href="{{ route('newemployee.edit',$item->id) }}" class="btn btn-info sm" title="Edit Data">  <i class="fas fa-edit"></i> </a>
                                                    @endif
                                                    
                                                    @if (Auth::user()->can('newemployee.delete'))
                                                    <a href="{{ route('newemployee.delete',$item->id) }}" class="btn btn-danger sm" title="Delete Data" id="delete">  <i class="fas fa-trash-alt"></i> </a>
                                                    @endif
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