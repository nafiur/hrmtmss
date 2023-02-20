@extends('admin.admin_master')
@section('admin')
@section('title'){{'Forms Download'}} @endsection

 <div class="page-content">
    <div class="container-fluid">
            <nav aria-label="breadcrumb">
                <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">All Form & Formats</li>
                </ol>
            </nav>
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-6 col-md-4 col-xl-2">
                      <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('newemployee.all') }}">
                        <div class="block-content">
                          <p class="my-2">
                            <i class="fa fas fa-house-user fa-2x text-muted"></i>
                          </p>
                          <p class="fw-semibold">All Employee</p>
                        </div>
                      </a>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                      <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('newemployee.add') }}">
                        {{-- <div class="ribbon-box">2</div> --}}
                        <div class="block-content">
                          <p class="my-2">
                            <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                          </p>
                          <p class="fw-semibold">New Employee</p>
                        </div>
                      </a>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                      <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-success" href="/efile">
                        {{-- <div class="ribbon-box">3</div> --}}
                        <div class="block-content">
                          <p class="my-2">
                            <i class="fa fas fa-file-archive fa-2x text-muted"></i>
                          </p>
                          <p class="fw-semibold">eFile Magt</p>
                        </div>
                      </a>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                      <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('setup.all') }}">
                        <div class="block-content">
                          <p class="my-2">
                            <i class="fa fas fa-cogs fa-2x text-muted"></i>
                          </p>
                          <p class="fw-semibold">All Setup</p>
                        </div>
                      </a>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                      <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="javascript:void(0)">
                        {{-- <div class="ribbon-box">24</div> --}}
                        <div class="block-content">
                          <p class="my-2">
                            <i class="fa fa-user-tie fa-2x text-muted"></i>
                          </p>
                          <p class="fw-semibold">People</p>
                        </div>
                      </a>
                    </div>
                    <div class="col-6 col-md-4 col-xl-2">
                      <a class="block text-center block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                        <div class="block-content">
                          <p class="my-2">
                            <i class="fa fa-file-word fa-2x text-muted"></i>
                          </p>
                          <p class="fw-semibold">Documents</p>
                        </div>
                      </a>
                    </div>
                  </div>
                <div class="card">
                    <div class="card-body">
                                <a href="{{ route('download.add') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Add New Form </i></a> <br>  <br>               
                                <h4 class="card-title"> All Data </h4>
                                <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                    <thead>
                                        <tr>
                                            <th>Sl</th>
                                            <th>Name Bangla</th> 
                                            <th>Name English</th> 
                                            <th width="5%">PDF</th>
                                            <th width="5%">Doc</th>
                                            <th width="10%">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($downloads as $key => $item)
                                            <tr>
                                                <td> {{ $key+1}} </td>
                                                <td> {{ $item->name }} </td> 
                                                <td> {{ $item->name }} </td> 
                                                <td> {{ $item->name }} </td> 
                                                <td>
                                                    <a href="{{ route('download.edit',$item->id) }}" class="btn btn-info sm" title="Edit Data">  <i class="fas fa-edit"></i> </a>
                                                    <a href="{{ route('download.delete',$item->id) }}" class="btn btn-danger sm" title="Delete Data" id="delete">  <i class="fas fa-trash-alt"></i> </a>
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