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
                    <td></td>
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
                    <td></td>
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
                <tr>
                    <th>Guardian Name</th>
                    <td>Md. Saiful Islam</td>
                    <th>Father Name</th>
                    <td>Late. Boyen Ali</td>
                </tr>
                <tr>
                    <th>Relation</th>
                    <td>Father</td>
                    <th>Mother Name</th>
                    <td></td>
                </tr>
                <tr>
                    <th>Mobile No</th>
                    <td>01738284050</td>
                    <th>National ID#</th>
                    <td>1012086318750</td>
                </tr>
                <tr>
                    <th>Phone No</th>
                    <td>0</td>
                    <th>Birth Certificate No</th>
                    <td></td>
                </tr>
                <tr>
                    <th>E-mail</th>
                    <td>0</td>
                    <th>Monthly Income</th>
                    <td></td>
                </tr>
                <tr>
                    <th>Profession</th>
                    <td>Service</td>
                    <th rowspan="4">Picture</th>
                    <td rowspan="4">
                        <img src="./Detils Staff Report_files/10118707(1).jpg" alt="10118707" width="90"
                            height="110">
                    </td>
                </tr>
                <tr>
                    <th>Working Location</th>
                    <td>N/I</td>
                </tr>
                <tr>
                    <th>Present Address</th>
                    <td>Vill: Dakshin Bhag, Post: Shekerkola, PS: &amp; Dist: Bogra.</td>
                </tr>
                <tr>
                    <th>Permanent Address</th>
                    <td>Vill: Dakshin Bhag, Post: Shekerkola, PS: &amp; Dist: Bogra.</td>
                </tr>
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
                <tr>
                    <td>Diploma Eng</td>
                    <td>2014</td>
                    <td>Diploma in Computer Engineering</td>
                    <td></td>
                    <td>N/I</td>
                    <td>TMSS Technical Institute </td>
                    <td>Technical Education Board, Dhaka</td>
                    <td>0</td>
                    <td>B-</td>
                    <td>2.89</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>SSC</td>
                    <td>2005</td>
                    <td>N/A</td>
                    <td>Science</td>
                    <td>N/I</td>
                    <td>Satshimulia High School</td>
                    <td>Rajshahi</td>
                    <td>0</td>
                    <td>A-</td>
                    <td>3.88</td>
                    <td>Yes</td>
                </tr>
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
                <tr>
                    <td>Diploma in Databse Programming</td>
                    <td>Databse Programming</td>
                    <td>2012</td>
                    <td>National Youth Training Institute</td>
                    <td>6-Months</td>
                    <td>A</td>
                </tr>
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
                    <th>Phone</th>
                    <th>Mobile</th>
                    <th>Picture</th>
                </tr>

                <tr>
                    <td>Mst. Nasima Banu</td>
                    <td>Mother</td>
                    <td>50</td>
                    <td>Vill: Dakshin Bhag, Post: Shekerkola, PS: &amp; Dist: Bogra.</td>
                    <td>1012086318751</td>
                    <td>0</td>
                    <td>01717566431</td>
                    <td>
                        <img src="./Detils Staff Report_files/12865.jpg" alt="10118707" width="47" height="52">
                    </td>
                </tr>
                <tr>
                    <td>Mst. Khadiza Khatun Rinty</td>
                    <td>Wife</td>
                    <td>50</td>
                    <td>Vill: Dakshin Bhag, Post: Shekerkola, PS: &amp; Dist: Bogra.</td>
                    <td>0</td>
                    <td>0</td>
                    <td>01796747053</td>
                    <td>
                        <img src="./Detils Staff Report_files/12866.jpg" alt="10118707" width="47" height="52">
                    </td>
                </tr>
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
                <tr>
                    <td>Mst. Khadiza Khatun Rinty</td>
                    <td></td>
                    <td></td>
                    <td>Student</td>
                    <td></td>
                    <td></td>
                </tr>
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
                <tr>
                    <td>Nawafi Tafannun Yumna</td>
                    <td>Female</td>
                    <td>2015-07-23</td>
                    <td>Student</td>
                    <td>Vill: Dakshin Bhag, Post: Shekerkola, PS: &amp; Dist: Bogra.</td>
                </tr>
                <tr>
                    <td>Yusha Al Nufais</td>
                    <td>Male</td>
                    <td>2021-10-03</td>
                    <td>N/A</td>
                    <td>Vill: Dakshin Bhag, Post: Shekerkola, PS: &amp; Dist: Bogra.</td>
                </tr>
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
                <tr>
                    <td>Mst. Nafisun Nahar Sumona</td>
                    <td>Sister</td>
                    <td>Student</td>
                    <td>No</td>
                    <td>Vill: Dakshin Bhag, Post: Shekerkola, PS: &amp; Dist: Bogra. </td>
                </tr>
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
        <br>


    </div>


</body>

</html>
