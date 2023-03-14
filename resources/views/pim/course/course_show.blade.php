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
                    <th colspan="8" bgcolor="#AAC6FF">Course information</th>
                </tr>
                <tr>
                    <th>Name of Course</th>
                    <th>Relation</th>
                    <th>%</th>
                    <th>Address</th>
                    <th>Voter ID</th>
                    <th>Phone</th>
                    <th>Mobile</th>
                    <th>Picture</th>
                </tr>
                @foreach ($nominee as $key => $item)
                    <tr>
                        <td>{{ $nominee->nominee_name }}</td>
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
                @endforeach
            </tbody>
        </table>
        <br>


    </div>


</body>

</html>
