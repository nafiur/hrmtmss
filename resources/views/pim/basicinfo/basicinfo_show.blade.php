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

        th,
        td {
            text-align: left;
            padding: 8px;
            /* border-bottom: 1px solid #ddd;*/
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
                    <th colspan="4" bgcolor="#AAC6FF">Personal Basic Information</th>
                </tr>
                <tr>
                    <th>Employee ID</th>
                    <td>{{ $basicinfo->id }}</td>
                    <th rowspan="3">Picture</th>
                    <td rowspan="3">
                        <img src="./Detils Staff Report_files/10118707.jpg" alt="10118707" width="90" height="110"
                            class="hoverZoomLink">
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
                        {{ $totalservicelength}}
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
                        {{ $presentage}}
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
    </div>


</body>

</html>
