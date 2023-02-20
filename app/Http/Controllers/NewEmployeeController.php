<?php

namespace App\Http\Controllers;

use App\Models\Zone;
use App\Models\Domain;
use App\Models\NewEmployee;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Http\Controllers\Controller;
use App\Models\BloodGroup;
use App\Models\Designation;
use App\Models\District;
use App\Models\Division;
use App\Models\EducationalQualification;
use App\Models\MaritalStatus;
use App\Models\Upazilla;
use Illuminate\Support\Facades\Auth;

class NewEmployeeController extends Controller
{
    public function NewEmployeeAll(){

        $newemployees = NewEmployee::all();
        return view('backend.newemployee.newemployee_all',compact('newemployees'));
    } // End Method 


    public function NewEmployeeAdd(){
        $domains = Domain::all();
        $designations = Designation::all();
        $maritalstatus = MaritalStatus::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $blood_groups = BloodGroup::all();
        $educationqualifications = EducationalQualification::all();
        return view('backend.newemployee.newemployee_add',compact('domains','designations','maritalstatus','districts','divisions','blood_groups','educationqualifications','upazillas'));
    } // End Method 


       public function NewEmployeeStore(Request $request){

        NewEmployee::insert([
            'id' => $request->id,
            'name' => $request->name,
            'father_name' => $request->father_name,
            'mother_name' => $request->mother_name,
            'designation_id' => $request->designation_id,
            'joiningdate' => $request->joiningdate,
            'date_of_birth' => $request->date_of_birth,
            'domain_id' => $request->domain_id,
            'marital_status_id' => $request->marital_status_id,
            'birth_place_district_id' => $request->birth_place_district_id,
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
            'bloodgroups_id' => $request->smartcard,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(), 

        ]);

         $notification = array(
            'message' => 'NewEmployee Inserted Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->route('newemployee.all')->with($notification);

    } // End Method 

    public function NewEmployeeEdit($id){

        $newemployee = NewEmployee::findOrFail($id);
        return view('backend.newemployee.newemployee_edit',compact('newemployee'));

    } // End Method 

    public function NewEmployeeUpdate(Request $request){

        $id = $request->id;

        NewEmployee::findOrFail($id)->update([
            'name' => $request->name,
            'father_name' => $request->father_name,
            'mother_name' => $request->mother_name,
            'designation_id' => $request->designation_id,
            'joiningdate' => $request->joiningdate,
            'date_of_birth' => $request->date_of_birth,
            'domain_id' => $request->domain_id,
            'marital_status_id' => $request->marital_status_id,
            'birth_place_district_id' => $request->birth_place_district_id,
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
            'bloodgroups_id' => $request->smartcard,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(), 

        ]);

         $notification = array(
            'message' => 'NewEmployee Updated Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->route('domain.all')->with($notification);

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
