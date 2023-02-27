@extends('admin.admin_master')
@section('admin')
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 @section('title'){{'Employee Details Information'}} @endsection
<div class="page-content">
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
              <li class="breadcrumb-item">
                <a href="javascript:void(0)">Home</a>
              </li>
              <li class="breadcrumb-item active" aria-current="page">Employee Details Information</li>
            </ol>
          </nav>
        <div class="block block-rounded">
            <div class="block-header block-header-default">
              <h3 class="block-title">Employee Details Information</h3>
              <a href="{{ route('newemployee.all') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fa fa-undo"> Back </i></a> <br>  <br>
            </div>
            <div class="block-content">
              <!-- Label on top Layout -->
              {{-- <h2 class="content-heading">Labels on top</h2> --}}
              <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="mb-3 row">
                                <label for="example-text-input" class="col-2 col-form-label">Employee ID : </label>
                                <div class="col-sm-10">
                                    <label for="example-text-input" class="col-2 col-form-label">{{ $newemployee->id }}</label>
                                </div>
                                </div>

                               <div class="col-9">
                                        <div class="table-responsive">
                                            <table class="table mb-0">

                                                {{-- <thead class="table-light">
                                                    <tr>
                                                        <th>First Name</th>
                                                        <th>Last Name</th>
                                                    </tr>
                                                </thead> --}}
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">Employee ID :</th>
                                                        <td>{{ $newemployee->id }}</td>
                                                    </tr>
                                                    <tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- end col -->
            <!-- END Label on top Layout -->
            </div><!--block-content-->
        </div><!-- END block -->
                        </div>
                    </div>
                </div> <!-- end col -->
            </div>
    </div>
</div>
</div>
</div>
</div>
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
                    required : 'Please Enter Educational Qualification Name',
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
