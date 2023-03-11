<?php

namespace App\Http\Controllers\Pim;

use App\Models\Domain;
use App\Models\Gender;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use App\Models\BloodGroup;
use App\Models\Pim\Course;
use App\Models\Designation;
use App\Models\Pim\Nominee;
use App\Models\EmployeeType;
use App\Models\Pim\Guardian;
use Illuminate\Http\Request;
use App\Models\MaritalStatus;
use App\Models\Pim\BasicInfo;
use App\Models\Pim\Education;
use App\Models\Pim\FamilyChild;
use App\Models\Pim\FamilySpouce;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Setup\EducationGroup;
use Illuminate\Support\Facades\Auth;
use App\Models\Setup\BoardUniversity;
use App\Models\Pim\StaffDetailsReport;
use App\Models\Pim\FamilyBrotherSister;
use App\Models\EducationalQualification;
use App\Models\Setup\RelationType;

class StaffDetailsReportController extends Controller
{


    public function ShowStaffDetailsReport($id)
    {

        $basicinfos = BasicInfo::all();
        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $employeetypes = EmployeeType::all();
        $gender = Gender::all();
        $guardian = Guardian::latest()->take(1)->get();
        $education = Education::all();
        $educationgroup = EducationGroup::all();
        $boarduni = BoardUniversity::all();
        $course = Course::all();
        $nominee = Nominee::all();
        $spouce = FamilySpouce::all();
        $child = FamilyChild::all();
        $fbs = FamilyBrotherSister::all();
        $staffdetails = StaffDetailsReport::all();
        $educationqualifications = EducationalQualification::all();

        // $employee = DB::table('basicinfos')
        // ->join('designations', 'designations.id', '=', 'basicinfos.designation_id')
        // ->get();
        // $data = DB::table('basic_infos')
        // ->join('guardians', 'basic_infos.id', '=', 'guardians.employee_id')
        // ->join('education', 'basic_infos.id', '=', 'education.employee_id')
        // ->join('nominees', 'basic_infos.id', '=', 'nominees.employee_id')
        // ->join('trainings', 'basic_infos.id', '=', 'trainings.employee_id')
        // ->select('basic_infos.*', 'guardians.*', 'education.*', 'nominees.*', 'trainings.*')
        // ->get();
        // $basicinfos = basicinfo::findOrFail($id);
        $basicinfo = BasicInfo::findOrFail($id);
        // return View('backend.basicinfo.basicinfo_show',['designations'=>$designation]);
        return view('pim.report.showstaffdetailsreport', compact('basicinfo','basicinfos','guardian','education', 'course','nominee','spouce','child', 'fbs','educationgroup', 'boarduni'));
        // return view('backend.basicinfo.basicinfo_show',compact('basicinfo'));

    } //


    public function StaffDetailsReport()
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
        // $employee = StaffDetailsReport::with(['basicinfo','education', 'guardian', 'nominee', 'children', 'family_members', 'trainings'])->find($employeeId);

        return view('pim.report.staffdetailsreport');
    }

    public function ssShowStaffDetailsReport()
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
        return view('pim.report.staffdetailsreport');
    }

//     public function ShowStaffDetailsReport (Request $request)
// {
//     $employeeId = $request->input('employee_id');
//     $employee = StaffDetailsReport::with(['education', 'guardian', 'nominee', 'children', 'family_members', 'trainings'])->find($employeeId);

//     return view('pim.report.showstaffdetailsreport');
// }
}
