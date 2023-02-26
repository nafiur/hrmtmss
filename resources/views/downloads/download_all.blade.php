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

            <div class="block block-rounded">
                <div class="block-header block-header-default">
                <h3 class="block-title">Add New Form</h3>
            @if (Auth::user()->can('formformats.add'))
            <a href="{{ route('download.add') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fa fa-plus-circle"> Add New Form </i></a> <br>  <br>
            @endif
            </div>
            <div class="block-content mb-5 bangla"> 
                                {{-- <h4 class="card-title">Employee  All Data </h4> --}}
                                <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                    <thead>
                                        <tr>
                                            <th width="10%">Sl</th>
                                            <th>Name</th> 
                                            {{-- <th>Name English</th>  --}}
                                            <th width="10%">File Type</th>
                                            <th width="10%">Download</th>
                                            {{-- <th width="5%">Doc</th> --}}
                                            <th width="20%">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($downloads as $key => $item)
                                            <tr>
                                                <td> {{ $key+1}} </td>
                                                {{-- <td> {{ $item->name }} </td>  --}}
                                                <td> {{ $item->form_name }} </td> 
                                                <td> {{ $item->form_type }} </td> 
                                                {{-- <td> {{ $item->form_file }} </td>  --}}
                                                <td> <a href="{{ asset('upload/downloads/form/'. $item->form_file) }}" class="btn btn-primary sm" title="Download">  <i class="fas fa-file-download"></i></a> </td> 
                                                {{-- <td> {{ $item->name }} </td>  --}}
                                                <td>
                                                    {{-- <a href="{{ asset('upload/downloads/'. $item->form_file) }}" class="btn btn-info sm" title="Edit Data">  <i class="fas fa-edit"></i> </a> --}}
                                                    @if (Auth::user()->can('formformats.show'))
                                                    <a href="{{ route('download.show',$item->id) }}" class="btn btn-info sm" title="Show Data">  <i class="fas fa-eye"></i> </a>
                                                    @endif
                                                    @if (Auth::user()->can('formformats.edit'))
                                                    <a href="{{ route('download.edit',$item->id) }}" class="btn btn-info sm" title="Edit Data">  <i class="fas fa-edit"></i> </a>
                                                    @endif

                                                    @if (Auth::user()->can('formformats.delete'))
                                                    <a href="{{ route('download.delete',$item->id) }}" class="btn btn-danger sm" title="Delete Data" id="delete">  <i class="fas fa-trash-alt"></i> </a>
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
            <!-- END Label on top Layout -->    
            </div><!--block-content--> 
            </div><!--block-content--> 
        
    </div> <!-- container-fluid -->
</div>
@endsection