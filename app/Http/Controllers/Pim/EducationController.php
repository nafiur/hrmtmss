<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use App\Models\Setup\Year;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Pim\Education;
use App\Models\Setup\Duration;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\EducationalQualification;
use App\Models\Setup\BoardUniversity;
use App\Models\Setup\EducationGradeClass;
use App\Models\Setup\EducationSubject;
use Illuminate\Support\Facades\Auth;

class EducationController extends Controller
{
    public function AllEducation()
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $duration = Duration::all();
        $examname= EducationalQualification::all();
        $subject= EducationSubject::all();
        $boarduniversity= BoardUniversity::all();
        $gradeclass= EducationGradeClass::all();
        $education= Education::all();
        // $educations = Education::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.education.education_all', compact('education', 'duration', 'examname', 'subject', 'boarduniversity', 'gradeclass'));
    } // End Method

    public function AddEducation()
    {
        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $duration = Duration::all();
        $year = Year::all();
        $examname= EducationalQualification::all();
        $subject= EducationSubject::all();
        $boarduniversity= BoardUniversity::all();
        $gradeclass= EducationGradeClass::all();
        $education= Education::all();
        return view('pim.education.education_add', compact('education','basicinfos','duration', 'year','examname', 'subject', 'boarduniversity', 'gradeclass'));
    } // End Method

    public function StoreEducation(Request $request)
    {

        $validateData = $request->validate([
            // 'education_name' => 'required',
            // 'id' => 'required|unique:basic_infos,id|max:8|min:8',
            // 'employee_type_id' => 'required',
            'employee_id' => 'required',
        ]);


        Education::insert([
            'employee_id' => $request->employee_id,
            'educational_qualification_id' => $request->educational_qualification_id,

            'education_year_id' => $request->education_year_id,
            'educational_subjects_id' => $request->educational_subjects_id,
            'education_group' => $request->education_group,
            'name_of_institute' => $request->name_of_institute,
            'thesis_topic' => $request->thesis_topic,
            'board_university_id' => $request->board_university_id,
            'total_marks' => $request->total_marks,
            'grade_class' => $request->grade_class,
            'gpa' => $request->gpa,
            'documents' => $request->documents,

            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'Education In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.education')->with($notification);

    } // End Method

    public function EducationShow($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $duration = Duration::all();
        $year = Year::all();
        $examname= EducationalQualification::all();
        $subject= EducationSubject::all();
        $boarduniversity= BoardUniversity::all();
        $gradeclass= EducationGradeClass::all();
        $education= Education::all();

        // $employee = DB::table('educations')
        // ->join('designations', 'designations.id', '=', 'educations.designation_id')
        // ->get();

        // $educations = Education::findOrFail($id);
        $education= Education::findOrFail($id);
        // return View('pim.education.education_show',['designations'=>$designation]);
        return view('pim.education.education_show', compact('education', 'basicinfos', 'duration','year','examname' , 'subject', 'boarduniversity', 'gradeclass'));
        // return view('pim.education.education_show',compact('education'));

    } // End Method

    public function EditEducation($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $duration = Duration::all();
        $examname= EducationalQualification::all();
        $subject= EducationSubject::all();
        $gradeclass= EducationGradeClass::all();
        $boarduniversity= BoardUniversity::all();
        $year = Year::all();
        // $education= Education::all();

        $education= Education::findOrFail($id);

        return view('pim.education.education_edit', compact('education', 'basicinfos', 'duration', 'year','examname','subject', 'boarduniversity', 'gradeclass'));

    } // End Method

    public function UpdateEducation(Request $request)
    {

        $id = $request->id;

        Education::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'educational_qualification_id' => $request->educational_qualification_id,

            'education_year_id' => $request->education_year_id,
            'educational_subjects_id' => $request->educational_subjects_id,
            'education_group' => $request->education_group,
            'name_of_institute' => $request->name_of_institute,
            'thesis_topic' => $request->thesis_topic,
            'board_university_id' => $request->board_university_id,
            'total_marks' => $request->total_marks,
            'grade_class' => $request->grade_class,
            'gpa' => $request->gpa,
            'documents' => $request->documents,

            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Education Info Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.education')->with($notification);

    } // End Method

    public function DeleteEducation($id){

        Education::findOrFail($id)->delete();

    $notification = array(
            'message' => 'Education Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowEducation($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();

        $basicinfos = BasicInfo::all();
        $duration= Duration::all();
        $examname= EducationalQualification::all();
        $gradeclass= EducationGradeClass::all();
        $boarduniversity= BoardUniversity::all();
        $subject = EducationSubject::all();
        $year = Year::all();
        // $education= Education::all();

        // $education= Education::findOrFail($id);

        // $employee = DB::table('educations')
        // ->join('designations', 'designations.id', '=', 'educations.designation_id')
        // ->get();

        // $educations = education::findOrFail($id);
        $education= Education::findOrFail($id);
        // return View('backend.education.education_show',['designations'=>$designation]);
        return view('pim.education.education_show', compact('education', 'basicinfos', 'year', 'duration','examname','subject', 'boarduniversity', 'gradeclass'));
        // return view('backend.education.education_show',compact('education'));

    } //
}
