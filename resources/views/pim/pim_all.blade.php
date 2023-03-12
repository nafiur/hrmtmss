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

        <div class="row">
            {{-- @if (Auth::user()->can('newemployee.module')) --}}
                    <div class="col-6 col-md-4 col-xl-2">
                        <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary"
                            href="{{ route('all.basicinfo') }}">
                            {{-- <div class="ribbon-box">2</div> --}}
                            <div class="block-content">
                                <p class="my-2">
                                    <i class=" fas fa-info-circle fa-2x text-muted"></i>
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
                                    <i class=" fas fa-user-friends  fa-2x text-muted"></i>
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
                                    <i class="fas fa-users fa-2x text-muted"></i>
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
                                    <i class="fas fa-user-graduate fa-2x text-muted"></i>
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
                                    <i class="fas fa-book fa-2x text-muted"></i>
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
                                    <i class="fas fa-passport fa-2x text-muted"></i>
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
                                    <i class="fas fa-users fa-2x text-muted"></i>
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
                                    <i class="fas fa-baby fa-2x text-muted"></i>
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
                                    <i class="fas fa-crown fa-2x text-muted"></i>
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
                                    <i class="fas fa-toolbox fa-2x text-muted"></i>
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
                                    <i class="fas fa-clipboard-list fa-2x text-muted"></i>
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
                                    <i class="fas fa-first-aid fa-2x text-muted"></i>
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
                                    <i class=" fas fa-file-signature fa-2x text-muted"></i>
                                </p>
                                <p class="fw-semibold">PIM Report</p>
                            </div>
                        </a>
                    </div>
                {{-- @endif --}}
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
