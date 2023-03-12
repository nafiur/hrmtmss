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
<form method="GET" action="{{ route('search') }}">
    <input type="text" name="search_query" placeholder="Search...">
    <button type="submit">Search</button>
</form>

<h2>Basic Info</h2>
<table>
    <thead>
        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($basic_infos as $basic_info)
            <tr>

            <td>{{ $basic_info->employee_id }}</td>
            <td>{{ $basic_info->name }}</td>
            <td>{{ $basic_info->email }}</td>
            <td>{{ $basic_info->phone }}</td>
        </tr>
    @endforeach
</tbody>
</table>
<h2>Guardians</h2>
<table>
    <thead>
        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($guardians as $guardian)
            <tr>
                <td>{{ $guardian->employee_id }}</td>
                <td>{{ $guardian->name }}</td>
                <td>{{ $guardian->email }}</td>
                <td>{{ $guardian->phone }}</td>
            </tr>
        @endforeach
    </tbody>
</table>{{-- @if ($employee)
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
