<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Pim\FamilyChild;
use App\Models\Setup\Profession;
use App\Models\Setup\RelationType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Gender;
use Illuminate\Support\Facades\Auth;

class FamilyChildController extends Controller
{
    public function AllFamilyChild()
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $profession = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $gender = Gender::all();
        $familychild = FamilyChild::all();
        // $fbss = FamilyChild::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.familychild.familychild_all', compact('familychild'));
    } // End Method

    public function AddFamilyChild()
    {
        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $gender = Gender::all();
        $familychild = FamilyChild::all();
        return view('pim.familychild.familychild_add', compact('familychild','basicinfos',  'gender', 'relation_types', 'professions', 'districts', 'divisions', 'upazillas'));
    } // End Method

    public function StoreFamilyChild(Request $request)
    {

        $validateData = $request->validate([
            'child_name' => 'required',
            // 'id' => 'required|unique:basic_infos,id|max:8|min:8',
            // 'employee_type_id' => 'required',
            'employee_id' => 'required',

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

        FamilyChild::insert([

            'employee_id' => $request->employee_id,
            'child_name' => $request->child_name,
            // 'relation_types' => $request->relation_types,
            'date_of_birth' => $request->date_of_birth,
            'gender_id' => $request->gender_id,
            'child_village' => $request->child_village,
            'child_post' => $request->child_post,
            'child_postal_code' => $request->child_postal_code,

            'child_division_id' => $request->child_division_id,
            'child_district_id' => $request->child_district_id,
            'child_upazilla_id' => $request->child_upazilla_id,
            'profession_id' => $request->profession_id,

            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'FamilyChild In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.familychild')->with($notification);

    } // End Method

    public function FamilyChildShow($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $professionype = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $gender = Gender::all();
        $familychild = FamilyChild::all();

        // $employee = DB::table('familybrothersisters')
        // ->join('designations', 'designations.id', '=', 'familybrothersisters.designation_id')
        // ->get();

        // $fbss = FamilyChild::findOrFail($id);
        $familychild = FamilyChild::findOrFail($id);
        // return View('pim.familychild.familybrothersister_show',['designations'=>$designation]);
        return view('pim.familychild.familychild_show', compact('familychild','gender',  'basicinfos', 'districts', 'divisions', 'basicinfos', 'relation_types', 'upazillas'));
        // return view('pim.familychild.familybrothersister_show',compact('familychild'));

    } // End Method

    public function EditFamilyChild($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $gender = Gender::all();
        $basicinfos = BasicInfo::all();
        // $familychild = FamilyChild::all();

        $familychild = FamilyChild::findOrFail($id);

        return view('pim.familychild.familychild_edit', compact('familychild','gender',  'professions', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'relation_types', 'upazillas'));

    } // End Method

    public function UpdateFamilyChild(Request $request)
    {

        $id = $request->id;

        FamilyChild::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'child_name' => $request->child_name,
            // 'relation_types' => $request->relation_types,
            'date_of_birth' => $request->date_of_birth,
            'gender_id' => $request->gender_id,
            'child_village' => $request->child_village,
            'child_post' => $request->child_post,
            'child_postal_code' => $request->child_postal_code,

            'child_division_id' => $request->child_division_id,
            'child_district_id' => $request->child_district_id,
            'child_upazilla_id' => $request->child_upazilla_id,
            'profession_id' => $request->profession_id,

            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'FamilyChild Info Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.familychild')->with($notification);

    } // End Method

    public function DeleteFamilyChild($id){

        FamilyChild::findOrFail($id)->delete();

    $notification = array(
            'message' => 'FamilyChild Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowFamilyChild($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $gender = Gender::all();
        // $familychild = FamilyChild::all();

        // $familychild = FamilyChild::findOrFail($id);

        // $employee = DB::table('familybrothersisters')
        // ->join('designations', 'designations.id', '=', 'familybrothersisters.designation_id')
        // ->get();

        // $fbss = familychild::findOrFail($id);
        $familychild = FamilyChild::findOrFail($id);
        // return View('backend.familychild.familybrothersister_show',['designations'=>$designation]);
        return view('pim.familychild.familychild_show', compact('familychild', 'basicinfos', 'gender',  'relation_types', 'professions', 'districts', 'divisions', 'upazillas'));
        // return view('backend.familychild.familybrothersister_show',compact('familychild'));

    } //
}
