@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'Notice & Circular' }}
@endsection

<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">All Notice & Circular</li>
            </ol>
        </nav>
        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">All Notice</h3>
                @if (Auth::user()->can('notice.add'))
                    <a href="{{ route('notice.add') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                        style="float:right;"><i class="fa fa-plus-circle"> Add New Notice </i></a> <br> <br>
                @endif
            </div>
            <div class="mb-5 block-content bangla">
                {{-- <h4 class="card-title">Employee  All Data </h4> --}}
                <table id="datatable" class="table table-bordered dt-responsive nowrap"
                    style="border-collapse: collapse; border-spacing: 0; width: 100%;">
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
                        @foreach ($notices as $key => $item)
                            <tr>
                                <td> {{ $key + 1 }} </td>
                                {{-- <td> {{ $item->name }} </td>  --}}
                                <td> {{ $item->notice_title }} </td>
                                <td> {{ $item->form_type }} </td>
                                {{-- <td> {{ $item->form_file }} </td>  --}}
                                <td> <a href="{{ asset('upload/notice/' . $item->notice_file) }}"
                                        class="btn btn-primary sm" title="Download" target="_blank" rel="noopener"> <i
                                            class="fas fa-file-download"></i></a> </td>
                                {{-- <td> {{ $item->name }} </td>  --}}
                                <td>
                                    {{-- <a href="{{ asset('upload/downloads/'. $item->form_file) }}" class="btn btn-info sm" title="Edit Data">  <i class="fas fa-edit"></i> </a> --}}
                                    @if (Auth::user()->can('notice.show'))
                                        <a href="{{ route('notice.show', $item->id) }}" class="btn btn-info sm"
                                            title="Show Data"> <i class="fas fa-eye"></i> </a>
                                    @endif
                                    @if (Auth::user()->can('notice.edit'))
                                        <a href="{{ route('notice.edit', $item->id) }}" class="btn btn-info sm"
                                            title="Edit Data"> <i class="fas fa-edit"></i> </a>
                                    @endif
                                    @if (Auth::user()->can('notice.delete'))
                                        <a href="{{ route('notice.delete', $item->id) }}" class="btn btn-danger sm"
                                            title="Delete Data" id="delete"> <i class="fas fa-trash-alt"></i> </a>
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
</div>
<!--block-content-->
</div>
<!--block-content-->
</div> <!-- container-fluid -->
</div>
@endsection
