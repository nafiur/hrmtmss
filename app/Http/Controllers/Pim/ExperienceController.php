<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Pim\Experience;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class ExperienceController extends Controller
{
    public function AllExperience()
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $experience= Experience::all();
        // $experiences = Experience::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.experience.experience_all', compact('experience', 'basicinfo'));
    } // End Method

    public function AddExperience()
    {
        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $experience= Experience::all();
        return view('pim.experience.experience_add', compact('experience','basicinfos'));
    } // End Method

    public function StoreExperience(Request $request)
    {

        $validateData = $request->validate([
            // 'experience_name' => 'required',
            // 'id' => 'required|unique:basic_infos,id|max:8|min:8',
            // 'employee_type_id' => 'required',
            'employee_id' => 'required',
        ]);


        Experience::insert([
            'employee_id' => $request->employee_id,
            'organization_name' => $request->organization_name,

            'job_nature' => $request->job_nature,
            'post_name' => $request->post_name,
            'experience_from' => $request->experience_from,
            'experience_to' => $request->experience_to,
            'total_experience' => $request->total_experience,
            'documents' => $request->documents,

            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'Experience In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.experience')->with($notification);

    } // End Method

    public function ExperienceShow($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $experience= Experience::all();

        // $employee = DB::table('experiences')
        // ->join('designations', 'designations.id', '=', 'experiences.designation_id')
        // ->get();

        // $experiences = Experience::findOrFail($id);
        $experience= Experience::findOrFail($id);
        // return View('pim.experience.experience_show',['designations'=>$designation]);
        return view('pim.experience.experience_show', compact('experience', 'basicinfos'));
        // return view('pim.experience.experience_show',compact('experience'));

    } // End Method

    public function EditExperience($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $experience= Experience::all();
        // $experience= Experience::all();

        $experience= Experience::findOrFail($id);

        return view('pim.experience.experience_edit', compact('experience', 'basicinfos'));

    } // End Method

    public function UpdateExperience(Request $request)
    {

        $id = $request->id;

        Experience::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'organization_name' => $request->organization_name,

            'job_nature' => $request->job_nature,
            'post_name' => $request->post_name,
            'experience_from' => $request->experience_from,
            'experience_to' => $request->experience_to,
            'total_experience' => $request->total_experience,
            'documents' => $request->documents,

            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Experience Info Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.experience')->with($notification);

    } // End Method

    public function DeleteExperience($id){

        Experience::findOrFail($id)->delete();

    $notification = array(
            'message' => 'Experience Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowExperience($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $basicinfos = BasicInfo::all();
        $experience= Experience::all();
        // $experience= Experience::all();

        // $experience= Experience::findOrFail($id);

        // $employee = DB::table('experiences')
        // ->join('designations', 'designations.id', '=', 'experiences.designation_id')
        // ->get();

        // $experiences = experience::findOrFail($id);
        $experience= Experience::findOrFail($id);
        // return View('backend.experience.experience_show',['designations'=>$designation]);
        return view('pim.experience.experience_show', compact('experience', 'basicinfos'));
        // return view('backend.experience.experience_show',compact('experience'));

    } //
}
