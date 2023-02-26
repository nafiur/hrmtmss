@extends('admin.admin_master')
@section('admin')
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 @section('title'){{'Edit Gender'}} @endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
              <li class="breadcrumb-item">
                <a href="/dashboard">Home</a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">Edit Form Information</li>
            </ol>
          </nav>
        
        <div class="block block-rounded">
            <div class="block-header block-header-default">
              <h3 class="block-title">Edit Form Information</h3>
              <a href="{{ route('download.all') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fa fa-undo"> Back </i></a> <br>  <br>
            </div>
            <div class="block-content">    
              <!-- Label on top Layout -->
              {{-- <h2 class="content-heading">Labels on top</h2> --}}
              <div class="row">
                <div class="col-lg-4">
                  <p class="text-muted">
                    Edit Form Information
                  </p>
                </div>
                <div class="col-lg-8 col-xl-6">
                  <!-- Form Labels on top - Default Style -->
                  <form class="mb-5" action="{{ route('download.update') }}" id="myform" enctype="multipart/form-data" method="POST">
                    @csrf
                    <input type="hidden" name="id" value="{{ $downloads->id }}">
                    <div class="mb-4">
                      <label class="form-label" for="example-text-input">Form Name</label>
                      <input type="text" class="form-control" id="example-text-input" name="form_name" required="" value="{{ $downloads->form_name }}">
                    </div>
                    <div class="mb-4">
                      <label for="firstname" class="form-label">File Type </label>
                        <select name="form_type" class="form-select" id="example-select">
                                <option selected disabled >Select Group  </option>         
                                <option value="pdf"{{ $downloads->form_type == 'pdf' ? 'selected' : '' }}>PDF</option>   
                                <option value="doc"{{ $downloads->form_type == 'doc' ? 'selected' : '' }}>Word</option>   
                                <option value="xls"{{ $downloads->form_type == 'xls' ? 'selected' : '' }}>Excel</option>   
                                <option value="ppt"{{ $downloads->form_type == 'ppt' ? 'selected' : '' }}>Power Point</option>   
                                <option value="image"{{ $downloads->form_type == 'image' ? 'selected' : '' }}>Image</option>   
                        </select>  
                    </div>
                    <div class="mb-4">
                    <label class="form-label" for="example-file-input">Upload File</label>
                    {{-- <input class="form-control" type="file" name="form_file" id="example-file-input" value="{{ $downloads->form_file }}" required=""> --}}
                    <input name="form_file" class="form-control" value="{{ $downloads->form_file}}" type="text">
                    </div>
                    <div class="mb-4">
                      {{-- <button type="submit" style="float:right" class="mb-3 btn btn-primary">Save</button> --}}
                      <input type="submit" style="float:right;" class="mb-4 btn btn-info waves-effect waves-light" value="Save">
                    </div>                    
                  </form>
                  <!-- END Form Labels on top - Default Style -->
                </div>
              </div>
              <!-- END Label on top Layout -->    
            </div><!--block-content-->
        </div><!-- END block --> 
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function (){
        $('#myForm').validate({
            rules: {
                name: {
                    required : true,
                }, 

            },
            messages :{
                name: {
                    required : 'Please Enter Gender Name',
                },
                
            },
            errorElement : 'span', 
            errorPlacement: function (error,element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight : function(element, errorClass, validClass){
                $(element).addClass('is-invalid');
            },
            unhighlight : function(element, errorClass, validClass){
                $(element).removeClass('is-invalid');
            },
        });
    });
    
</script>


 
@endsection 
