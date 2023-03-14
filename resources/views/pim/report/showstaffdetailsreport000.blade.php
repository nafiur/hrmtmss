@extends('admin.admin_master')
@section('admin')
@section('title')
    {{ 'PIM All' }}
@endsection
<style>
        table {
                border-collapse: collapse;
                width: 100%;
            }

        th,
        td {
            text-align: left;
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }

        h4 {
            color: #007ee5;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2
        }
    </style>
    <style>
        .flipX video::-webkit-media-text-track-display {
            transform: matrix(-1, 0, 0, 1, 0, 0) !important;
        }

        .flipXY video::-webkit-media-text-track-display {
            transform: matrix(-1, 0, 0, -1, 0, 0) !important;
        }

        .flipXYX video::-webkit-media-text-track-display {
            transform: matrix(1, 0, 0, -1, 0, 0) !important;
        }
    </style>
    <style>
        @keyframes blinkWarning {
            0% {
                color: red;
            }

            100% {
                color: white;
            }
        }

        @-webkit-keyframes blinkWarning {
            0% {
                color: red;
            }

            100% {
                color: white;
            }
        }

        .blinkWarning {
            -webkit-animation: blinkWarning 1s linear infinite;
            -moz-animation: blinkWarning 1s linear infinite;
            animation: blinkWarning 1s linear infinite;
        }
    </style>
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
                <a href="{{ route('add.experience') }}" class="btn btn-dark btn-rounded waves-effect waves-light"
                    style="float:right;"><i class="fa fa-plus-circle"> Add New Experience </i></a> <br> <br>
            </div>
            <div class="mb-5 block-content">
                <table>
                    <tbody>
                        <tr>
                            <th colspan="4" bgcolor="#AAC6FF">Personal Basic Information</th>
                        </tr>
                        <tr>
                            <th>Employee ID</th>
                            <td>{{ $basicinfo->id }}</td>
                            <th rowspan="3">Picture</th>
                            <td rowspan="3">
                            <img class="rounded-circle avatar-xl"
                                src="{{ !empty($basicinfo->employee_photo) ? url('upload/admin_images/' . $adminData->profile_image) : url('upload/no_image.jpg') }}"
                                alt="Card image cap" width="90"
                                    height="110">
                                {{-- <img src="./Detils Staff Report_files/10118707.jpg" alt="10118707" width="90"
                                    height="110" class="hoverZoomLink"> --}}
                            </td>
                        </tr>
                        <tr>
                            <th>Name</th>
                            <td>{{ $basicinfo->name }}</td>
                        </tr>
                        <tr>
                            <th>Father Name</th>
                            <td>{{ $basicinfo->father_name }}</td>
                        </tr>
                        <tr>
                            <th>Mother Name</th>
                            <td>{{ $basicinfo->mother_name }}</td>
                            <th>Maritial Status</th>
                            <td>{{ $basicinfo->marital_status->name ?? '' }}</td>
                        </tr>
                        <tr>
                            <th>Husband Name</th>
                            <td>N/A</td>
                            <th>Gender</th>
                            <td>{{ $basicinfo->gender->name ?? '' }}</td>
                        </tr>
                        <tr>
                            <th>E-Mail</th>
                            <td>{{ $basicinfo->email }}</td>
                            <th>Bank Name</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Mobile</th>
                            <td>{{ $basicinfo->mobile }}</td>
                            <th>Bank Branch</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Phone</th>
                            <td>N/A</td>
                            <th>Bank Address</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Sector</th>
                            <td>{{ $basicinfo->sector }}</td>
                            <th>Account#</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Domain</th>
                            <td>{{ $basicinfo->domain->name ?? '' }} </td>
                            <th>Smart Card No</th>
                            <td>{{ $basicinfo->smartcard }}</td>
                        </tr>
                        <tr>
                            <th>Department</th>
                            <td></td>
                            <th>National ID</th>
                            <td>{{ $basicinfo->nid }}</td>
                        </tr>
                        <tr>
                            <th>Designation</th>
                            <td>{{ $basicinfo->designation->name ?? '' }} </td>
                            <th>Passport</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Grade</th>
                            <td>{{ $basicinfo->designation->grade ?? '' }} </td>
                            <th>TIN#</th>
                            <td></td>

                        </tr>
                        <tr>
                            <th>Project</th>
                            <td>N/A</td>
                            <th>Issue Date</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Zone</th>
                            <td>FO</td>
                            <th>Type of Passport</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Area</th>
                            <td>N/A</td>
                            <th>Visited Country</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Branch</th>
                            <td>N/A</td>
                            <th>Driving Licence#</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Region</th>
                            <td>N/A</td>
                            <th>Type of Driving Licence</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Appointment Lette No</th>
                            <td></td>
                            <th>Appointment Letter Issue Date</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>1st Date of Joining in TMSS</th>
                            <td>{{ $basicinfo->joiningdate }}</td>
                            <th>Initial Job Type</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Date of Confirmation</th>
                            <td></td>
                            <th>Total Sevice Length</th>
                            @php
                                $initialjoiningdate = $basicinfo->joiningdate;
                                $now = \Carbon\Carbon::now();
                                $joindate = \Carbon\Carbon::parse($initialjoiningdate);
                                $totalservicelength = $joindate->diff($now)->format('%y years, %m months, and %d days');
                            @endphp
                            <td>
                                {{ $totalservicelength }}
                            </td>
                        </tr>
                        <tr>
                            <th>Joining Date of Present Post</th>
                            <td></td>
                            <th>Ser. Length of Present Post</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Date of Birth</th>
                            <td>{{ $basicinfo->date_of_birth }}</td>
                            <th>Place of Birth</th>
                            <td>{{ $basicinfo->birth_place_district->name ?? '' }}</td>
                        </tr>
                        <tr>
                            <th>Present Age</th>
                            @php
                                $dateofbirth = $basicinfo->date_of_birth;
                                $now = \Carbon\Carbon::now();
                                $agedate = \Carbon\Carbon::parse($dateofbirth);
                                $presentage = $agedate->diff($now)->format('%y years, %m months, and %d days');
                            @endphp
                            <td>
                                {{ $presentage }}
                            </td>
                            <th>Blood Group</th>
                            <td>{{ $basicinfo->blood_groups->name ?? '' }}</td>
                        </tr>
                        <tr>
                            <th>Sex</th>
                            <td>Male</td>
                            <th>Educational Qualification</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Religion</th>
                            <td>Islam</td>
                            <th>Area of Expertise</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Permanent Address</th>
                            <td>Village: {{ $basicinfo->permanent_village }} ,
                                PostOffice: {{ $basicinfo->permanent_village }},
                                Upazilla: {{ $basicinfo->permanent_upazilla->name ?? '' }},
                                District: {{ $basicinfo->permanent_district->name ?? '' }}
                            </td>
                            <th>Job Location</th>
                            <td>Bogra</td>
                        </tr>
                        <tr>
                            <th>Present Address</th>
                            <td>Village: {{ $basicinfo->present_village }} ,
                                PostOffice: {{ $basicinfo->present_village }},
                                Upazilla: {{ $basicinfo->present_upazilla->name ?? '' }},
                                District: {{ $basicinfo->present_district->name ?? '' }}</td>
                            <th>Job Status</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>Type of Employee</th>
                            <td>{{ $basicinfo->employee_type->name ?? '' }}</td>
                            <th>Functional Designation</th>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <br>


                &nbsp;<table>
                    <tbody>
                        <tr>
                            <th colspan="4" bgcolor="#AAC6FF">Guardian Information</th>
                        </tr>
                        @foreach ($guardian as $iteam)
                            <tr>
                                <th>Guardian Name</th>
                                <td>{{ $iteam->guardian_name }}</td>
                                <th>Father Name</th>
                                <td>{{ $iteam->guardian_father_name }}</td>
                            </tr>
                            <tr>
                                <th>Relation</th>
                                <td>{{ $iteam->relation->relation_name }}</td>
                                <th>Mother Name</th>
                                <td>{{ $iteam->guardian_mother_name }}</td>
                            </tr>
                            <tr>
                                <th>Mobile No</th>
                                <td>{{ $iteam->guardian_mobile }}</td>
                                <th>National ID#</th>
                                <td>{{ $iteam->guardian_nid }}</td>
                            </tr>
                            <tr>
                                <th>Phone No</th>
                                <td>{{ $iteam->guardian_phone }}</td>
                                <th>Birth Certificate No</th>
                                <td>{{ $iteam->guardian_name }}</td>
                            </tr>
                            <tr>
                                <th>E-mail</th>
                                <td>{{ $iteam->guardian_email }}</td>
                                <th>Monthly Income</th>
                                <td>{{ $iteam->guardian_monthly_income }}</td>
                            </tr>
                            <tr>
                                <th>Profession</th>
                                <td>{{ $iteam->profession->profession_name }}</td>
                                <th rowspan="4">Picture</th>
                                <td rowspan="4">
                                    {{-- <img src="./Detils Staff Report_files/10118707(1).jpg" alt="10118707" width="90"
                                        height="110"> --}}
                                        <img class="rounded-circle avatar-xl"
                                src="{{ !empty($iteam->guardian_image) ? url('upload/admin_images/' . $adminData->profile_image) : url('upload/no_image.jpg') }}"
                                alt="Card image cap">
                                </td>
                            </tr>
                            <tr>
                                <th>Working Location</th>
                                <td>{{ $iteam->guardian_name }}</td>
                            </tr>
                            <tr>
                                <th>Present Address</th>
                                <td>Village: {{ $iteam->guardian_present_village }} ,
                                    PostOffice: {{ $iteam->guardian_present_village }},
                                    Upazilla: {{ $iteam->guardian_present_upazilla->name ?? '' }},
                                    District: {{ $iteam->guardian_present_district->name ?? '' }}</td>
                            </tr>
                            <tr>
                                <th>Permanent Address</th>
                                <td>Village: {{ $iteam->guardian_permanent_village }} ,
                                    PostOffice: {{ $iteam->guardian_permanent_village }},
                                    Upazilla: {{ $iteam->guardian_permanent_upazilla->name ?? '' }},
                                    District: {{ $iteam->guardian_permanent_district->name ?? '' }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table> <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="11" bgcolor="#AAC6FF">Education Information</th>
                        </tr>
                        <tr>
                            <th>Exam Name</th>
                            <th>Year</th>
                            <th>Subject</th>
                            <th>Group</th>
                            <th>Thesis Topic</th>
                            <th>Institute</th>
                            <th>Board/ University</th>
                            <th>Marks</th>
                            <th>Grade/Class</th>
                            <th>GPA</th>
                            <th>Documents</th>
                        </tr>
                        @foreach ($education as $education)
                            <tr>
                                <td>{{ $education->examname->name }}</td>
                                <td>{{ $education->year->year_name }}</td>
                                <td>{{ $education->edusubject->subject_name }}</td>
                                <td>{{ $education->educationgroup->group_name ?? '' }}</td>
                                <td>{{ $education->thesis_topic }}</td>
                                <td>{{ $education->name_of_institute }}</td>
                                <td>{{ $education->boarduniversity->board_university_name }}</td>
                                <td>{{ $education->total_marks }}</td>
                                <td>{{ $education->gradeclass->grade_class_name }}</td>
                                <td>{{ $education->gpa }}</td>
                                <td>{{ $education->documents }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table><br>


                &nbsp;<table>
                    <tbody>
                        <tr>
                            <th colspan="6" bgcolor="#AAC6FF">Course/Diploma Information</th>
                        </tr>
                        <tr>
                            <th>Title</th>
                            <th>Subject</th>
                            <th>Year</th>
                            <th>Institute</th>
                            <th>Duration</th>
                            <th>Grade</th>
                        </tr>
                        @foreach ($course as $item)
                            <tr>
                                <td>{{ $item->course_name }}</td>
                                <td>{{ $item->course_subject }}</td>
                                <td>{{ $item->course_passing_year }}</td>
                                <td>{{ $item->name_of_institute }}</td>
                                <td>{{ $item->course_duration }}</td>
                                <td>{{ $item->course_grade_class }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="7" bgcolor="#AAC6FF">Training Information</th>
                        </tr>
                        <tr>
                            <th>Name</th>
                            <th>From</th>
                            <th>To</th>
                            <th>Length</th>
                            <th>Duration</th>
                            <th>Venue</th>
                            <th>Country</th>
                        </tr>
                        <tr>
                            <td>General ToT &amp; Facilitation Skill</td>
                            <td>2022-06-18</td>
                            <td>2022-06-22</td>
                            <td></td>
                            <td></td>
                            <td>Momo Inn Hotel &amp; Resort, Bogura</td>
                            <td>Bangladesh</td>
                        </tr>
                    </tbody>
                </table>
                <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="6" bgcolor="#AAC6FF">Experience Information</th>
                        </tr>
                        <tr>
                            <th>Organization</th>
                            <th>Post</th>
                            <th>Job Nature</th>
                            <th>From</th>
                            <th>To</th>
                            <th>Length</th>
                        </tr>
                    </tbody>
                </table>
                <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="8" bgcolor="#AAC6FF">Nominee information</th>
                        </tr>
                        <tr>
                            <th>Name of Nominee</th>
                            <th>Relation</th>
                            <th>%</th>
                            <th>Address</th>
                            <th>Voter ID</th>
                            <th>Mobile</th>
                            <th>Picture</th>
                        </tr>
                        @foreach ($nominee as $key => $item)
                            <tr>
                                <td>{{ $item->nominee_name }}</td>
                                {{-- <td>{{ $item->relation_types->relation_name }}</td> --}}
                                <td>{{ $item->nominee_relation_types->relation_name }}</td>
                                {{-- <td>{{ $item->nominee_relation_types_id }}</td> --}}
                                <td>{{ $item->nominee_percentage }}</td>
                                <td>Village: {{ $item->nominee_permanent_village }},
                                    Postoffice: {{ $item->nominee_permanent_post }},
                                    Upazilla: {{ $item->nominee_upazilla->name }},
                                    District: {{ $item->nominee_district->name }},
                                </td>
                                <td>{{ $item->nominee_nid }}</td>
                                <td>{{ $item->nominee_mobile }}</td>
                                {{-- <td>{{ $nominee->nominee_mobile }} --}}
                                </td>
                                <td>
                                    <img src="./Detils Staff Report_files/12865.jpg" alt="10118707" width="47"
                                        height="52">
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="6" bgcolor="#AAC6FF">Spouse Information</th>
                        </tr>
                        <tr>
                            <th>Name of Spouse</th>
                            <th>Mobile No</th>
                            <th>Email</th>
                            <th>Profession</th>
                            <th>Present Address</th>
                            <th>Permanent Address</th>
                        </tr>
                        @foreach ($spouce as $key => $item)
                            <tr>
                                <td>{{ $item->spouce_name }}</td>
                                <td>{{ $item->mobile }}</td>
                                <td>{{ $item->email }}</td>
                                <td>{{ $item->profession_id }}</td>
                                <td>Village: {{ $item->nominee_permanent_village }},
                                    Postoffice: {{ $item->nominee_permanent_post }},
                                    Upazilla: {{ $item->nominee_permanent_upazilla_id }},
                                    District: {{ $item->nominee_permanent_district_id }},
                                </td>
                                <td>Village: {{ $item->nominee_permanent_village }},
                                    Postoffice: {{ $item->nominee_permanent_post }},
                                    Upazilla: {{ $item->nominee_permanent_upazilla_id }},
                                    District: {{ $item->nominee_permanent_district_id }},
                                </td>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="5" bgcolor="#AAC6FF">Child Information</th>
                        </tr>
                        <tr>
                            <th>Name of Child</th>
                            <th>Gender</th>
                            <th>Birth date</th>
                            <th>Profession</th>
                            <th>Present Address</th>
                        </tr>
                        @foreach ($child as $key => $item)
                            <tr>
                                <td>{{ $item->child_name }}</td>
                                <td>{{ $item->date_of_birth }}</td>
                                {{-- <td>{{ $item->email }}</td> --}}
                                <td>{{ $item->profession_id }}</td>
                                <td>Village: {{ $item->nominee_permanent_village }},
                                    Postoffice: {{ $item->nominee_permanent_post }},
                                    Upazilla: {{ $item->nominee_permanent_upazilla_id }},
                                    District: {{ $item->nominee_permanent_district_id }},
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <br>


                &nbsp;<table>
                    <tbody>
                        <tr>
                            <th colspan="5" bgcolor="#AAC6FF">Brother and Sister Information</th>
                        </tr>
                        <tr>
                            <th>Name</th>
                            <th>Relation</th>
                            <th>Profession</th>
                            <th>Depend</th>
                            <th>Address</th>
                        </tr>
                        @foreach ($fbs as $key => $item)
                            <tr>
                                <td>{{ $item->brother_sister_name }}</td>
                                <td>{{ $item->relation_types_id }}</td>
                                {{-- <td>{{ $item->email }}</td> --}}
                                <td>{{ $item->profession_id }}</td>
                                <td>{{ $item->depend }}</td>
                                <td>Village: {{ $item->nominee_permanent_village }},
                                    Postoffice: {{ $item->nominee_permanent_post }},
                                    Upazilla: {{ $item->nominee_permanent_upazilla_id }},
                                    District: {{ $item->nominee_permanent_district_id }},
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="7" bgcolor="#AAC6FF">Relative in TMSS</th>
                        </tr>
                        <tr>
                            <th>ID</th>
                            <th>Name of Relative</th>
                            <th>Depart.</th>
                            <th>Desg.</th>
                            <th>Location</th>
                            <th>Job Status</th>
                            <th>Relation</th>
                        </tr>
                    </tbody>
                </table>
                <br>


                &nbsp;<table>
                    <tbody>
                        <tr>
                            <th colspan="9" bgcolor="#AAC6FF">Reference Information</th>
                        </tr>
                        <tr>
                            <th>Referance Person</th>
                            <th>Relation</th>
                            <th>profession</th>
                            <th>Organization</th>
                            <th>Working Location</th>
                            <th>Mobile</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Fax</th>
                        </tr>
                    </tbody>
                </table>
                <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="11" bgcolor="#AAC6FF">Posting Information</th>
                        </tr>
                        <tr>
                            <th>Name</th>
                            <th>Designation</th>
                            <th>Domain</th>
                            <th>Project</th>
                            <th>Department</th>
                            <th>Region</th>
                            <th>Zone</th>
                            <th>Area</th>
                            <th>Branch</th>
                            <th>By</th>
                            <th>Order No.</th>
                        </tr>
                    </tbody>
                </table>
                <br>


                &nbsp; <table>
                    <tbody>
                        <tr>
                            <th colspan="10" bgcolor="#AAC6FF">Transfer Information</th>
                        </tr>
                        <tr>
                            <th>Transfer Order No</th>
                            <th>Date</th>
                            <th>Present Domain</th>
                            <th>Present Project.</th>
                            <th>Present Dept.</th>
                            <th>Present Region</th>
                            <th>Present Zone</th>
                            <th>Present Area</th>
                            <th>Present Branch</th>
                            <th>Notice</th>
                        </tr>
                        <tr>
                            <td>TMSS/HR-M&amp;Admin/Transfer Order/2017-375</td>
                            <td>2017-02-11</td>
                            <td>HRM&amp;A</td>
                            <td>N/A</td>
                            <td>HR-M</td>
                            <td>N/A</td>
                            <td>FO</td>
                            <td>N/A</td>
                            <td>N/A</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>TMSS/ES/Action Order/2016-517</td>
                            <td>2016-04-30</td>
                            <td>ICT</td>
                            <td>N/A</td>
                            <td>ICT</td>
                            <td>N/A</td>
                            <td>FO</td>
                            <td>N/A</td>
                            <td>N/A</td>
                            <td></td>
                        </tr>
                    </tbody>
                </table> <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="5" bgcolor="#AAC6FF">Project Information</th>
                        </tr>
                        <tr>
                            <th>Name</th>
                            <th>Designation</th>
                            <th>Joining Date</th>
                            <th>Duration</th>
                            <th>Location</th>
                        </tr>
                    </tbody>
                </table>
                <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="7" bgcolor="#AAC6FF">Membership/Donor Information</th>
                        </tr>
                        <tr>
                            <th>Type</th>
                            <th>Year</th>
                            <th>Date</th>
                            <th>Duration</th>
                            <th>Amount</th>
                            <th>Arce</th>
                            <th>Blood Bag</th>
                        </tr>
                    </tbody>
                </table>
                <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="8" bgcolor="#AAC6FF">Quarter/Dormitory/Hostel</th>
                        </tr>
                        <tr>
                            <th>Type</th>
                            <th>QDH Name </th>
                            <th>Location</th>
                            <th>Rent</th>
                            <th>Issue Date</th>
                            <th>Cancel Date</th>
                            <th>Duration</th>
                            <th>Status</th>
                        </tr>
                    </tbody>
                </table><br>


                &nbsp;<table>
                    <tbody>
                        <tr>
                            <th colspan="9" bgcolor="#AAC6FF">Motor Cycle</th>
                        </tr>
                        <tr>
                            <th>Date</th>
                            <th>Company</th>
                            <th>Model</th>
                            <th>CC</th>
                            <th>Engine No</th>
                            <th>Chassis No</th>
                            <th>Total Price</th>
                            <th>Register No</th>
                            <th>Status</th>
                        </tr>
                    </tbody>
                </table> <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="5" bgcolor="#AAC6FF">Financial Objection</th>
                        </tr>
                        <tr>
                            <th>Type</th>
                            <th>Amount</th>
                            <th>Memo No.</th>
                            <th>Date</th>
                            <th>By</th>
                        </tr>
                    </tbody>
                </table>
                <br>


                &nbsp;&nbsp;<table>
                    <tbody>
                        <tr>
                            <th colspan="4" bgcolor="#AAC6FF">Increment</th>
                        </tr>
                        <tr>
                            <th>Increment Type</th>
                            <th>Number of Increment</th>
                            <th>Date</th>
                            <th>Designation</th>
                        </tr>
                    </tbody>
                </table> <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="5" bgcolor="#AAC6FF">Promotion</th>
                        </tr>
                        <tr>
                            <th>Type of Promotion</th>
                            <th>Date</th>
                            <th>Past Designation</th>
                            <th>Present Designation</th>
                            <th>Level Crossed</th>
                        </tr>
                    </tbody>
                </table> <br>

                <table>
                    <tbody>
                        <tr>
                            <th colspan="5" bgcolor="#AAC6FF">Demotion Information</th>
                        </tr>
                        <tr>
                            <th>Reason</th>
                            <th>Date</th>
                            <th>Past Desg.</th>
                            <th>Present Desg.</th>
                            <th>Grade Down</th>
                        </tr>
                    </tbody>
                </table>
                <br>


                &nbsp;<table>
                    <tbody>
                        <tr>
                            <th colspan="9" bgcolor="#AAC6FF">Action Management</th>
                        </tr>
                        <tr>
                            <th>Subject</th>
                            <th>Category</th>
                            <th>Issued By</th>
                            <th>Memo No</th>
                            <th>Description</th>
                            <th>Issue Date</th>
                            <th>Effect Date</th>
                            <th>Type</th>
                            <th>Amount</th>
                        </tr>
                        <tr>
                            <td>Office order</td>
                            <td>Administrative Action</td>
                            <td>HR-M &amp; Admin</td>
                            <td>TMSS/HR-M&amp;Admin/Permanent Letter/2015-1154</td>
                            <td>Permanent after probation </td>
                            <td>2015-06-30</td>
                            <td>2015-01-01</td>
                            <td>Positive</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Imposition of OC</td>
                            <td>ED Action</td>
                            <td>ED</td>
                            <td>TMSS/ES/Note-1220</td>
                            <td>Imposition of OC </td>
                            <td>2015-02-02</td>
                            <td>0000-00-00</td>
                            <td>Negative</td>
                            <td>5000/-</td>
                        </tr>
                        <tr>
                            <td>Inform Letter</td>
                            <td>Departmental Action</td>
                            <td>Department</td>
                            <td>TMSS/HO/ICT/2016-1913</td>
                            <td>Focal Person </td>
                            <td>2016-06-06</td>
                            <td>0000-00-00</td>
                            <td>Positive</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Office order</td>
                            <td>Departmental Action</td>
                            <td>Department</td>
                            <td>TMSS/HO/ICT/2017-184</td>
                            <td>Transfer of Responsibility </td>
                            <td>2017-01-11</td>
                            <td>2017-01-12</td>
                            <td>Positive</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Grant from BF</td>
                            <td>Administrative Action</td>
                            <td>HR-M &amp; Admin</td>
                            <td>TMSS/HR-M &amp; Admin/BF/2021-2279(39)</td>
                            <td>Receiving grants from welfare funds</td>
                            <td>2021-08-19</td>
                            <td>2021-09-07</td>
                            <td>N/A</td>
                            <td>30000/-</td>
                        </tr>
                        <tr>
                            <td>COVID-19 Vaccination Certificate</td>
                            <td>Certificate</td>
                            <td>Others</td>
                            <td>BD108529313513</td>
                            <td>1st dose: 27-09-2021
                                2nd dose: 25-10-2021</td>
                            <td>2021-10-25</td>
                            <td>0000-00-00</td>
                            <td>N/A</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Special Award (SA)</td>
                            <td>Award</td>
                            <td>Others</td>
                            <td></td>
                            <td>Special Award</td>
                            <td>2022-12-28</td>
                            <td>0000-00-00</td>
                            <td>Positive</td>
                            <td>25000/-</td>
                        </tr>
                    </tbody>
                </table><br>


                &nbsp;<table>
                    <tbody>
                        <tr>
                            <th colspan="7" bgcolor="#AAC6FF">APR </th>
                        </tr>
                        <tr>
                            <th>Year</th>
                            <th>Recomondation</th>
                            <th>Marks</th>
                            <th>Status</th>
                            <th>Result</th>
                            <th>Past Designation</th>
                            <th>Present Designation</th>
                        </tr>
                        <tr>
                            <td>2021</td>
                            <td></td>
                            <td>87</td>
                            <td>Everything Ok</td>
                            <td>Both Increment and Promotion</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>2019</td>
                            <td></td>
                            <td>85</td>
                            <td>Everything Ok</td>
                            <td>Both Are Not</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>2018</td>
                            <td></td>
                            <td>86</td>
                            <td>Everything Ok</td>
                            <td>Both Are Not</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>2017</td>
                            <td></td>
                            <td>85</td>
                            <td>Everything Ok</td>
                            <td>Increment</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>2016</td>
                            <td></td>
                            <td>84</td>
                            <td>Everything Ok</td>
                            <td>Increment</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>2015</td>
                            <td></td>
                            <td>85</td>
                            <td>Everything Ok</td>
                            <td>Increment</td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table><br>


                &nbsp;<table>
                    <tbody>
                        <tr>
                            <th colspan="13" bgcolor="#AAC6FF">Action Report</th>
                        </tr>
                        <tr>
                            <th>Subject</th>
                            <th>Category</th>
                            <th>Issued By</th>
                            <th>Memo No</th>
                            <th>Description</th>
                            <th>Issue Date</th>
                            <th>Effect Date</th>
                            <th>Type</th>
                            <th>Amount</th>
                            <th>Mitigate Date</th>
                            <th>Evidance</th>
                            <th>Status</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td>Office order</td>
                            <td>Administrative Action</td>
                            <td>HR-M &amp; Admin</td>
                            <td>TMSS/HR-M&amp;Admin/Permanent Letter/2015-1154</td>
                            <td>Permanent after probation </td>
                            <td>2015-06-30</td>
                            <td>2015-01-01</td>
                            <td>Positive</td>
                            <td></td>
                            <td>0000-00-00</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Imposition of OC</td>
                            <td>ED Action</td>
                            <td>ED</td>
                            <td>TMSS/ES/Note-1220</td>
                            <td>Imposition of OC </td>
                            <td>2015-02-02</td>
                            <td>0000-00-00</td>
                            <td>Negative</td>
                            <td>5000/-</td>
                            <td>2015-08-31</td>
                            <td>Yes</td>
                            <td>Yes</td>
                            <td>Deducted From Salary </td>
                        </tr>
                        <tr>
                            <td>Inform Letter</td>
                            <td>Departmental Action</td>
                            <td>Department</td>
                            <td>TMSS/HO/ICT/2016-1913</td>
                            <td>Focal Person </td>
                            <td>2016-06-06</td>
                            <td>0000-00-00</td>
                            <td>Positive</td>
                            <td></td>
                            <td>0000-00-00</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Office order</td>
                            <td>Departmental Action</td>
                            <td>Department</td>
                            <td>TMSS/HO/ICT/2017-184</td>
                            <td>Transfer of Responsibility </td>
                            <td>2017-01-11</td>
                            <td>2017-01-12</td>
                            <td>Positive</td>
                            <td></td>
                            <td>0000-00-00</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Grant from BF</td>
                            <td>Administrative Action</td>
                            <td>HR-M &amp; Admin</td>
                            <td>TMSS/HR-M &amp; Admin/BF/2021-2279(39)</td>
                            <td>Receiving grants from welfare funds</td>
                            <td>2021-08-19</td>
                            <td>2021-09-07</td>
                            <td>N/A</td>
                            <td>30000/-</td>
                            <td>0000-00-00</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>COVID-19 Vaccination Certificate</td>
                            <td>Certificate</td>
                            <td>Others</td>
                            <td>BD108529313513</td>
                            <td>1st dose: 27-09-2021
                                2nd dose: 25-10-2021</td>
                            <td>2021-10-25</td>
                            <td>0000-00-00</td>
                            <td>N/A</td>
                            <td></td>
                            <td>0000-00-00</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Special Award (SA)</td>
                            <td>Award</td>
                            <td>Others</td>
                            <td></td>
                            <td>Special Award</td>
                            <td>2022-12-28</td>
                            <td>0000-00-00</td>
                            <td>Positive</td>
                            <td>25000/-</td>
                            <td>0000-00-00</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <br>


                &nbsp;<table>
                    <tbody>
                        <tr>
                            <th colspan="6" bgcolor="#AAC6FF">Personal File Check List</th>
                        </tr>
                        <tr>
                            <th>File/Document</th>
                            <th>Status</th>
                            <th>File/Document</th>
                            <th>Status</th>
                            <th>File/Document</th>
                            <th>Status</th>
                        </tr>
                        <tr>
                            <td>Personal File Status</td>
                            <td>Complete</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>CV</td>
                            <td>Yes</td>
                            <td>Guardian's Affidavit</td>
                            <td>Yes</td>
                            <td>Security Money Rceipt</td>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <td>Appointment Letter</td>
                            <td>Yes</td>
                            <td>Guardian Certify Letter</td>
                            <td>Yes</td>
                            <td>Received Aya Allowance</td>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <td>Joining Letter</td>
                            <td>Yes</td>
                            <td>Guardian's Photo</td>
                            <td>Yes</td>
                            <td>Posting Letter</td>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <td>Employee's Affidavit</td>
                            <td>Yes</td>
                            <td>Medical Certificate</td>
                            <td>Yes</td>
                            <td>Clearance Certificate</td>
                            <td>No</td>
                        </tr>
                        <tr>
                            <td>Nominee</td>
                            <td>Yes</td>
                            <td>Nominee's Photo</td>
                            <td>Yes</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Certificate Received</td>
                            <td></td>
                            <td>Employee Varification Form</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div> <!-- end col -->
</div> <!-- end row -->
</div> <!-- container-fluid -->
</div>
@endsection
