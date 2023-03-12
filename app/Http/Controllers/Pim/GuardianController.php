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
        $relation = RelationType::all();
        $profession = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $guardian = Guardian::all();
        // $guardians = Guardian::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.guardian.guardian_all', compact('guardian'));
    } // End Method

    public function AddGuardian()
    {
        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation = RelationType::all();
        $profession = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $guardian = Guardian::all();
        return view('pim.guardian.guardian_add', compact('guardian','basicinfos', 'relation', 'profession', 'districts', 'divisions', 'upazillas'));
    } // End Method

    public function StoreGuardian(Request $request)
    {

        $validateData = $request->validate([
            'guardian_name' => 'required',
            // 'id' => 'required|unique:basic_infos,id|max:8|min:8',
            // 'employee_type_id' => 'required',
            'employee_id' => 'required',
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
            'employee_id' => $request->employee_id,
            'guardian_name' => $request->guardian_name,
            'guardian_father_name' => $request->guardian_father_name,
            'guardian_mother_name' => $request->guardian_mother_name,
            'guardian_relation_types_id' => $request->guardian_relation_types_id,
            'guardian_profession_id' => $request->guardian_profession_id,
            'guardian_monthly_income' => $request->guardian_monthly_income,

            'guardian_permanent_village' => $request->guardian_permanent_village,
            'guardian_permanent_post' => $request->guardian_permanent_post,
            'guardian_permanent_postal_code' => $request->guardian_permanent_postal_code,
            'guardian_permanent_division_id' => $request->guardian_permanent_division_id,
            'guardian_permanent_district_id' => $request->guardian_permanent_district_id,
            'guardian_permanent_upazilla_id' => $request->guardian_permanent_upazilla_id,

            'guardian_present_village' => $request->guardian_present_village,
            'guardian_present_post' => $request->guardian_present_post,
            'guardian_present_postal_code' => $request->guardian_present_postal_code,
            'guardian_present_division_id' => $request->guardian_present_division_id,
            'guardian_present_district_id' => $request->guardian_present_district_id,
            'guardian_present_upazilla_id' => $request->guardian_present_upazilla_id,

            'guardian_mobile' => $request->guardian_mobile,
            'guardian_phone' => $request->guardian_phone,
            'guardian_email' => $request->guardian_email,
            'guardian_fax' => $request->guardian_fax,
            'guardian_nid' => $request->guardian_nid,

            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'Guardian In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.guardian')->with($notification);

    } // End Method

    public function GuardianShow($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation = RelationType::all();
        $profession = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $guardian = Guardian::all();

        // $employee = DB::table('guardians')
        // ->join('designations', 'designations.id', '=', 'guardians.designation_id')
        // ->get();

        // $guardians = Guardian::findOrFail($id);
        $guardian = Guardian::findOrFail($id);
        // return View('pim.guardian.guardian_show',['designations'=>$designation]);
        return view('pim.guardian.guardian_show', compact('guardian', 'profession', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'relation', 'upazillas'));
        // return view('pim.guardian.guardian_show',compact('guardian'));

    } // End Method

    public function EditGuardian($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation = RelationType::all();
        $profession = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        // $guardian = Guardian::all();

        $guardian = Guardian::findOrFail($id);

        return view('pim.guardian.guardian_edit', compact('guardian', 'profession', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'relation', 'upazillas'));

    } // End Method

    public function UpdateGuardian(Request $request)
    {

        $id = $request->id;

        Guardian::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'guardian_name' => $request->guardian_name,
            'guardian_father_name' => $request->guardian_father_name,
            'guardian_mother_name' => $request->guardian_mother_name,
            'guardian_relation_types_id' => $request->guardian_relation_types_id,
            'guardian_profession_id' => $request->guardian_profession_id,
            'guardian_monthly_income' => $request->guardian_monthly_income,

            'guardian_permanent_village' => $request->guardian_permanent_village,
            'guardian_permanent_post' => $request->guardian_permanent_post,
            'guardian_permanent_postal_code' => $request->guardian_permanent_postal_code,
            'guardian_permanent_division_id' => $request->guardian_permanent_division_id,
            'guardian_permanent_district_id' => $request->guardian_permanent_district_id,
            'guardian_permanent_upazilla_id' => $request->guardian_permanent_upazilla_id,

            'guardian_present_village' => $request->guardian_present_village,
            'guardian_present_post' => $request->guardian_present_post,
            'guardian_present_postal_code' => $request->guardian_present_postal_code,
            'guardian_present_division_id' => $request->guardian_present_division_id,
            'guardian_present_district_id' => $request->guardian_present_district_id,
            'guardian_present_upazilla_id' => $request->guardian_present_upazilla_id,

            'guardian_mobile' => $request->guardian_mobile,
            'guardian_phone' => $request->guardian_phone,
            'guardian_email' => $request->guardian_email,
            'guardian_fax' => $request->guardian_fax,
            'guardian_nid' => $request->guardian_nid,

            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Guardian Info Updated Successfully',
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
        $relation = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        // $guardian = Guardian::all();

        // $guardian = Guardian::findOrFail($id);

        // $employee = DB::table('guardians')
        // ->join('designations', 'designations.id', '=', 'guardians.designation_id')
        // ->get();

        // $guardians = guardian::findOrFail($id);
        $guardian = Guardian::findOrFail($id);
        // return View('backend.guardian.guardian_show',['designations'=>$designation]);
        return view('pim.guardian.guardian_show', compact('guardian', 'basicinfos', 'relation', 'professions', 'districts', 'divisions', 'upazillas'));
        // return view('backend.guardian.guardian_show',compact('guardian'));

    } //
}
