@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'Area' }}
@endsection

<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Area Management</li>
            </ol>
        </nav>
        {{-- <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">Area All</h4>
                </div>
            </div>
        </div> <!-- end page title -->                   --}}
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        @if (Auth::user()->can('area.add'))
                            <a href="{{ route('area.add') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                                style="float:right;"><i class="fas fa-plus-circle"> Add Area </i></a> <br> <br>
                        @endif
                        <h4 class="card-title">Area All Data </h4>
                        <table id="datatable" class="table table-bordered dt-responsive nowrap"
                            style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Zone Name</th>
                                    <th>Area Name</th>
                                    <th width="10%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($areas as $key => $item)
                                    <tr>
                                        <td> {{ $key + 1 }} </td>
                                        <td> {{ $item['zone']['name'] }} </td>
                                        <td> {{ $item->name }} </td>
                                        <td>
                                            @if (Auth::user()->can('area.edit'))
                                                <a href="{{ route('area.edit', $item->id) }}" class="btn btn-info sm"
                                                    title="Edit Data"> <i class="fas fa-edit"></i> </a>
                                            @endif
                                            @if (Auth::user()->can('area.delete'))
                                                <a href="{{ route('area.delete', $item->id) }}" class="btn btn-danger sm"
                                                    title="Delete Data" id="delete"> <i class="fas fa-trash-alt"></i>
                                                </a>
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
</div> {{-- end page content --}}


@endsection
