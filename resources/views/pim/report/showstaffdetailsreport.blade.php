<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Detils Staff Report</title>
    <link rel="stylesheet" href="{{ asset('backend/assets/report.css') }}">
    <script src="{{ asset('backend/assets/report.js') }}"></script>

    <style>
        /*table {
                border-collapse: collapse;
                width: 100%;
            }*/
        avatar-xl {
            height: 7.5rem;
            width: 7.5rem;
        }

        rounded-circle {
            border-radius: 50% !important;
        }

        th,
        td {
            text-align: left;
            padding: 8px;
            /* border-bottom: 1px solid #ddd;*/
        }

        h4 {
            color: #007ee5;
        }

        tr:nth-(even) {
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
</head>

<body>
    {{-- <div class="print"> <button onclick="printDiv(&#39;print&#39;)" style="margin:0 auto;">Print</button> </div> --}}
    <div id="print">
        <div class="header">
            <h1>Employee Details Information</h1>
            {{-- <h2>Deatails Staff Advance Report</h2> --}}

        </div>
        {{-- <div class="date" align="right">Reporting Time: --}}
        {{-- <script type="text/javascript">

var currentDate = new Date();
var day = currentDate.getDate();
var month = currentDate.getMonth() + 1;
var year = currentDate.getFullYear();
document.write(day + "/" + month + "/" + year + " ");
currentDate = currentDate.toLocaleString('en-US', { hour: 'numeric',minute:'numeric', hour12: true });
document.write(currentDate);

</script>4/3/2023 6:43 AM --}}
        {{-- </div> --}}

        <table>
            <tbody>
                <tr>
                    <th colspan="4" bgcolor="#84dc86">Personal Basic Information</th>
                </tr>
                @foreach ($basicinfo as $key => $iteam)
                    <tr>
                        <th>Employee ID</th>
                        <td>{{ $iteam->id }}</td>
                        <th rowspan="3">Picture</th>
                        <td rowspan="3">
                            <img class="rounded-circle avatar-xl"
                                src="{{ !empty($basicinfo->employee_photo) ? url('upload/staffprofile/' . $basicinfo->employee_photo) : url('upload/no_image.jpg')}}"
                                alt="Card image cap" width="100px">
                        </td>
                    </tr>
                    <tr>
                        <th>Name</th>
                        <td>{{ $iteam->name }}</td>
                    </tr>
                    <tr>
                        <th>Father Name</th>
                        <td>{{ $iteam->father_name }}</td>
                    </tr>
                    <tr>
                        <th>Mother Name</th>
                        <td>{{ $iteam->mother_name }}</td>
                        <th>Maritial Status</th>
                        <td>{{ $iteam->marital_status->name ?? '' }}</td>
                    </tr>
                    <tr>
                        <th>Husband Name</th>
                        <td>N/A</td>
                        <th>Gender</th>
                        <td>{{ $iteam->gender->name ?? '' }}</td>
                    </tr>
                    <tr>
                        <th>E-Mail</th>
                        <td>{{ $iteam->email }}</td>
                        <th>Bank Name</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>Mobile</th>
                        <td>{{ $iteam->mobile }}</td>
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
                        <td>{{ $iteam->sector }}</td>
                        <th>Account#</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>Domain</th>
                        <td>{{ $iteam->domain->name ?? '' }} </td>
                        <th>Smart Card No</th>
                        <td>{{ $iteam->smartcard }}</td>
                    </tr>
                    <tr>
                        <th>Department</th>
                        <td></td>
                        <th>National ID</th>
                        <td>{{ $iteam->nid }}</td>
                    </tr>
                    <tr>
                        <th>Designation</th>
                        <td>{{ $iteam->designation->name ?? '' }} </td>
                        <th>Passport</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>Grade</th>
                        <td>{{ $iteam->designation->grade ?? '' }} </td>
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
                        <td>{{ $iteam->joiningdate }}</td>
                        <th>Initial Job Type</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>Date of Confirmation</th>
                        <td></td>
                        <th>Total Sevice Length</th>
                        @php
                            $initialjoiningdate = $iteam->joiningdate;
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
                        <td>{{ $iteam->date_of_birth }}</td>
                        <th>Place of Birth</th>
                        <td>{{ $iteam->birth_place_district->name ?? '' }}</td>
                    </tr>
                    <tr>
                        <th>Present Age</th>
                        @php
                            $dateofbirth = $iteam->date_of_birth;
                            $now = \Carbon\Carbon::now();
                            $agedate = \Carbon\Carbon::parse($dateofbirth);
                            $presentage = $agedate->diff($now)->format('%y years, %m months, and %d days');
                        @endphp
                        <td>
                            {{ $presentage }}
                        </td>
                        <th>Blood Group</th>
                        <td>{{ $iteam->blood_groups->name ?? '' }}</td>
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
                        <td>Village: {{ $iteam->permanent_village }} ,
                            PostOffice: {{ $iteam->permanent_post }},
                            Upazilla: {{ $iteam->permanent_upazilla->name ?? '' }},
                            District: {{ $iteam->permanent_district->name ?? '' }}
                        </td>
                        <th>Job Location</th>
                        <td>Bogra</td>
                    </tr>
                    <tr>
                        <th>Present Address</th>
                        <td>Village: {{ $iteam->present_village }} ,
                            PostOffice: {{ $iteam->present_post }},
                            Upazilla: {{ $iteam->present_upazilla->name ?? '' }},
                            District: {{ $iteam->present_district->name ?? '' }}</td>
                        <th>Job Status</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>Type of Employee</th>
                        <td>{{ $iteam->employee_type->name ?? '' }}</td>
                        <th>Functional Designation</th>
                        <td></td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <br>


        &nbsp;<table>
            <tbody>
                <tr>
                    <th colspan="4" bgcolor="#84dc86">Guardian Information</th>
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
                        <td>{{ $iteam->relation->relation_name ?? '' }}</td>
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
                        <td>{{ $iteam->professions->profession_name ?? '' }}</td>
                        <th rowspan="4">Picture</th>
                        <td rowspan="4">
                            <img class="rounded-circle avatar-xl"
                                src="{{ !empty($basicinfo->employee_photo) ? url('upload/staffprofile/' . $basicinfo->employee_photo) : url('upload/no_image.jpg') }}"
                                alt="Card image cap" width="90"
                                height="110">
                        </td>
                    </tr>
                    <tr>
                        <th>Working Location</th>
                        <td>{{ $iteam->guardian_name }}</td>
                    </tr>
                    <tr>
                        <th>Present Address</th>
                        <td>Village: {{ $iteam->guardian_present_village }} ,
                            PostOffice: {{ $iteam->guardian_present_post }},
                            Upazilla: {{ $iteam->guardian_present_upazilla->name ?? '' }},
                            District: {{ $iteam->guardian_present_district->name ?? '' }}</td>
                    </tr>
                    <tr>
                        <th>Permanent Address</th>
                        <td>Village: {{ $iteam->guardian_permanent_village }} ,
                            PostOffice: {{ $iteam->guardian_permanent_post }},
                            Upazilla: {{ $iteam->guardian_permanent_upazilla->name ?? '' }},
                            District: {{ $iteam->guardian_permanent_district->name ?? '' }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table> <br>

        <table>
            <tbody>
                <tr>
                    <th colspan="11" bgcolor="#84dc86">Education Information</th>
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
                        <td>{{ $education->examname->name ?? ''  }}</td>
                        <td>{{ $education->year->year_name ?? ''  }}</td>
                        <td>{{ $education->edusubject->subject_name ?? ''  }}</td>
                        <td>{{ $education->educationgroup->group_name ?? '' }}</td>
                        <td>{{ $education->thesis_topic }}</td>
                        <td>{{ $education->name_of_institute }}</td>
                        <td>{{ $education->boarduniversity->board_university_name ??'' }}</td>
                        <td>{{ $education->total_marks }}</td>
                        <td>{{ $education->gradeclass->grade_class_name ?? ''  }}</td>
                        <td>{{ $education->gpa }}</td>
                        <td>{{ $education->documents }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table><br>


        &nbsp;<table>
            <tbody>
                <tr>
                    <th colspan="6" bgcolor="#84dc86">Course/Diploma Information</th>
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
                    <th colspan="7" bgcolor="#84dc86">Training Information</th>
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
                    @foreach ($training as $item)
                <tr>
                    <td>{{ $item->training_name }}</td>
                    <td>{{ $item->date_from }}</td>
                    <td>{{ $item->date_to }}</td>
                    <td>{{ $item->domestic_overseas }}</td>
                    @php
                        $date_from = $item->date_from;
                        $now = $item->date_to;
                        $traindate = \Carbon\Carbon::parse($date_from);
                        $length = $traindate->diff($now)->format('%y years, %m months, and %d days');
                    @endphp
                    <td>
                        {{ $length }}
                    </td>
                    <td>{{ $item->place }}</td>
                    <td>{{ $item->country->country_name ?? '' }}</td>
                </tr>
                @endforeach
                </tr>
            </tbody>
        </table>
        <br>

        <table>
            <tbody>
                <tr>
                    <th colspan="6" bgcolor="#84dc86">Experience Information</th>
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
                    <th colspan="8" bgcolor="#84dc86">Nominee information</th>
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
                        <td>{{ $item->nominee_relation_types->relation_name ?? '' }}</td>
                        {{-- <td>{{ $item->nominee_relation_types_id }}</td> --}}
                        <td>{{ $item->nominee_percentage }}</td>
                        <td>Village: {{ $item->nominee_permanent_village ?? '' }},
                            Postoffice: {{ $item->nominee_permanent_post ?? '' }},
                            Upazilla: {{ $item->nominee_upazilla->name ?? '' }},
                            District: {{ $item->nominee_district->name ?? '' }},
                        </td>
                        <td>{{ $item->nominee_nid }}</td>
                        <td>{{ $item->nominee_mobile }}</td>
                        {{-- <td>{{ $nominee->nominee_mobile }} --}}
                        </td>
                        <td>
                            <img class="rounded-circle avatar-xl"
                                src="{{ !empty($basicinfo->employee_photo) ? url('upload/staffprofile/' . $basicinfo->employee_photo) : url('upload/no_image.jpg') }}"
                                alt="Card image cap" width="47"
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
                    <th colspan="6" bgcolor="#84dc86">Spouse Information</th>
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
                        <td>{{ $item->professions->profession_name }}</td>
                        <td>Village: {{ $item->nominee_permanent_village }},
                            Postoffice: {{ $item->nominee_permanent_post }},
                            Upazilla: {{ $item->nominee_permanent_upazilla_id ?? '' }},
                            District: {{ $item->nominee_permanent_district_id ?? '' }},
                        </td>
                        <td>Village: {{ $item->nominee_permanent_village }},
                            Postoffice: {{ $item->nominee_permanent_post }},
                            Upazilla: {{ $item->nominee_permanent_upazilla_id ?? '' }},
                            District: {{ $item->nominee_permanent_district_id ?? '' }},
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
                    <th colspan="5" bgcolor="#84dc86">Child Information</th>
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
                        <td>{{ $item->gender->name ?? '' }}</td>
                        <td>{{ $item->date_of_birth }}</td>
                        {{-- <td>{{ $item->email }}</td> --}}
                        <td>{{ $item->professions->profession_name ?? '' }}</td>
                        <td>Village: {{ $item->nominee_permanent_village }},
                            Postoffice: {{ $item->nominee_permanent_post }},
                            Upazilla: {{ $item->nominee_permanent_upazilla_id ?? '' }},
                            District: {{ $item->nominee_permanent_district_id ?? '' }},
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <br>


        &nbsp;<table>
            <tbody>
                <tr>
                    <th colspan="5" bgcolor="#84dc86">Brother and Sister Information</th>
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
                        <td>{{ $item->relation->relation_name ?? '' }}</td>
                        {{-- <td>{{ $item->email }}</td> --}}
                        <td>{{ $item->professions->profession_name ?? '' }}</td>
                        <td>{{ $item->depend }}</td>
                        <td>Village: {{ $item->nominee_permanent_village }},
                            Postoffice: {{ $item->nominee_permanent_post }},
                            Upazilla: {{ $item->nominee_permanent_upazilla_id ?? '' }},
                            District: {{ $item->nominee_permanent_district_id ?? '' }},
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <br>

        <table>
            <tbody>
                <tr>
                    <th colspan="7" bgcolor="#84dc86">Relative in TMSS</th>
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
                    <th colspan="9" bgcolor="#84dc86">Reference Information</th>
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
        {{--
        &nbsp;<table>
            <tbody>
                <tr>
                    <th colspan="6" bgcolor="#84dc86">Personal File Check List</th>
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
        <br> --}}


    </div>


</body>

</html>
