@extends('admin.admin_master')
@section('admin')
@section('title'){{'HR-M & A Staff Profile'}} @endsection


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
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">      
                        <div class="content content-full content-boxed">
                          <h2 class="content-heading">
                            <i class="si si-users me-1"></i> Lead Manager
                          </h2>
                          <div class="row">
                            <div class="col-md-6 col-xl-3">
                              <div class="block block-rounded text-center">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo15.jpg');">
                                  <img class="img-avatar img-avatar-thumb hoverZoomLink" src="{{ asset('backend/mix/assets/media/avatars/avatar3.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Judy Ford</div>
                                  <div class="fs-sm text-muted">Product Designer</div>
                                </div>
                                <div class="block-content block-content-full">
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                              <div class="block block-rounded text-center">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo4.jpg');">
                                  <img class="img-avatar img-avatar-thumb hoverZoomLink" src="{{ asset('backend/mix/assets/media/avatars/avatar10.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Carl Wells</div>
                                  <div class="fs-sm text-muted">Senior Developer</div>
                                </div>
                                <div class="block-content block-content-full">
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                              <div class="block block-rounded text-center">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo1.jpg');">
                                  <img class="img-avatar img-avatar-thumb" src="{{ asset('backend/mix/assets/media/avatars/avatar12.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Brian Cruz</div>
                                  <div class="fs-sm text-muted">Junior Designer</div>
                                </div>
                                <div class="block-content block-content-full">
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                              <div class="block block-rounded text-center">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo3.jpg');">
                                  <img class="img-avatar img-avatar-thumb" src="{{ asset('backend/mix/assets/media/avatars/avatar1.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Helen Jacobs</div>
                                  <div class="fs-sm text-muted">Marketing</div>
                                </div>
                                <div class="block-content block-content-full">                              
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="text-end">
                            <button type="button" class="btn btn-alt-primary">
                              Check out more <i class="fa fa-arrow-right ms-1"></i>
                            </button>
                          </div>              
                        </div>
                        <div class="content content-full content-boxed">
                          <h2 class="content-heading">
                            <i class="si si-users me-1"></i> Lead Manager
                          </h2>
                          <div class="row">
                            <div class="col-md-6 col-xl-3">
                              <div class="block block-rounded text-center">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo15.jpg');">
                                  <img class="img-avatar img-avatar-thumb hoverZoomLink" src="{{ asset('backend/mix/assets/media/avatars/avatar3.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Judy Ford</div>
                                  <div class="fs-sm text-muted">Product Designer</div>
                                </div>
                                <div class="block-content block-content-full">
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                              <div class="block block-rounded text-center">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo4.jpg');">
                                  <img class="img-avatar img-avatar-thumb hoverZoomLink" src="{{ asset('backend/mix/assets/media/avatars/avatar10.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Carl Wells</div>
                                  <div class="fs-sm text-muted">Senior Developer</div>
                                </div>
                                <div class="block-content block-content-full">
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                              <div class="block block-rounded text-center">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo1.jpg');">
                                  <img class="img-avatar img-avatar-thumb" src="{{ asset('backend/mix/assets/media/avatars/avatar12.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Brian Cruz</div>
                                  <div class="fs-sm text-muted">Junior Designer</div>
                                </div>
                                <div class="block-content block-content-full">
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                              <div class="block block-rounded text-center">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo3.jpg');">
                                  <img class="img-avatar img-avatar-thumb" src="{{ asset('backend/mix/assets/media/avatars/avatar1.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Helen Jacobs</div>
                                  <div class="fs-sm text-muted">Marketing</div>
                                </div>
                                <div class="block-content block-content-full">                              
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="text-end">
                            <button type="button" class="btn btn-alt-primary">
                              Check out more <i class="fa fa-arrow-right ms-1"></i>
                            </button>
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
@endsection