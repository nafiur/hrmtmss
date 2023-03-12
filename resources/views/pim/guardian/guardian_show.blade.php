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
                    <th colspan="4" bgcolor="#AAC6FF">Guardian Information</th>
                </tr>
                <tr>
                    <th>Employee ID</th>
                    <td>{{ $guardian->employee_id }}</td>
                    <th>Employee Name</th>
                    <td>{{ $guardian->basicinfo->name }}</td>
                </tr>
                <tr>
                    <th>Employee Name</th>
                    <td>{{ $guardian->guardian_name }}</td>
                    <th>Father Name</th>
                    <td>{{ $guardian->guardian_father_name }}</td>
                </tr>
                <tr>
                    <th>Relation</th>
                    <td>{{ $guardian->relation->relation_name }}</td>
                    <th>Mother Name</th>
                    <td>{{ $guardian->guardian_mother_name }}</td>
                </tr>
                <tr>
                    <th>Mobile No</th>
                    <td>{{ $guardian->guardian_mobile }}</td>
                    <th>National ID#</th>
                    <td>{{ $guardian->guardian_nid }}</td>
                </tr>
                <tr>
                    <th>Phone No</th>
                    <td>{{ $guardian->guardian_phone }}</td>
                    <th>Birth Certificate No</th>
                    <td></td>
                </tr>
                <tr>
                    <th>E-mail</th>
                    <td>{{ $guardian->guardian_email }}</td>
                    <th>Monthly Income</th>
                    <td>{{ $guardian->guardian_monthly_income }}</td>
                </tr>
                <tr>
                    <th>Profession</th>
                    <td>{{ $guardian->professions->profession_name ??'' }}</td>
                    <th rowspan="4">Picture</th>
                    <td rowspan="4">
                        <img src="./Detils Staff Report_files/10118707(1).jpg" alt="10118707" width="90" height="110">
                    </td>
                </tr>
                <tr>
                    <th>Working Location</th>
                    <td>{{ $guardian->guardian_name }}</td>
                </tr>
                <tr>
                    <th>Present Address</th>
                    <td>Village: {{ $guardian->guardian_present_village }} ,
                        PostOffice: {{ $guardian->guardian_present_village }},
                        Upazilla: {{ $guardian->guardian_present_upazilla->name ?? '' }},
                        District: {{ $guardian->guardian_present_district->name ?? '' }}</td>
                </tr>
                <tr>
                    <th>Permanent Address</th>
                    <td>Village: {{ $guardian->guardian_permanent_village }} ,
                        PostOffice: {{ $guardian->guardian_permanent_village }},
                        Upazilla: {{ $guardian->guardian_permanent_upazilla->name ?? '' }},
                        District: {{ $guardian->guardian_permanent_district->name ?? '' }}</td>
                </tr>
            </tbody>
        </table> <br>


    </div>


</body>

</html>
