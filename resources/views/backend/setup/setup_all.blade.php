@extends('admin.admin_master')
@section('admin')
@section('title'){{'Setup All'}} @endsection

 <div class="page-content">
                    <div class="container-fluid">
                        <nav aria-label="breadcrumb">
                            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                              <li class="breadcrumb-item">
                                <a href="/dashboard">Home</a>
                              </li>
                              <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                            </ol>
                          </nav>

            <div class="row">
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('sector.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fas fa-globe fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Sector</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('domain.all') }}">
                    {{-- <div class="ribbon-box">2</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fas fa-building fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Domain</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-success" href="{{ route('designation.all') }}">
                    {{-- <div class="ribbon-box">3</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-briefcase fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Designation</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('division.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-chart-pie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Division</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('district.all') }}">
                    {{-- <div class="ribbon-box">24</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-user-tie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">District</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('upazilla.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-file-word fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Upazilla</p>
                    </div>
                  </a>
                </div>
              </div>
            <div class="row">
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('bloodgroup.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-compass fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Blood Group</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('department.all') }}">
                    {{-- <div class="ribbon-box">2</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-envelope-open fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Department</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-success" href="{{ route('educationalqualification.all') }}">
                    {{-- <div class="ribbon-box">3</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-briefcase fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Edu Qualification</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('employeetype.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-chart-pie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Employee Type</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('gender.all') }}">
                    {{-- <div class="ribbon-box">24</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-user-tie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Gender</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('jobstatus.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-file-word fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Job Status</p>
                    </div>
                  </a>
                </div>
              </div>
            <div class="row">
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('maritalstatus.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-compass fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Marital Status</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('religion.all') }}">
                    {{-- <div class="ribbon-box">2</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-envelope-open fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Religion</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-success" href="{{ route('zone.all') }}">
                    {{-- <div class="ribbon-box">3</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-briefcase fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Zone</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('area.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-chart-pie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Area</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('branch.all') }}">
                    {{-- <div class="ribbon-box">24</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-user-tie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Branch</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('branch.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-file-word fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Documents</p>
                    </div>
                  </a>
                </div>
              </div>
            
            
                            
                        </div><!-- end card -->
                    </div><!-- end card -->
                </div>
                <!-- end col -->
                
            </div>
            <!-- end row -->
        </div>
        
                     
                        
                    </div> <!-- container-fluid -->
                </div>
 

@endsection