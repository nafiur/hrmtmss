@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'PIM All' }}
@endsection

<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">PIM ALL</li>
            </ol>
        </nav>

        <div class="block block-rounded">
            <div class="block-header block-header-default">
                <h3 class="block-title">Search Employee</h3>
                <a href="" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i
                        class="fa fa-plus-circle"> Add New Experience </i></a> <br> <br>
            </div>

            <div class="mb-5 block-content">
                {{-- <form method="GET" action="{{ route('showstaffdetailsreport') }}">
                    <label for="employee_id">Employee ID:</label>
                    <input type="text" name="employee_id" id="employee_id" required>
                    <button type="submit">Search</button>
                </form> --}}
                <div class="mb-5 block-content">
                    {{-- <h4 class="card-title">Employee Qualification All Data {{ $basicinfos->count() }} </h4> --}}
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
                            @foreach ($basicinfo as $key => $item)
                                <tr>
                                    <td> {{ $key + 1 }} </td>
                                    {{-- <td> {{ $item['domains']['name']  }}</td>  --}}
                                    <td> {{ $item->id }} </td>
                                    <td> {{ $item->name }} </td>
                                    {{-- <td> {{ $item->Designation->name  }} </td>  --}}
                                    <td> {{ $item['designation']['name'] ?? '' }} </td>
                                    <td> {{ $item['domain']['name'] ?? '' }} </td>
                                    {{-- <td> {{ $item->domain_id }} </td> --}}
                                    <td> {{ $item->joiningdate }} </td>
                                    {{-- <td> {{ $item->status }} </td>--}}
                                    <td>
                                        {{-- @if (Auth::user()->can('employee.show')) --}}
                                            <a href="{{ route('showstaffdetailsreport', $item->id) }}" target="_blank"  class="btn btn-info sm"
                                                title="Show Data"> <i class="fas fa-eye"></i>  </a>
                                        {{-- @endif --}}
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                {{-- @if ($employee)
                    <h1>Employee Details</h1>
                    <p>Name: {{ $employee->name }}</p>
                    <p>Address: {{ $employee->address }}</p>
                    <p>Phone: {{ $employee->phone }}</p>

                    <!-- Display the education, guardian, nominee, child, family, and training information -->
                    ...
                @elseif (request()->filled('employee_id'))
                    <p>No employee found with ID {{ request('employee_id') }}</p>
                @endif --}}
            </div>
        </div>
    </div> <!-- end col -->
</div> <!-- end row -->
</div> <!-- container-fluid -->
</div>
@endsection
