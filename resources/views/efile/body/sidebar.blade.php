<nav id="sidebar" aria-label="Main Navigation">
    <!-- Side Header -->
    <div class="bg-header-dark">
      <div class="content-header bg-white-5">
        <!-- Logo -->
        {{-- <a class="fw-semibold text-white tracking-wide" href="index.html">
          <span class="smini-visible">
            D<span class="opacity-75">x</span>
          </span>
          <span class="smini-hidden">
            e-File</span>
            <span class="fw-normal">Management</span>
          </span>
        </a> --}}
        <a class="fw-semibold text-white tracking-wide" href="index.html">
          <span class="smini-hidden"><img src="{{ asset('backend/assets/images/hrm-light.png') }}" alt="logo-sm-light" height="40"></span>
        </a>
        
        <!-- END Logo -->

        <!-- Options -->
        <div>
          <!-- Extra Settings -->
          <a class="btn btn-sm btn-alt-secondary" href="javascript:void(0)">
            <i class="fa fa-cog"></i>
          </a>
          <!-- END Extra Settings -->

          <!-- Close Sidebar, Visible only on mobile screens -->
          <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
          {{-- <button type="button" class="btn btn-sm btn-alt-secondary d-lg-none" data-toggle="layout" data-action="sidebar_close">
            <i class="fa fa-times-circle"></i>
          </button> --}}
          <!-- END Close Sidebar -->
        </div>
        <!-- END Options -->
      </div>
    </div>
    <!-- END Side Header -->

    <!-- Sidebar Scrolling -->
    <div class="js-sidebar-scroll">
      <!-- Side Actions -->
      <div class="content-side smini-hide">
        <a class="btn btn-alt-success w-100" href="/dashboard">
          <i class="fa fa-arrow-rotate-left me-1"></i> Back to Dashboard
        </a>
      </div>
      <div class="content-side smini-hide">
        <a class="btn btn-alt-success w-100" href="javascript:void(0)">
          <i class="fa fa-plus me-1"></i> Add New
        </a>
      </div>
      <!-- END Side Actions -->

      <!-- Side Navigation -->
      <div class="content-side">
        <ul class="nav-main">
          <li class="nav-main-item">
            <a class="nav-main-link active" href="db_file_hosting.html">
              <i class="nav-main-link-icon fa fa-rocket"></i>
              <span class="nav-main-link-name">All Files</span>
            </a>
          </li>
          <li class="nav-main-heading">Files</li>
          <li class="nav-main-item">
            <a class="nav-main-link" href="">
              <i class="nav-main-link-icon fa fa-file-word"></i>
              <span class="nav-main-link-name">Documents</span>
              <span class="nav-main-link-badge badge rounded-pill bg-secondary">19</span>
            </a>
          </li>
          <li class="nav-main-item">
            <a class="nav-main-link" href="">
              <i class="nav-main-link-icon fa fa-file-image"></i>
              <span class="nav-main-link-name">Photos</span>
              <span class="nav-main-link-badge badge rounded-pill bg-secondary">45</span>
            </a>
          </li>
          <li class="nav-main-item">
            <a class="nav-main-link" href="">
              <i class="nav-main-link-icon fa fa-file-video"></i>
              <span class="nav-main-link-name">Videos</span>
              <span class="nav-main-link-badge badge rounded-pill bg-secondary">65</span>
            </a>
          </li>
          <li class="nav-main-item">
            <a class="nav-main-link" href="">
              <i class="nav-main-link-icon fa fa-file-audio"></i>
              <span class="nav-main-link-name">Audio</span>
              <span class="nav-main-link-badge badge rounded-pill bg-secondary">28</span>
            </a>
          </li>
          <li class="nav-main-heading">Tags</li>
          <li class="nav-main-item">
            <a class="nav-main-link" href="">
              <i class="nav-main-link-icon fa fa-tag text-danger"></i>
              <span class="nav-main-link-name">Work</span>
              <span class="nav-main-link-badge badge rounded-pill bg-danger">98</span>
            </a>
          </li>
          <li class="nav-main-item">
            <a class="nav-main-link" href="">
              <i class="nav-main-link-icon fa fa-tag text-success"></i>
              <span class="nav-main-link-name">Personal</span>
              <span class="nav-main-link-badge badge rounded-pill bg-success">34</span>
            </a>
          </li>
          <li class="nav-main-item">
            <a class="nav-main-link" href="">
              <i class="nav-main-link-icon fa fa-tag text-info"></i>
              <span class="nav-main-link-name">Project X</span>
              <span class="nav-main-link-badge badge rounded-pill bg-info">56</span>
            </a>
          </li>
          <li class="nav-main-item">
            <a class="nav-main-link" href="">
              <i class="nav-main-link-icon fa fa-tag text-warning"></i>
              <span class="nav-main-link-name">Trip</span>
              <span class="nav-main-link-badge badge rounded-pill bg-warning">10</span>
            </a>
          </li>
          <li class="nav-main-item">
            <a class="nav-main-link" href="">
              <i class="nav-main-link-icon fa fa-plus text-muted"></i>
              <span class="nav-main-link-name">Add New Tag</span>
            </a>
          </li>
        </ul>
      </div>
      <!-- END Side Navigation -->
    </div>
    <!-- END Sidebar Scrolling -->
  </nav>
  <!-- END Sidebar -->