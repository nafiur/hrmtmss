<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use App\Models\Pim\Guardian;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Setup\Profession;
use App\Models\Setup\RelationType;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class GuardianController extends Controller
{
    public function AllGuardian()
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $profession = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $guardian = Guardian::all();
        // $guardians = Guardian::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.guardian.guardian_all', compact('guardian'));
    } // End Method

    public function AddGuardian()
    {
        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $guardian = Guardian::all();
        return view('pim.guardian.guardian_add', compact('guardian','basicinfo', 'relation_types', 'professions', 'districts', 'divisions', 'upazillas'));
    } // End Method

    public function StoreGuardian(Request $request)
    {

        $validateData = $request->validate([
            'name' => 'required',
            'id' => 'required|unique:basic_infos,id|max:8|min:8',
            // 'employee_type_id' => 'required',
            'name' => 'required',
            // 'father_name' => 'required',
            // 'mother_name' => 'required',
            // 'designation_id' => 'required',
            // 'joiningdate' => 'required',
            // 'date_of_birth' => 'required',
            // 'domain_id' => 'required',
            // 'marital_status_id' => 'required',
            // 'birth_place_district_id' => 'required',
            // 'educational_qualification_id' => 'required',
            // 'permanent_village' => 'required',
            // 'permanent_post' => 'required',
            // // 'permanent_postal_code' => 'required',
            // 'permanent_division_id' => 'required',
            // 'permanent_district_id' => 'required',
            // 'permanent_upazilla_id' => 'required',
            // 'present_village' => 'required',
            // 'present_post' => 'required',
            // 'present_postal_code' => 'required',
            // 'present_division_id' => 'required',
            // 'present_district_id' => 'required',
            // 'present_upazilla_id' => 'required',
            // 'mobile' => 'required',
            // 'email' => 'required',
            // 'nid' => 'required',
            // 'smartcard' => 'required',
            // 'blood_groups_id' => 'required',
            // 'id' => ['required', 'numeric','max:8', 'min:8', 'unique:new_employees']
            // 'id' => 'required|max:8|min:8',
            // 'employee_photo' => 'mimes:png,jpg',
        ]);

        // if ($request->file('employee_photo')) {
        //     $photo = $request->file('employee_photo');

        //     $photoname = $photo->getClientOriginalName();
        //     $photo->move(public_path('upload/photo/employee/'), $photoname);
        //     $data['employee_photo'] = $photoname;
        // }
        // if ($request->file('employee_photo')) {
        //     $file = $request->file('employee_photo');

        //     $filename = $file->getClientOriginalName();
        //     $file->move(public_path('upload/photo/employee/'), $filename);
        //     $data['employee_photo'] = $filename;
        // }

        Guardian::insert([
            'id' => $request->id,
            'employee_type_id' => $request->employee_type_id,
            'name' => $request->name,
            'father_name' => $request->father_name,
            'mother_name' => $request->mother_name,
            'gender_id' => $request->gender_id,
            'designation_id' => $request->designation_id,
            'joiningdate' => $request->joiningdate,
            'date_of_birth' => $request->date_of_birth,
            'domain_id' => $request->domain_id,
            'marital_status_id' => $request->marital_status_id,
            'birth_place_district_id' => $request->birth_place_district_id,
            'educational_qualification_id' => $request->educational_qualification_id,
            'permanent_village' => $request->permanent_village,
            'permanent_post' => $request->permanent_post,
            'permanent_postal_code' => $request->permanent_postal_code,
            'permanent_division_id' => $request->permanent_division_id,
            'permanent_district_id' => $request->permanent_district_id,
            'permanent_upazilla_id' => $request->permanent_upazilla_id,
            'present_village' => $request->present_village,
            'present_post' => $request->present_post,
            'present_postal_code' => $request->present_postal_code,
            'present_division_id' => $request->present_division_id,
            'present_district_id' => $request->present_district_id,
            'present_upazilla_id' => $request->present_upazilla_id,
            'mobile' => $request->mobile,
            'email' => $request->email,
            'nid' => $request->nid,
            'smartcard' => $request->smartcard,
            'blood_groups_id' => $request->blood_groups_id,
            // 'employee_photo' => $filename,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'Guardian Inserted Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.guardian')->with($notification);

    } // End Method

    public function GuardianShow($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relationtype = RelationType::all();
        $professionype = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $guardian = Guardian::all();

        // $employee = DB::table('guardians')
        // ->join('designations', 'designations.id', '=', 'guardians.designation_id')
        // ->get();

        // $guardians = Guardian::findOrFail($id);
        $guardian = Guardian::findOrFail($id);
        // return View('pim.guardian.guardian_show',['designations'=>$designation]);
        return view('pim.guardian.guardian_show', compact('guardian','gender', 'domains', 'employeetypes', 'designations', 'maritalstatus', 'districts', 'divisions', 'blood_groups', 'educationqualifications', 'upazillas'));
        // return view('pim.guardian.guardian_show',compact('guardian'));

    } // End Method

    public function EditGuardian($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relationtype = RelationType::all();
        $professionype = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $guardian = Guardian::all();

        $guardian = Guardian::findOrFail($id);
        return view('pim.guardian.guardian_edit', compact('guardian', 'BasicInfo', 'employeetypes', 'domains', 'designations', 'maritalstatus', 'districts', 'divisions', 'blood_groups', 'educationqualifications', 'upazillas'));

    } // End Method

    public function UpdateGuardian(Request $request)
    {

        $id = $request->id;

        Guardian::findOrFail($id)->update([
            'employee_type_id' => $request->employee_type_id,
            'name' => $request->name,
            'father_name' => $request->father_name,
            'mother_name' => $request->mother_name,
            'gender_id' => $request->gender_id,
            'designation_id' => $request->designation_id,
            'joiningdate' => $request->joiningdate,
            'date_of_birth' => $request->date_of_birth,
            'domain_id' => $request->domain_id,
            'marital_status_id' => $request->marital_status_id,
            'birth_place_district_id' => $request->birth_place_district_id,
            'educational_qualification_id' => $request->educational_qualification_id,
            'permanent_village' => $request->permanent_village,
            'permanent_post' => $request->permanent_post,
            'permanent_postal_code' => $request->permanent_postal_code,
            'permanent_division_id' => $request->permanent_division_id,
            'permanent_district_id' => $request->permanent_district_id,
            'permanent_upazilla_id' => $request->permanent_upazilla_id,
            'present_village' => $request->present_village,
            'present_post' => $request->present_post,
            'present_postal_code' => $request->present_postal_code,
            'present_division_id' => $request->present_division_id,
            'present_district_id' => $request->present_district_id,
            'present_upazilla_id' => $request->present_upazilla_id,
            'mobile' => $request->mobile,
            'email' => $request->email,
            'nid' => $request->nid,
            'smartcard' => $request->smartcard,
            'blood_groups_id' => $request->blood_groups_id,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Guardian Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.guardian')->with($notification);

    } // End Method

    public function DeleteGuardian($id){

        Guardian::findOrFail($id)->delete();

    $notification = array(
            'message' => 'Guardian Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowGuardian($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relationtype = RelationType::all();
        $professionype = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $guardian = Guardian::all();

        // $employee = DB::table('guardians')
        // ->join('designations', 'designations.id', '=', 'guardians.designation_id')
        // ->get();

        // $guardians = guardian::findOrFail($id);
        $guardian = Guardian::findOrFail($id);
        // return View('backend.guardian.guardian_show',['designations'=>$designation]);
        return view('pim.guardian.guardian_show', compact('guardian', 'gender', 'domains', 'employeetypes', 'designations', 'maritalstatus', 'districts', 'divisions', 'blood_groups', 'educationqualifications', 'upazillas'));
        // return view('backend.guardian.guardian_show',compact('guardian'));

    } //
}
