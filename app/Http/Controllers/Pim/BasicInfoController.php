<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use App\Models\Pim\BasicInfo;
use App\Models\Domain;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use App\Models\BloodGroup;
use App\Models\Designation;
// use App\Models\BasicInfo;
use App\Models\EmployeeType;
use Illuminate\Http\Request;
use App\Models\MaritalStatus;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\EducationalQualification;

class BasicInfoController extends Controller
{
    public function AllBasicInfo()
    {

        $user = Auth::user();
        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $educationqualifications = EducationalQualification::all();
        $employeetypes = EmployeeType::all();
        $basicinfos = BasicInfo::all();
        // $basicinfos = BasicInfo::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.basicinfo.basicinfo_all', compact('basicinfos', 'user'));
    } // End Method

    public function AddBasicInfo()
    {
        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $employeetypes = EmployeeType::all();
        $educationqualifications = EducationalQualification::all();
        return view('pim.basicinfo.basicinfo_add', compact('domains', 'employeetypes', 'designations', 'maritalstatus', 'districts', 'divisions', 'blood_groups', 'educationqualifications', 'upazillas'));
    } // End Method

    public function StoreBasicInfo(Request $request)
    {

        $validateData = $request->validate([
            'name' => 'required',
            'id' => 'required|unique:basic_infos,id|max:8|min:8',
            // 'employee_type_id' => 'required',
            'name' => 'required',
            'father_name' => 'required',
            'mother_name' => 'required',
            'designation_id' => 'required',
            'joiningdate' => 'required',
            'date_of_birth' => 'required',
            'domain_id' => 'required',
            'marital_status_id' => 'required',
            'birth_place_district_id' => 'required',
            'educational_qualification_id' => 'required',
            'permanent_village' => 'required',
            'permanent_post' => 'required',
            // 'permanent_postal_code' => 'required',
            'permanent_division_id' => 'required',
            'permanent_district_id' => 'required',
            'permanent_upazilla_id' => 'required',
            'present_village' => 'required',
            'present_post' => 'required',
            // 'present_postal_code' => 'required',
            'present_division_id' => 'required',
            'present_district_id' => 'required',
            'present_upazilla_id' => 'required',
            'mobile' => 'required',
            // 'email' => 'required',
            // 'nid' => 'required',
            // 'smartcard' => 'required',
            'blood_groups_id' => 'required',
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

        BasicInfo::insert([
            'id' => $request->id,
            'employee_type_id' => $request->employee_type_id,
            'name' => $request->name,
            'father_name' => $request->father_name,
            'mother_name' => $request->mother_name,
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
            'message' => 'BasicInfo Inserted Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.basicinfo')->with($notification);

    } // End Method

    public function BasicInfoShow($id)
    {

        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $employeetypes = EmployeeType::all();
        $educationqualifications = EducationalQualification::all();

        // $employee = DB::table('basicinfos')
        // ->join('designations', 'designations.id', '=', 'basicinfos.designation_id')
        // ->get();

        // $basicinfos = BasicInfo::findOrFail($id);
        $basicinfo = BasicInfo::findOrFail($id);
        // return View('pim.basicinfo.basicinfo_show',['designations'=>$designation]);
        return view('pim.basicinfo.basicinfo_show', compact('basicinfo', 'domains', 'employeetypes', 'designations', 'maritalstatus', 'districts', 'divisions', 'blood_groups', 'educationqualifications', 'upazillas'));
        // return view('pim.basicinfo.basicinfo_show',compact('basicinfo'));

    } // End Method

    public function EditBasicInfo($id)
    {

        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $employeetypes = EmployeeType::all();
        $educationqualifications = EducationalQualification::all();

        $basicinfo = BasicInfo::findOrFail($id);
        return view('pim.basicinfo.basicinfo_edit', compact('basicinfo', 'employeetypes', 'domains', 'designations', 'maritalstatus', 'districts', 'divisions', 'blood_groups', 'educationqualifications', 'upazillas'));

    } // End Method

    public function UpdateBasicInfo(Request $request)
    {

        $id = $request->id;

        BasicInfo::findOrFail($id)->update([
            'employee_type_id' => $request->employee_type_id,
            'name' => $request->name,
            'father_name' => $request->father_name,
            'mother_name' => $request->mother_name,
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
            'message' => 'BasicInfo Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('basicinfo.all')->with($notification);

    } // End Method

    public function DeleteBasicInfo($id){

        BasicInfo::findOrFail($id)->delete();

    $notification = array(
            'message' => 'BasicInfo Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowBasicInfo($id)
    {

        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $employeetypes = EmployeeType::all();
        $educationqualifications = EducationalQualification::all();

        // $employee = DB::table('basicinfos')
        // ->join('designations', 'designations.id', '=', 'basicinfos.designation_id')
        // ->get();

        // $basicinfos = basicinfo::findOrFail($id);
        $basicinfo = BasicInfo::findOrFail($id);
        // return View('backend.basicinfo.basicinfo_show',['designations'=>$designation]);
        return view('pim.basicinfo.basicinfo_show', compact('basicinfo', 'domains', 'employeetypes', 'designations', 'maritalstatus', 'districts', 'divisions', 'blood_groups', 'educationqualifications', 'upazillas'));
        // return view('backend.basicinfo.basicinfo_show',compact('basicinfo'));

    } //
}
