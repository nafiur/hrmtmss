<?php

namespace App\Http\Controllers;

use App\Models\Zone;
use App\Models\Domain;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use App\Models\BloodGroup;
use App\Models\Designation;
use App\Models\NewEmployee;
use App\Models\EmployeeType;
use Illuminate\Http\Request;
use App\Models\MaritalStatus;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\EducationalQualification;
use Illuminate\Contracts\View\View;

class NewEmployeeController extends Controller
{
    public function EmployeeAll(){

        $user= Auth::user();
        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $educationqualifications = EducationalQualification::all();
        $employeetypes = EmployeeType::all();
        $employeeall = NewEmployee::all();
        // $employeeall = NewEmployee::where('created_by',$user->id)->orderBy('id','DESC')->get();
        return view('backend.newemployee.employee_all',compact('employeeall'));
    } // End Method
    public function NewEmployeeAll(){

        $user= Auth::user();
        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $educationqualifications = EducationalQualification::all();
        $employeetypes = EmployeeType::all();
        // $newemployees = NewEmployee::all();
        $newemployees = NewEmployee::where('created_by',$user->id)->orderBy('id','DESC')->get();
        return view('backend.newemployee.newemployee_all',compact('newemployees','user'));
    } // End Method



    public function NewEmployeeAdd(){
        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $employeetypes = EmployeeType::all();
        $educationqualifications = EducationalQualification::all();
        return view('backend.newemployee.newemployee_add',compact('domains','employeetypes','designations','maritalstatus','districts','divisions','blood_groups','educationqualifications','upazillas'));
    } // End Method


    public function NewEmployeeStore(Request $request){


        $validateData = $request->validate([
            'name' => 'required',
            'id' => 'required|unique:new_employees,id|max:8|min:8',
            'employee_type_id' => 'required',
            'name' => 'required',
            'father_name' => 'required',
            'mother_name' => 'required',
            'designation_id' => 'required',
            'joiningdate' => 'required',
            'date_of_birth' => 'required',
            'domain_id' => 'required',
            'marital_status_id' => 'required',
            'birth_place_district_id' => 'required',
            'educational_qualification_id' =>'required',
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
            'email' => 'required',
            // 'nid' => 'required',
            // 'smartcard' => 'required',
            'blood_groups_id' => 'required'
            // 'id' => ['required', 'numeric','max:8', 'min:8', 'unique:new_employees']
            // 'id' => 'required|max:8|min:8',
        ]);

        NewEmployee::insert([
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
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

         $notification = array(
            'message' => 'NewEmployee Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('newemployee.all')->with($notification);

    } // End Method

    public function NewEmployeeShow($id){

        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $employeetypes = EmployeeType::all();
        $educationqualifications = EducationalQualification::all();

        // $employee = DB::table('newemployees')
        // ->join('designations', 'designations.id', '=', 'newemployees.designation_id')
        // ->get();

        // $newemployees = NewEmployee::findOrFail($id);
        $newemployee = NewEmployee::findOrFail($id);
        // return View('backend.newemployee.newemployee_show',['designations'=>$designation]);
        return view('backend.newemployee.newemployee_show',compact('newemployee','domains','employeetypes','designations','maritalstatus','districts','divisions','blood_groups','educationqualifications','upazillas'));
        // return view('backend.newemployee.newemployee_show',compact('newemployee'));

    } // End Method


    public function NewEmployeeEdit($id){

        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $employeetypes = EmployeeType::all();
        $educationqualifications = EducationalQualification::all();

        $newemployee = NewEmployee::findOrFail($id);
        return view('backend.newemployee.newemployee_edit',compact('newemployee','employeetypes','domains','designations','maritalstatus','districts','divisions','blood_groups','educationqualifications','upazillas'));

    } // End Method

    public function NewEmployeeUpdate(Request $request){

        $id = $request->id;

        NewEmployee::findOrFail($id)->update([
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
            'message' => 'NewEmployee Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('newemployee.all')->with($notification);

    } // End Method


    // public function NewEmployeeDelete($id){

    //     NewEmployee::findOrFail($id)->delete();

    //    $notification = array(
    //         'message' => 'NewEmployee Deleted Successfully',
    //         'alert-type' => 'success'
    //     );

    //     return redirect()->back()->with($notification);

    // } // End Method
}
