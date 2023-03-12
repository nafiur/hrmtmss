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
                                </li>
                                <li class="breadcrumb-item active" aria-current="page"><a
                    href="{{ route('pim.all') }}">PIM</a>
                <li class="breadcrumb-item active" aria-current="page">Basic Info</li>
            </ol>
        </nav>
        <div class="row">
            {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.basicinfo') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Basic Info</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.guardian') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Guardian</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.nominee') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Nominee</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.education') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Education</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.course') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Course</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.experience') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Experience</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.familybrothersister') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Brother/Sister</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.familychild') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Child</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.familyspouce') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Spouce</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.training') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Training</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.training') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">PF Check List</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.training') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">Yearly Health CheckUp</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
                {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.pimreport') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class="fa fas fa-user-plus fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">PIM Report</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
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
                                        <a href="{{ route('delete.basicinfo', $item->id) }}"
                                            class="btn btn-success sm" title="Delete Data" id="delete"> <i
                                                class="fas fa-download"></i> </a>
                                    {{-- @endif --}}

                                    {{-- @if (Auth::user()->can('basicinfo.edit')) --}}
                                        <a href="{{ route('edit.basicinfo', $item->id) }}" class="btn btn-info sm"
                                            title="Edit Data"> <i class="fas fa-edit"></i> </a>
                                    {{-- @endif --}}

                                    {{-- @if (Auth::user()->can('basicinfo.delete')) --}}
                                        <a href="{{ route('delete.basicinfo', $item->id) }}"
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
