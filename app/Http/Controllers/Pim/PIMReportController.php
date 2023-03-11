<?php

namespace App\Http\Controllers\Pim;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PIMReportController extends Controller
{
    public function AllPIMReport()
    {

        // $user = Auth::user();
        // $basicinfo = BasicInfo::all();
        // $relation_types = RelationType::all();
        // $profession = Profession::all();
        // $districts = District::all();
        // $divisions = Division::all();
        // $upazillas = Upazilla::all();
        // $basicinfos = BasicInfo::all();
        // $nominee = Nominee::all();
        // $nominees = Nominee::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.report.report_all');
    }
}
