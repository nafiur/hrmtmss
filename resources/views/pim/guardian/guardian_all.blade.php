@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'New Employee' }}
@endsection

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
        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Employee Info</h3>
                <a href="{{ route('add.guardian') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-plus-circle"> Add New Employee </i></a> <br> <br>
            </div>
            <div class="mb-5 block-content">
                <h4 class="card-title">Employee Qualification All Data {{ $guardian->count() }} </h4>
                <table id="datatable" class="table table-bordered dt-responsive nowrap"
                    style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                    <thead>
                        <tr>
                            <th width="5%">Sl</th>
                            <th width="10%">Employee ID</th>
                            <th width="20%">Employee Name</th>
                            <th width="20%">Guardian Name</th>
                            {{-- <th width="5%">Domain</th>
                            <th width="5%">Joining Date</th> --}}
                            {{-- <th width="5%">Status</th>  --}}
                            <th width="15%">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($guardian as $key => $item)
                            <tr>
                                <td> {{ $key + 1 }} </td>
                                {{-- <td> {{ $item['domains']['name']  }}</td>  --}}
                                <td> {{ $item->employee_id }} </td>
                                <td> {{ $item['basic_infos']['name'] ?? ''}} </td>
                                {{-- <td> {{ $item['basicinfos']['name'] ?? '' }} </td> --}}
                                <td> {{ $item->guardian_name }} </td>
                                {{-- <td> {{ $item->designation_id }} </td> --}}
                                {{-- <td> {{ $item['basicinfo']['name'] ?? '' }} </td> --}}
                                {{-- <td> {{ $item['domain']['name'] ?? '' }} </td> --}}

                                <td>
                                    {{-- @if (Auth::user()->can('guardian.show')) --}}
                                        <a href="{{ route('show.guardian', $item->id) }}" class="btn btn-info sm"
                                            title="Show Data"> <i class="fas fa-eye"></i> </a>
                                    {{-- @endif --}}

                                    {{-- @if (Auth::user()->can('ewemployee.export')) --}}
                                        <a href="{{ route('delete.guardian', $item->id) }}"
                                            class="btn btn-success sm" title="Delete Data" id="delete"> <i
                                                class="fas fa-download"></i> </a>
                                    {{-- @endif --}}

                                    {{-- @if (Auth::user()->can('guardian.edit')) --}}
                                        <a href="{{ route('edit.guardian', $item->id) }}" class="btn btn-info sm"
                                            title="Edit Data"> <i class="fas fa-edit"></i> </a>
                                    {{-- @endif --}}

                                    {{-- @if (Auth::user()->can('guardian.delete')) --}}
                                        <a href="{{ route('delete.guardian', $item->id) }}"
                                            class="btn btn-danger sm" title="Delete Data" id="delete"> <i
                                                class="fas fa-trash-alt"></i> </a>
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
