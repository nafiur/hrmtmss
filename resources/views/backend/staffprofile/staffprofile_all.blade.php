@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'HR-M & A Staff Profile' }}
@endsection


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
                                    <div class="block text-center block-rounded">
                                        <div class="block-content block-content-full bg-image"
                                            style="background-image: url('assets/media/photos/photo15.jpg');">
                                            <img class="img-avatar img-avatar-thumb hoverZoomLink"
                                                src="{{ asset('upload/staffprofile/Shahzadi Begum.jpg') }}"
                                                alt="">
                                        </div>
                                        <div class="block-content block-content-full block-content-sm bg-body-light">
                                            <div class="fw-semibold">Shahzadi Begum</div>
                                            <div class="fs-sm text-muted">Director</div>
                                            <div class="fs-sm text-muted">HR-M & Admin</div>
                                        </div>
                                        <div class="block-content block-content-full">
                                            <button type="button" class="btn btn-light waves-effect waves-light"
                                                data-bs-toggle="modal" data-bs-target="#myModal"><i
                                                    class="fa fa-user-circle text-muted me-1"></i> Profile</button>
                                            <!-- /.modal -->
                                            <div id="myModal" class="modal fade" tabindex="-1" role="dialog"
                                                aria-labelledby="myModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="myModalLabel">Details Profile
                                                            </h5>
                                                            <button type="button" class="btn-close"
                                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <img id="showImage" class="mb-4 rounded avatar-lg"
                                                                src="{{ asset('upload/staffprofile/Shahzadi Begum.jpg') }}">
                                                            <h5>Shahzadi Begum</h5>
                                                            <h6>Director</h6>
                                                            <h6>HR-M & Admin</h6>
                                                            <h6>Mobile: +8801711875841</h6>
                                                            <p>email: shahzadibegumbd@gmail.com</p>
                                                            <p>email: dhrmtmss@gmail.com</p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-light waves-effect"
                                                                data-bs-dismiss="modal">Close</button>
                                                            {{-- <button type="button" class="btn btn-primary waves-effect waves-light">Save changes</button> --}}
                                                        </div>
                                                    </div><!-- /.modal-content -->
                                                </div><!-- /.modal-dialog -->
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="content content-full content-boxed">
                                    <h2 class="content-heading">
                                        <i class="si si-users me-1"></i> Line Manager
                                    </h2>
                                    <div class="row">
                                        <div class="col-md-6 col-xl-3">
                                            <div class="block text-center block-rounded">
                                                <div class="block-content block-content-full bg-image"
                                                    style="background-image: url('assets/media/photos/photo15.jpg');">
                                                    <img class="img-avatar img-avatar-thumb hoverZoomLink"
                                                        src="{{ asset('upload/staffprofile/10122640.jpg') }}"
                                                        alt="">
                                                </div>
                                                <div
                                                    class="block-content block-content-full block-content-sm bg-body-light">
                                                    <div class="fw-semibold">Md. Tofazzal Hossain</div>
                                                    <div class="fs-sm text-muted">Senior Assistant Director</div>
                                                    <div class="fs-sm text-muted">Service Improvement Cell (SIC)</div>
                                                </div>
                                                <div class="block-content block-content-full">
                                                    <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                                        <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="block text-center block-rounded">
                                                <div class="block-content block-content-full bg-image"
                                                    style="background-image: url('assets/media/photos/photo4.jpg');">
                                                    <img class="img-avatar img-avatar-thumb hoverZoomLink"
                                                        src="{{ asset('upload/staffprofile/10103634.jpg') }}"
                                                        alt="">
                                                </div>
                                                <div
                                                    class="block-content block-content-full block-content-sm bg-body-light">
                                                    <div class="fw-semibold">Md. Humayun Kabir</div>
                                                    <div class="fs-sm text-muted">Senior Assistant Director</div>
                                                    <div class="fs-sm text-muted">Administration</div>
                                                </div>
                                                <div class="block-content block-content-full">
                                                    <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                                        <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="block text-center block-rounded">
                                                <div class="block-content block-content-full bg-image"
                                                    style="background-image: url('assets/media/photos/photo3.jpg');">
                                                    <img class="img-avatar img-avatar-thumb"
                                                        src="{{ asset('upload/staffprofile/10112379.jpg') }}"
                                                        alt="">
                                                </div>
                                                <div
                                                    class="block-content block-content-full block-content-sm bg-body-light">
                                                    <div class="fw-semibold">Md. Abdullah-Al-Farabi</div>
                                                    <div class="fs-sm text-muted">Assistant Director</div>
                                                    <div class="fs-sm text-muted">Human Resource Management</div>
                                                </div>
                                                <div class="block-content block-content-full">
                                                    <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                                        <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="block text-center block-rounded">
                                                <div class="block-content block-content-full bg-image"
                                                    style="background-image: url('assets/media/photos/photo3.jpg');">
                                                    <img class="img-avatar img-avatar-thumb"
                                                        src="{{ asset('upload/staffprofile/10119129.jpg') }}"
                                                        alt="">
                                                </div>
                                                <div
                                                    class="block-content block-content-full block-content-sm bg-body-light">
                                                    <div class="fw-semibold">Shah Shirajul Islam</div>
                                                    <div class="fs-sm text-muted">Assistant Director</div>
                                                    <div class="fs-sm text-muted">Human Resource Management</div>
                                                </div>
                                                <div class="block-content block-content-full">
                                                    <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                                        <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="block text-center block-rounded">
                                                <div class="block-content block-content-full bg-image"
                                                    style="background-image: url('assets/media/photos/photo3.jpg');">
                                                    <img class="img-avatar img-avatar-thumb"
                                                        src="{{ asset('upload/staffprofile/10110261.jpg') }}"
                                                        alt="">
                                                </div>
                                                <div
                                                    class="block-content block-content-full block-content-sm bg-body-light">
                                                    <div class="fw-semibold">Md. Kaiser Pervez</div>
                                                    <div class="fs-sm text-muted">Assistant Director</div>
                                                    <div class="fs-sm text-muted">Human Resource Management</div>
                                                </div>
                                                <div class="block-content block-content-full">
                                                    <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                                        <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-3">
                                            <div class="block text-center block-rounded">
                                                <div class="block-content block-content-full bg-image"
                                                    style="background-image: url('assets/media/photos/photo3.jpg');">
                                                    <img class="img-avatar img-avatar-thumb"
                                                        src="{{ asset('upload/staffprofile/10127266.jpg') }}"
                                                        alt="">
                                                </div>
                                                <div
                                                    class="block-content block-content-full block-content-sm bg-body-light">
                                                    <div class="fw-semibold">Khandakar Farhan Ahmad</div>
                                                    <div class="fs-sm text-muted">Assistant Director & Coordinator
                                                        (Field HRO)</div>
                                                    <div class="fs-sm text-muted">Human Resource Management</div>
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
                                {{-- <div class="content content-full content-boxed">
                          <h2 class="content-heading">
                            <i class="si si-users me-1"></i> Sub-Line Manager
                          </h2>
                          <div class="row">
                            <div class="col-md-6 col-xl-3">
                              <div class="block text-center block-rounded">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo15.jpg');">
                                  <img class="img-avatar img-avatar-thumb hoverZoomLink" src="{{ asset('upload/staffprofile/10122640.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Md. Tofazzal Hossain</div>
                                  <div class="fs-sm text-muted">Senior Assistant Director</div>
                                  <div class="fs-sm text-muted">Service Improvement Cell (SIC)</div>
                                </div>
                                <div class="block-content block-content-full">
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                              <div class="block text-center block-rounded">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo4.jpg');">
                                  <img class="img-avatar img-avatar-thumb hoverZoomLink" src="{{ asset('upload/staffprofile/10103634.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Md. Humayun Kabir</div>
                                  <div class="fs-sm text-muted">Senior Assistant Director</div>
                                  <div class="fs-sm text-muted">Administration</div>
                                </div>
                                <div class="block-content block-content-full">
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                              <div class="block text-center block-rounded">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo3.jpg');">
                                  <img class="img-avatar img-avatar-thumb" src="{{ asset('upload/staffprofile/10112379.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Md. Abdullah-Al-Farabi</div>
                                  <div class="fs-sm text-muted">Assistant Director</div>
                                  <div class="fs-sm text-muted">Human Resource Management</div>
                                </div>
                                <div class="block-content block-content-full">
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                              <div class="block text-center block-rounded">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo3.jpg');">
                                  <img class="img-avatar img-avatar-thumb" src="{{ asset('upload/staffprofile/10119129.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Shah Shirajul Islam</div>
                                  <div class="fs-sm text-muted">Assistant Director</div>
                                  <div class="fs-sm text-muted">Human Resource Management</div>
                                </div>
                                <div class="block-content block-content-full">
                                  <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-user-circle text-muted me-1"></i> Profile
                                  </a>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                              <div class="block text-center block-rounded">
                                <div class="block-content block-content-full bg-image" style="background-image: url('assets/media/photos/photo3.jpg');">
                                  <img class="img-avatar img-avatar-thumb" src="{{ asset('upload/staffprofile/10127266.jpg') }}" alt="">
                                </div>
                                <div class="block-content block-content-full block-content-sm bg-body-light">
                                  <div class="fw-semibold">Khandakar Farhan Ahmad</div>
                                  <div class="fs-sm text-muted">Assistant Director & Coordinator (Field HRO)</div>
                                  <div class="fs-sm text-muted">Human Resource Management</div>
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
                        </div> --}}



                            </div><!-- end card -->
                        </div><!-- end card -->
                    </div>
                    <!-- end col -->

                </div>
                <!-- end row -->
            </div>



        </div> <!-- container-fluid -->
    @endsection
