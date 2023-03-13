@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'Employee Basic Information' }}
@endsection

<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="javascript:void(0)">Home</a>
                </li>
                </li>
                <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('pim.all') }}">PIM</a>
                <li class="breadcrumb-item active" aria-current="page">Basic Info</li>
            </ol>
        </nav>
        <div class="block block-rounded center">
            <div class="mb-4 text-center row items-push text-sm-start">
                <div class="mb-4">
                    <button type="button" class="mb-3 btn btn-success me-1">
                        <i class="fa fa-fw fa-plus me-1"></i> Add User
                    </button>
                    <button type="button" class="mb-3 btn btn-info me-1">
                        <i class="fa fa-fw fa-download me-1"></i> Download
                    </button>
                    <button type="button" class="mb-3 btn btn-warning me-1">
                        <i class="fa fa-fw fa-exclamation-triangle me-1"></i> Are you sure?
                    </button>
                    <button type="button" class="mb-3 btn btn-primary me-1">
                        <i class="fa fa-fw fa-upload me-1"></i> Upload
                    </button>
                    <button type="button" class="mb-3 btn btn-secondary me-1">
                        <i class="fab fa-fw fa-bluetooth-b me-1"></i> 3 Connections
                    </button>
                    <button type="button" class="mb-3 btn btn-danger me-1">
                        <i class="fa fa-fw fa-times me-1"></i> Delete
                    </button>
                    <button type="button" class="mb-3 btn btn-primary me-1">
                        <i class="fa fa-fw fa-thumbs-up me-1"></i> Like
                    </button>
                    <button type="button" class="mb-3 btn btn-secondary me-1">
                        <i class="fa fa-fw fa-play me-1"></i> Play
                    </button>
                    <button type="button" class="mb-3 btn btn-dark me-1">
                        <i class="fa fa-fw fa-box me-1"></i> 10 Products
                    </button>
                </div>
            </div>
        </div>



        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Employee Info</h3>
                <a href="{{ route('add.basicinfo') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-plus-circle"> Add New Employee </i></a> <br> <br>
            </div>
            <div class="mb-5 block-content">
                <h4 class="card-title">Employee Qualification All Data {{ $basicinfos->count() }} </h4>
                <table id="datatable" class="table table-bordered dt-responsive nowrap"
                    style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                    <thead>
                        <tr>
                            <th width="5%">Sl</th>
                            <th width="10%">ID</th>
                            <th>Name</th>
                            <th width="5%">Designation</th>
                            <th width="5%">Domain</th>
                            <th width="5%">Joining Date</th>
                            {{-- <th width="5%">Status</th>  --}}
                            <th width="15%">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($basicinfos as $key => $item)
                            <tr>
                                <td> {{ $key + 1 }} </td>
                                {{-- <td> {{ $item['domains']['name']  }}</td>  --}}
                                <td> {{ $item->id }} </td>
                                <td> {{ $item->name }} </td>
                                {{-- <td> {{ $item->designation_id }} </td> --}}
                                <td> {{ $item['designation']['name'] ?? '' }} </td>
                                <td> {{ $item['domain']['name'] ?? '' }} </td>
                                {{-- <td> {{ $item->domain_id }} </td>  --}}
                                <td> {{ $item->joiningdate }} </td>
                                {{-- <td> {{ $item->status }} </td>    --}}
                                <td>
                                    {{-- @if (Auth::user()->can('basicinfo.show')) --}}
                                    <a href="{{ route('show.basicinfo', $item->id) }}" class="btn btn-info sm"
                                        title="Show Data"> <i class="fas fa-eye"></i> </a>
                                    {{-- @endif --}}

                                    {{-- @if (Auth::user()->can('ewemployee.export')) --}}
                                    <a href="{{ route('delete.basicinfo', $item->id) }}" class="btn btn-success sm"
                                        title="Delete Data" id="delete"> <i class="fas fa-download"></i> </a>
                                    {{-- @endif --}}

                                    {{-- @if (Auth::user()->can('basicinfo.edit')) --}}
                                    <a href="{{ route('edit.basicinfo', $item->id) }}" class="btn btn-info sm"
                                        title="Edit Data"> <i class="fas fa-edit"></i> </a>
                                    {{-- @endif --}}

                                    {{-- @if (Auth::user()->can('basicinfo.delete')) --}}
                                    <a href="{{ route('delete.basicinfo', $item->id) }}" class="btn btn-danger sm"
                                        title="Delete Data" id="delete"> <i class="fas fa-trash-alt"></i> </a>
                                    {{-- @endif --}}
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
