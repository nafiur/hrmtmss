<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use App\Models\Pim\Course;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Setup\RelationType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Setup\Duration;
use App\Models\Setup\Year;
use Illuminate\Support\Facades\Auth;

class CourseController extends Controller
{
    public function AllCourse()
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $duration = Duration::all();
        $course = Course::all();
        // $courses = Course::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.course.course_all', compact('course', 'duration'));
    } // End Method

    public function AddCourse()
    {
        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $duration = Duration::all();
        $year = Year::all();
        $course = Course::all();
        return view('pim.course.course_add', compact('course','basicinfos','duration', 'year'));
    } // End Method

    public function StoreCourse(Request $request)
    {

        $validateData = $request->validate([
            'course_name' => 'required',
            // 'id' => 'required|unique:basic_infos,id|max:8|min:8',
            // 'employee_type_id' => 'required',
            'employee_id' => 'required',
        ]);


        Course::insert([
            'employee_id' => $request->employee_id,
            'course_name' => $request->course_name,

            'name_of_institute' => $request->name_of_institute,
            'course_subject' => $request->course_subject,
            'course_duration' => $request->course_duration,
            'course_passing_year' => $request->course_passing_year,
            'course_grade_class' => $request->course_grade_class,

            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'Course In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.course')->with($notification);

    } // End Method

    public function CourseShow($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $duration = Duration::all();
        $year = Year::all();
        $course = Course::all();

        // $employee = DB::table('courses')
        // ->join('designations', 'designations.id', '=', 'courses.designation_id')
        // ->get();

        // $courses = Course::findOrFail($id);
        $course = Course::findOrFail($id);
        // return View('pim.course.course_show',['designations'=>$designation]);
        return view('pim.course.course_show', compact('course', 'basicinfos', 'duration','year'));
        // return view('pim.course.course_show',compact('course'));

    } // End Method

    public function EditCourse($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $duration = Duration::all();
        $year = Year::all();
        // $course = Course::all();

        $course = Course::findOrFail($id);

        return view('pim.course.course_edit', compact('course', 'basicinfos', 'duration', 'year'));

    } // End Method

    public function UpdateCourse(Request $request)
    {

        $id = $request->id;

        Course::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'course_name' => $request->course_name,

            'name_of_institute' => $request->name_of_institute,
            'course_subject' => $request->course_subject,
            'course_duration' => $request->course_duration,
            'course_passing_year' => $request->course_passing_year,
            'course_grade_class' => $request->course_grade_class,

            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Course Info Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.course')->with($notification);

    } // End Method

    public function DeleteCourse($id){

        Course::findOrFail($id)->delete();

    $notification = array(
            'message' => 'Course Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowCourse($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();

        $basicinfos = BasicInfo::all();
        $duration= Duration::all();
        $year = Year::all();
        // $course = Course::all();

        // $course = Course::findOrFail($id);

        // $employee = DB::table('courses')
        // ->join('designations', 'designations.id', '=', 'courses.designation_id')
        // ->get();

        // $courses = course::findOrFail($id);
        $course = Course::findOrFail($id);
        // return View('backend.course.course_show',['designations'=>$designation]);
        return view('pim.course.course_show', compact('course', 'basicinfos', 'year', 'duration'));
        // return view('backend.course.course_show',compact('course'));

    } //
}
